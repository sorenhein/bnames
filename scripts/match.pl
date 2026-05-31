#!perl

use strict;
use warnings;
use open ':std', ':encoding(UTF-8)';

use lib '.';
use lib './Read';

use Tournament;
use Read_tournaments;
use Read_manual;

my $NAMES1_MANUAL = "../data/names1_manual.txt";
my $TNAMES_DIR = "../data/tournaments";

if ($#ARGV != 0)
{
  print "Usage: perl match.pl tournament_file.txt";
  exit;
}

my $tournament_fname = shift;
my %tournaments;
Read_tournaments::read_tournament_file($tournament_fname, \%tournaments);

my %names_manual;
Read_manual::read_names_manual($NAMES1_MANUAL, \%names_manual);

for my $tname (sort keys %tournaments)
{
  for my $year (sort {$a <=> $b} keys %{$tournaments{$tname}})
  {
    my $list = $tournaments{$tname}{$year};
    
    if ($#$list == 0)
    {
      $list->[0]->write_names_manual(\%names_manual, $TNAMES_DIR, '');
    }
    else
    {
      my $disamb = 65; # A
      for my $elem (@$list)
      {
        $elem->write_names_manual(\%names_manual, $TNAMES_DIR, 
          chr($disamb));
        $disamb++;
      }
    }
  }
}
