#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Austria;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_AUSTRIA =
(
  'Mautern Bridge Festival' =>
  {
    ORGANIZATION => 'ÖBV',
    COUNTRY => 'Austria',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2013' =>
      {
        YEAR => 2013,
        CITY => 'Mautern',
        DATE_START => '2013-08-04', # Sun
        DATE_END => '2013-08-09' # Fri
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Mautern',
        DATE_START => '2015-08-05', # Wed
        DATE_END => '2015-08-06' # Thu
      },
      '2016' =>
      {
        YEAR => 2016,
        CITY => 'Mautern',
        DATE_START => '2016-08-10', # Wed
        DATE_END => '2016-08-11' # Thu
      },
      '2018' =>
      {
        # https://www.bridgeaustria.at/turnier/wachauer-bridgewoche-mautern/
        ORDINAL => 50,
        YEAR => 2018,
        CITY => 'Mautern',
        DATE_START => '2018-05-05', # Sat
        DATE_END => '2018-05-10' # Thu
      },
      '2019' =>
      {
        # https://www.bridgeaustria.at/turnier/wachauer-bridgewoche-mautern-2019/
        ORDINAL => 51,
        YEAR => 2019,
        CITY => 'Mautern',
        DATE_START => '2019-08-04', # Sun
        DATE_END => '2019-08-10' # Sat
      },
      '2022' =>
      {
        # https://www.bridgeaustria.at/turnier/wachauer-bridgewoche-mautern-4/
        ORDINAL => 52,
        YEAR => 2022,
        DATE_START => '2022-08-07', # Sun
        DATE_END => '2022-08-12' # Fri
      },
      '2023' =>
      {
        # https://www.bridgeaustria.at/turnier/int-bridgefestival-tulln/
        # https://www.bridgewoche.at/?page_id=2
        ORDINAL => 53,
        YEAR => 2023,
        CITY => 'Tulln',
        DATE_START => '2023-08-06', # Sun
        DATE_END => '2023-08-12' # Sat
      },
      '2024' =>
      {
        # https://www.bridgewoche.at/?page_id=294
        ORDINAL => 54,
        YEAR => 2024,
        CITY => 'Tulln',
        DATE_START => '2024-08-04', # Sun
        DATE_END => '2024-08-10' # Sat
      },
    }
  },

);

my %TOURNAMENTS_AUSTRIA =
(
  'Austrian Open Teams' => 
  {
    ORGANIZATION => 'ÖBV',
    COUNTRY => 'Austria',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-01', # Fri
            DATE_END => '2015-05-02' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            DATE_START => '2015-05-02', # Sat
            DATE_END => '2015-05-02' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            DATE_START => '2015-05-02', # Sat
            DATE_END => '2015-05-03' # Sun
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            DATE_START => '2015-05-03', # Sun
            DATE_END => '2015-05-03' # Sun
          } 
        }
      },
    }
  },

  'Mautern Open Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'Mautern Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-08-05', # Wed
            DATE_END => '2015-08-06' # Thu
          },
        }
      },
      '2016' =>
      {
        MEET => 'Mautern Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-08-10', # Wed
            DATE_END => '2016-08-11' # Thu
          },
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_AUSTRIA, \%TOURNAMENTS_AUSTRIA, 'Austria');
}

1;
