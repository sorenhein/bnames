#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Jordan;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Some names here:
# https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=jbf&pid=table_competitions_201

my %MEETS_JORDAN =
(
  'Jordan Bridge Festival' =>
  {
    ORGANIZATION => 'JBA',
    COUNTRY => 'Jordan',
    ORIGIN => 'National',
    ZONE => 'Africa',

    EDITIONS => 
    {
      '2011' =>
      {
        ORDINAL => 30,
        YEAR => 2011,
        DATE_START => '2011-12-01', # Thu
        DATE_END => '2011-12-04' # Sun
      },
      '2013' =>
      {
        ORDINAL => 31,
        YEAR => 2013,
        DATE_START => '2013-11-06', # Wed
        DATE_END => '2013-11-10' # Sun
      },
      '2014' =>
      {
        ORDINAL => 33,
        CITY => 'Amman',
        YEAR => 2014,
        DATE_START => '2014-11-04', # Tue
        DATE_END => '2014-11-09' # Sun
      },
      '2015' =>
      {
        ORDINAL => 34,
        CITY => 'Amman',
        YEAR => 2015,
        DATE_START => '2015-11-04', # Wed
        DATE_END => '2015-11-11' # Wed
      },
      '2016' =>
      {
        ORDINAL => 35,
        YEAR => 2016,
        CITY => 'Amman',
        DATE_START => '2016-10-19', # Wed
        DATE_END => '2016-10-23' # Sun
      },
      '2018' =>
      {
        ORDINAL => 37,
        YEAR => 2018,
        CITY => 'Amman',
        DATE_START => '2018-10-17', # Wed
        DATE_END => '2018-10-21' # Sun
      },
      '2019' =>
      {
        # https://bridgescanner.com/event/annual-jordan-international-bridge-festival-2019
        ORDINAL => 38,
        YEAR => 2019,
        CITY => 'Amman',
        DATE_START => '2019-10-16', # Wed
        DATE_END => '2019-10-16' # Wed
      },
      '2022' =>
      {
        # https://bridgescanner.com/event/annual-jordan-international-bridge-festival-2022
        YEAR => 2022,
        DATE_START => '2022-09-28', # Wed
        DATE_END => '2022-10-03' # Mon
      },
      '2023' =>
      {
        # https://bridgescanner.com/event/annual-jordan-international-bridge-festival-2023
        YEAR => 2023,
        DATE_START => '2023-09-27', # Wed
        DATE_END => '2023-10-02' # Mon
      },
      '2024' =>
      {
        # https://bridgescanner.com/event/annual-jordan-international-bridge-festival-2024
        YEAR => 2024,
        DATE_START => '2024-09-25', # Wed
        DATE_END => '2024-09-30' # Mon
      },
    }
  },

  'Jordan Spring Festival' =>
  {
    ORGANIZATION => 'JBA',
    COUNTRY => 'Jordan',
    ORIGIN => 'National',
    ZONE => 'Africa',

    EDITIONS => 
    {
      '2015A' =>
      {
        YEAR => 2015,
        DATE_START => '2015-05-03', # Sun
        DATE_END => '2015-05-06' # Wed
      },
      '2015B' =>
      {
        YEAR => 2015,
        DATE_START => '2015-05-19', # Tue
        DATE_END => '2015-05-26' # Tue
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-04-04', # Mon
        DATE_END => '2016-04-05' # Tue
      },
    }
  },
);

my %TOURNAMENTS_JORDAN =
(
  'Jordan Mixed Pairs' => 
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-11-09', # Sat
            DATE_END => '2013-11-10' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-11-08', # Sat
            DATE_END => '2014-11-09' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-11-07', # Sat
            DATE_END => '2015-11-11' # Wed
          } 
        }
      },
    }
  },

  'Jordan Open Pairs' => 
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-12-01', # Thu
            DATE_END => '2011-12-02' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-11-06', # Wed
            DATE_END => '2013-11-08' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-11-05', # Wed
            DATE_END => '2014-11-07' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-11-04', # Wed
            DATE_END => '2015-11-07' # Sat
          } 
        }
      },
    }
  },

  'Jordan Open Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Jordan Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-12-03', # Sat
            DATE_END => '2011-12-04' # Sun
          } 
        }
      },
    }
  },

  'Jordan Spring Mixed Pairs' => 
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'Jordan Spring Festival',
        MEET_TAG => '2015A',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-05-05', # Tue
            DATE_END => '2015-05-06' # Wed
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Jordan Spring Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-04-05', # Tue
            DATE_END => '2016-04-05' # Tue
          } 
        }
      },
    }
  },

  'Jordan Spring Open Pairs' => 
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015A' =>
      {
        MEET => 'Jordan Spring Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-05-03', # Sun
            DATE_END => '2015-05-04' # Mon
          },
        }
      },
      '2015B' =>
      {
        # Something to do with BFAME starting 2015-05-27?
        MEET => 'Jordan Spring Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-05-19', # Tue
            DATE_END => '2015-05-21' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            DATE_START => '2015-05-26', # Tue
            DATE_END => '2015-05-26' # Tue
          },
        }
      },
      '2016' =>
      {
        MEET => 'Jordan Spring Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-04-04', # Mon
            DATE_END => '2016-04-04' # Mon
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_JORDAN, \%TOURNAMENTS_JORDAN, 'Jordan');
}

1;
