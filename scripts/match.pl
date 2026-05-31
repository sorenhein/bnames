#!perl

use strict;
use warnings;
use open ':std', ':encoding(UTF-8)';

use lib '.';
use lib './Read';

use Tournament;
use Read_tournaments;

my $known_tournaments = 'knownt.txt';

if ($#ARGV != 0)
{
  print "Usage: perl match.pl tournament_file.txt";
  exit;
}

my $tournament_fname = shift;
my %tournaments;
Read_tournaments::read_tournament_file($tournament_fname, \%tournaments);


