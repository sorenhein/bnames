#!perl

package Read_manual;

use strict;
use warnings;
use Exporter;
use v5.10;

use open ':std', ':encoding(UTF-8)';

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(read_names_manual);


sub read_names_manual
{
  my ($fname, $hash) = @_;

  open my $fh, '<:encoding(UTF-8)', $fname or die "Cannot read $fname: $!";

  my $lno = 0;
  while (my $line = <$fh>)
  {
    chomp $line;
    $lno++;

    if ($line !~ /^(\d+) (.+)/)
    {
      die "$lno: $line";
    }

    my ($bbono, $rest) = ($1, $2);

    $hash->{$bbono}{LINE} = $rest;
    @{$hash->{$bbono}{STRINGS}} = split /,/, $rest;
  }

  close $fh;
}

1;
