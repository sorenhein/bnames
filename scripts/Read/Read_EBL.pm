#!perl

package Read_EBL;

use strict;
use warnings;
use Exporter;
use v5.10;

use open ':std', ':encoding(UTF-8)';

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(read_EBL);

my @MANDATORY = qw(EBL NAME COUNTRY GENDER);


sub player_has_basics
{
  my ($hash, $lno) = @_;

  for my $field (@MANDATORY)
  {
    if (! exists $hash->{$field})
    {
      print "$lno: Missing field $field";
      return 0;
    }
  }
  return 1;
}


sub read_EBL
{
  my ($fname, $ebl_hash, $name_hash) = @_;

  open my $fh, '<:encoding(UTF-8)', $fname or die "Cannot read $fname: $!";

  my $lno = 0;
  my $bound = 0;
  my $player;
  my %chunk = ();

  while (my $line = <$fh>)
  {
    chomp $line;
    $lno++;
    
    if ($bound == 0) # Looking for NAME or perhaps EBL
    {
      if ($line =~ /^NAME (.+)$/)
      {
        $chunk{NAME} = $1;
        $bound = 1;
      }
      elsif ($line =~ /EBL (\d+)$/)
      {
        my $ebl = $1;

        $line = <$fh>;
        chomp $line;
        $lno++;

        if ($line eq 'DELETED')
        {
          # Fall through.
          next;
        }
        elsif ($line !~ /^EBL_PREFERRED (\d+)$/)
        {
          die "$lno, expected EBL_PREFERRED: $line";
        }
        my $ebl_preferred = $1;

        $line = <$fh>;
        chomp $line;
        $lno++;

        if ($line ne '')
        {
          die "$lno, EBL_PREFERRED, expected empty line: $line";
        }

        # Must already exist.  We don't set the name hash.
        %{$ebl_hash->{$ebl}} = %{$ebl_hash->{$ebl_preferred}};
      }
    }
    elsif ($bound == 1) # Looking for more player information
    {
      if ($line eq '')
      {
        if (! player_has_basics(\%chunk, $lno))
        {
          die "$lno: Bad player";
        }

        $player = Player->new();
        $player->set(\%chunk);
        my $formatted_name = $player->formatted_name();
        push @{$name_hash->{$formatted_name}}, $player;
        $ebl_hash->{$chunk{EBL}} = $player;

        %chunk = ();
        $bound = 0;
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
  }

  close $fh;
}

1;
