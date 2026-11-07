#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Balkan;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_BALKAN =
(
  'Balkan Championship' =>
  {
    ORIGIN => 'International',
    ZONE => 'Balkan',

    EDITIONS => 
    {
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-10-17', # Tue
        DATE_END => '2006-10-17' # Tue
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-10-22', # Mon
        DATE_END => '2007-10-22' # Mon
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-11-23', # Sun
        DATE_END => '2008-11-23' # Sun
      },
      '2009' =>
      {
        # balkanbridge.org on Wayback Machine
        ORDINAL => 4,
        CITY => 'Novi Sad',
        COUNTRY => 'Serbia',
        YEAR => 2009,
        DATE_START => '2009-11-24', # Tue
        DATE_END => '2009-11-26' # Thu
      },
      '2010' =>
      {
        # https://5bbc.neo-bridge.org/topframe.html
        ORDINAL => 5,
        CITY => 'Stara Zagora',
        COUNTRY => 'Bulgaria',
        YEAR => 2010,
        DATE_START => '2010-09-29', # Wed
        DATE_END => '2010-10-03' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-09-19', # Mon
        DATE_END => '2011-09-21' # Wed
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-10-02', # Wed
        DATE_END => '2013-10-03' # Thu
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-10-14', # Wed
        DATE_END => '2015-10-15' # Thu
      },
      '2016' =>
      {
        ORDINAL => 9,
        CITY => 'Stara Zagora',
        COUNTRY => 'Bulgaria',
        YEAR => 2016,
        DATE_START => '2016-10-04', # Tue
        DATE_END => '2016-10-08' # Sat
      },
      '2018' =>
      {
        ORDINAL => 11,
        CITY => 'Stara Zagora',
        COUNTRY => 'Bulgaria',
        YEAR => 2018,
        DATE_START => '2018-10-03', # Wed
        DATE_END => '2018-10-04' # Thu
      },
      '2019' =>
      {
        # https://8bbc.neo-bridge.org/
        ORDINAL => 12,
        CITY => 'Stara Zagora',
        COUNTRY => 'Bulgaria',
        YEAR => 2019,
        DATE_START => '2019-10-04', # Fri
        DATE_END => '2019-10-06' # Sun
      },
      '2021' =>
      {
        # https://www.bridge.bg/en/tournaments_results/5022-XIII-Balkaniada-po-bridj-finali
        ORDINAL => 13,
        YEAR => 2021,
        DATE_START => '2021-10-06', # Wed
        DATE_END => '2021-10-10' # Sun
      },
      '2022' =>
      {
        # https://www.bridge.bg/en/tournaments_results/5513-14-Balkan-Championship-Finals
        ORDINAL => 14,
        YEAR => 2022,
        DATE_START => '2022-10-05', # Wed
        DATE_END => '2022-10-09' # Sun
      },
      '2023' =>
      {
        ORDINAL => 15,
        CITY => 'Stara Zagora',
        COUNTRY => 'Bulgaria',
        YEAR => 2023,
        DATE_START => '2023-10-04', # Wed
        DATE_END => '2023-10-05' # Thu
      },
    }
  },

  'Balkan Friendship Festival' =>
  {
    ORIGIN => 'International',
    ZONE => 'Balkan',

    EDITIONS => 
    {
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-05-04', # Sun
        DATE_END => '2008-05-04' # Sun
      },

      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-05-01', # Fri
        DATE_END => '2009-05-03' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-04-10', # Sat
        DATE_END => '2010-04-11' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-04-28', # Thu
        DATE_END => '2011-04-30' # Sat
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-04-28', # Sun
        DATE_END => '2013-04-29' # Mon
      },
    }
  },
);

my %TOURNAMENTS_BALKAN =
(
  'Balkan Friendship Open Pairs' => 
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Balkan Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          },
        }
      },
    }
  },

  'Balkan Friendship Open Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Balkan Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          },
        }
      },
      '2009' =>
      {
        MEET => 'Balkan Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-05-01', # Fri
            DATE_END => '2009-05-03' # Sun
          },
        }
      },
      '2010' =>
      {
        MEET => 'Balkan Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-04-10', # Sat
            DATE_END => '2010-04-11' # Sun
          },
        }
      },
      '2011' =>
      {
        MEET => 'Balkan Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-04-28', # Thu
            DATE_END => '2011-04-30' # Sat
          },
        }
      },
      '2013' =>
      {
        MEET => 'Balkan Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            DATE_START => '2013-04-28', # Sun
            DATE_END => '2013-04-29' # Mon
          },
        }
      },
    }
  },

  'Balkan Intercity Cup' => 
  {
    ORIGIN => 'Intercity',
    ZONE => 'Balkan',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-10-07', # Wed
            DATE_END => '2009-10-08' # Thu
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            DATE_START => '2009-10-08', # Thu
            DATE_END => '2009-10-08' # Thu
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            DATE_START => '2009-10-08', # Thu
            DATE_END => '2009-10-08' # Thu
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
            major => 'ROUND',
            DATE_START => '2011-10-05', # Wed
            DATE_END => '2011-10-06' # Thu
          } 
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-10-04', # Thu
            DATE_END => '2012-10-05' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            DATE_START => '2012-10-05', # Fri
            DATE_END => '2012-10-05' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-10-05', # Fri
            DATE_END => '2012-10-05' # Fri
          } 
        }
      },
      '2014' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-10-02', # Thu
            DATE_END => '2014-10-02' # Thu
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-10-02', # Thu
            DATE_END => '2014-10-02' # Thu
          } 
        }
      },
    }
  },

  'Balkan Open Teams' => 
  {
    ORIGIN => 'International',
    ZONE => 'Balkan',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-10-17', # Tue
            DATE_END => '2006-10-17' # Tue
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'SEGMENT',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-11-24', # Tue
            DATE_END => '2009-11-25' # Wed
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-11-26', # Thu
            DATE_END => '2009-11-26' # Thu
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2009-11-26', # Thu
            DATE_END => '2009-11-26' # Thu
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-11-26', # Thu
            DATE_END => '2009-11-26' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-29', # Wed
            DATE_END => '2010-09-29' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            DATE_START => '2010-09-30', # Thu
            DATE_END => '2010-09-30' # Thu
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            DATE_START => '2010-09-30', # Thu
            DATE_END => '2010-09-30' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            DATE_START => '2011-09-19', # Mon
            DATE_END => '2011-09-21' # Wed
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-10-02', # Wed
            DATE_END => '2013-10-03' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            DATE_START => '2013-10-03', # Thu
            DATE_END => '2013-10-03' # Thu
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-10-03', # Thu
            DATE_END => '2013-10-03' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Balkan Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-10-14', # Wed
            DATE_END => '2015-10-15' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            DATE_START => '2015-10-15', # Thu
            DATE_END => '2015-10-15' # Thu
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            DATE_START => '2015-10-15', # Thu
            DATE_END => '2015-10-15' # Thu
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_BALKAN, \%TOURNAMENTS_BALKAN, 'Balkan');
}

1;
