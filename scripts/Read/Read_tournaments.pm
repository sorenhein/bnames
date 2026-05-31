#!perl

package Read_tournaments;

use strict;
use warnings;
use Exporter;
use v5.10;

use open ':std', ':encoding(UTF-8)';

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(read_tournament_file);


sub tournament_has_basics
{
  my ($hash, $lno) = @_;

  if (! exists $hash->{YEAR})
  {
    if (exists $hash->{DATE_START} && exists $hash->{DATE_END})
    {
      $hash->{DATE_START} =~ /^(\d\d\d\d)-/;
      my $y1 = $1;
      $hash->{DATE_END} =~ /^(\d\d\d\d)-/;
      my $y2 = $1;

      if ($y2 == $y1+1)
      {
        # Year-end tournament -- go with starting date.
        $hash->{YEAR} = $y1;
      }
      elsif ($y2 == $y1)
      {
        # Inconsistency, but no worry.
        $hash->{YEAR} = $y1;
      }
      else
      {
        print "$lno: Missing YEAR\n";
        return 0;
      }
    }
    else
    {
      print "$lno: Missing YEAR\n";
      return 0;
    }
  }
  elsif (! exists $hash->{TOURNAMENT_NAME})
  {
    print "$lno: Missing TOURNAMENT_NAME\n";
    return 0;
  }
  else
  {
    return 1;
  }
}


sub read_tournament_file
{
  my ($fname, $hash) = @_;

  open my $fh, '<:encoding(UTF-8)', $fname or die "Cannot read $fname: $!";

  my $lno = 0;
  my $bound = 0;
  my $tournament;
  my %chunk = ();

  while (my $line = <$fh>)
  {
    chomp $line;
    $lno++;
    
    if ($bound == 0) # Looking for tournament or another BBONO
    {
      if ($line =~ /^MEET / || $line =~ /^TOURNAMENT NAME /)
      {
        $line =~ /^([A-Z_]+) (.+)$/;
        $chunk{$1} = $2;
        $bound = 1;
      }
      elsif ($line =~ /^BBONO (\d+)$/)
      {
        $chunk{BBONO} = $1;
        $bound = 3;
      }
    }
    elsif ($bound == 1) # Looking for tournament information
    {
      if ($line eq '')
      {
        if (! tournament_has_basics(\%chunk, $lno))
        {
          die "Bad tournament";
        }

        $tournament = Tournament->new();
        push @{$hash->{$chunk{YEAR}}{$chunk{TOURNAMENT_NAME}}},
          $tournament;

        $tournament->set(\%chunk);
        %chunk = ();
        $bound = 2;
      }
      elsif ($line =~ /^([A-Z_]+) (.+)$/)
      {
        $chunk{$1} = $2;
      }
      else
      {
        die "$lno: $line";
      }
    }
    elsif ($bound == 2) # Looking for BBONO
    {
      if ($line =~ /^BBONO (\d+)$/)
      {
        $chunk{BBONO} = $1;
        $bound = 3;
      }
    }
    elsif ($bound == 3) # Looking for BBONO information
    {
      if ($line =~ /^([A-Z0-9_]+) (.+)$/)
      {
        $chunk{$1} = $2;
      }
      elsif ($line eq '')
      {
        $tournament->add_bbo(\%chunk);
        %chunk = ();
        $bound = 0;
      }
      else
      {
        die "$lno: '$line'";
      }
    }
  }

  close $fh;
}

1;
