#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Lebanon;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# http://bridgeliban.com/le%20bridgeur.htm

my %MEETS_LEBANON =
(
);

my %TOURNAMENTS_LEBANON =
(
  'Lebanese Invitational Teams' => 
  {
    ORGANIZATION => 'LeBF',
    COUNTRY => 'Lebanon',
    ORIGIN => 'National',
    ZONE => 'Middle East',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-06-07', # Sat
            DATE_END => '2014-06-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-06-08', # Sun
            DATE_END => '2014-06-08' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-06-08', # Sun
            DATE_END => '2014-06-08' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_LEBANON, \%TOURNAMENTS_LEBANON, 'Lebanon');
}

1;
