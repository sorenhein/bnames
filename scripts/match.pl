#!perl

use strict;
use warnings;
use open ':std', ':encoding(UTF-8)';

use lib '.';
use lib './Read';

use Tournament;
use Player;

use Read_tournaments;
use Read_manual;
use Read_EBL;

my $NAMES1_MANUAL = "../data/names1_manual.txt";
my $TNAMES_DIR = "../data/tournaments";
my $EBL_FILE = "../data/EBL.txt";

if ($#ARGV != 0)
{
  print "Usage: perl match.pl tournament_file.txt";
  exit;
}

# The curated file of BBOVG tournaments.
my $tournament_fname = shift;
my %tournaments;
Read_tournaments::read_tournament_file($tournament_fname, \%tournaments);


# A file of BBO numbers and strings.
my %names_manual;
Read_manual::read_names_manual($NAMES1_MANUAL, \%names_manual);


# Add a path to the directory where the names are or will be
# for that tournament.
decorate_tournaments(\%tournaments);


# Get the EBL players.
my (%ebl_no_hash, %ebl_name_hash);
Read_EBL::read_EBL($EBL_FILE, \%ebl_no_hash, \%ebl_name_hash);

exit;


# Add a reference to a tournament for each bbono.
add_tournament_refs_to_bbono(\%tournaments, \%names_manual);

# for my $tname (sort keys %tournaments)
# {
  # for my $year (sort {$a <=> $b} keys %{$tournaments{$tname}})
  # {
    # for my $elem (@{$tournaments{$tname}{$year}})
    # {
      # $elem->write_names_manual(\%names_manual);
    # }
  # }
# }


sub decorate_tournaments
{
  my ($tournaments) = @_;

  for my $tname (keys %$tournaments)
  {
    for my $year (keys %{$tournaments->{$tname}})
    {
      my $list = $tournaments->{$tname}{$year};
    
      if ($#$list == 0)
      {
        $list->[0]->decorate($TNAMES_DIR, '');
      }
      else
      {
        my $disamb = 65; # A
        for my $elem (@$list)
        {
          $elem->decorate($TNAMES_DIR, chr($disamb));
          $disamb++;
        }
      }
    }
  }
}


sub add_tournament_refs_to_bbono
{
  my ($tournaments, $bbono_hash) = @_;

  for my $tname (keys %tournaments)
  {
    for my $year (keys %{$tournaments{$tname}})
    {
      for my $elem (@{$tournaments{$tname}{$year}})
      {
        $elem->add_tournament_ref_to_bbono(\%names_manual, $elem);
      }
    }
  }
}

