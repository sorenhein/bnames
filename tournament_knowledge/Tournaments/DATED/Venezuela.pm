#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Venezuela;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_VENEZUELA =
(
);

my %TOURNAMENTS_VENEZUELA =
(
  'Venezuelan Mixed Teams' => 
  {
    ORGANIZATION => 'VBF',
    COUNTRY => 'Venezuela',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-03', # Sun
            DATE_END => '2011-04-03' # Sun
          } 
        }
      },
    }
  },

  'Venezuelan Swiss Pairs' => 
  {
    ORGANIZATION => 'VBF',
    COUNTRY => 'Venezuela',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Pairs',
    SCORING => 'MP', # Really?
    MOVEMENT => 'Swiss',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-05-26', # Wed
            DATE_END => '2010-05-26' # Wed
          } 
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-04-04', # Mon
            DATE_END => '2011-04-06' # Wed
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_VENEZUELA, \%TOURNAMENTS_VENEZUELA, 'Venezuela');
}

1;
