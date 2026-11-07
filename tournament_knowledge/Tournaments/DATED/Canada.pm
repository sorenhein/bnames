#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Canada;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Good starting page:
# http://cbf.ca/events/canadian-bridge-championships/canadian-senior-teams/

my %MEETS_CANADA =
(
  'Canadian Bridge Championships' =>
  {
    ORGANIZATION => 'CBF',
    COUNTRY => 'Canada',
    ORIGIN => 'National',
    ZONE => 'North America',

    EDITIONS =>
    {
      '2004' =>
      {
        # https://www.cbf.ca/BWeek/BWeek04.html
        YEAR => 2004,
        CITY => 'St. Catherines',
        DATE_START => '2004-06-19', # Sat
        DATE_END => '2004-06-26' # Sat
      },
      '2005' =>
      {
        # https://www.cbf.ca/BWeek/BWeek05.html
        YEAR => 2005,
        CITY => 'Montreal',
        DATE_START => '2005-05-28', # Sat
        DATE_END => '2005-06-04' # Sat
      },
      '2006' =>
      {
        # https://www.cbf.ca/BWeek/BWeek06.html
        YEAR => 2006,
        CITY => 'Missisaura',
        DATE_START => '2006-02-11', # Sat
        DATE_END => '2006-02-18' # Sat
      },
      '2007' =>
      {
        # https://www.cbf.ca/BWeek/07files/
        YEAR => 2007,
        CITY => 'Winnipeg',
        DATE_START => '2007-05-26', # Sat
        DATE_END => '2007-06-02' # Sat
      },
      '2008' =>
      {
        # https://www.cbf.ca/BWeek/08files/
        YEAR => 2008,
        CITY => 'Montreal',
        DATE_START => '2008-05-24', # Sat
        DATE_END => '2008-05-31' # Sat
      },
      '2009' =>
      {
        # https://www.cbf.ca/BWeek/09files/
        YEAR => 2009,
        CITY => 'Penticton',
        DATE_START => '2009-06-06', # Sat
        DATE_END => '2009-06-13' # Sat
      },
      '2010' =>
      {
        # https://www.cbf.ca/BWeek/10files/
        YEAR => 2010,
        CITY => 'Toronto',
        DATE_START => '2010-05-29', # Sat
        DATE_END => '2010-06-05' # Sat
      },
      '2011' =>
      {
        # https://www.cbf.ca/BWeek/11files/
        YEAR => 2011,
        CITY => 'Regina',
        DATE_START => '2011-05-21', # Sat
        DATE_END => '2011-05-28' # Sat
      },
      '2012' =>
      {
        # https://cbf.ca/BWeek/12files/
        YEAR => 2012,
        CITY => 'Montreal',
        DATE_START => '2012-04-28', # Sat
        DATE_END => '2012-05-05' # Sat
      },
      '2013' =>
      {
        # https://www.cbf.ca/BWeek/13files/BWeek13_results.shtml
        YEAR => 2013,
        CITY => 'Toronto',
        DATE_START => '2013-05-25', # Sat
        DATE_END => '2013-06-01' # Sat
      },
      '2014' =>
      {
        # https://cbf.ca/BWeek/14files/
        YEAR => 2014,
        CITY => 'Calgary',
        DATE_START => '2014-05-03', # Sat
        DATE_END => '2014-05-10' # Sat
      },
      '2015' =>
      {
        # https://cbf.ca/BWeek/15files/
        YEAR => 2015,
        CITY => 'Montreal',
        DATE_START => '2015-05-23', # Sat
        DATE_END => '2015-05-30' # Sat
      },
      '2016' =>
      {
        # https://cbf.ca/BWeek/16files/results.shtml
        YEAR => 2016,
        CITY => 'Toronto',
        DATE_START => '2016-05-21', # Sat
        DATE_END => '2016-05-29' # Sun
      },
      '2017' =>
      {
        # https://cbf.ca/BWeek/17files/standings.shtml
        YEAR => 2017,
        CITY => 'Winnipeg',
        DATE_START => '2017-05-21', # Sun
        DATE_END => '2017-05-29' # Mon
      },
      '2018' =>
      {
        # https://cbf.ca/BWeek/18files/standings.shtml
        YEAR => 2018,
        CITY => 'Montreal',
        DATE_START => '2018-05-26', # Sat
        DATE_END => '2018-06-03' # Sun
      },
      '2019' =>
      {
        # https://cbf.ca/BWeek/19files/standings.shtml
        YEAR => 2019,
        CITY => 'Burnaby',
        DATE_START => '2019-05-04', # Sat
        DATE_END => '2019-05-12' # Sun
      },
      '2023' =>
      {
        # https://cbf.ca/BWeek/23files/standings.shtml
        YEAR => 2023,
        CITY => 'Niagara Falls',
        DATE_START => '2023-05-09', # Tue
        DATE_END => '2023-05-19' # Fri
      },
      '2024' =>
      {
        # https://cbf.ca/BWeek/24files/standings.shtml
        YEAR => 2024,
        CITY => 'Penticton',
        DATE_START => '2024-06-10', # Mon
        DATE_END => '2024-06-16' # Sun
      }
    }
  }
);

my %TOURNAMENTS_CANADA =
(
  'Canadian Mixed Teams Championship' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2019' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2019,
            STAGE => 'Qualifying',
            DATE_START => '2019-05-09', # Thu
            DATE_END => '2019-05-10' # Fri
          },
          'C1' => 
          {
            YEAR => 2019,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-05-11', # Sat
            DATE_END => '2019-05-11' # Sat
          },
          'C2' => 
          {
            YEAR => 2019,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-05-12', # Sun
            DATE_END => '2019-05-12' # Sun
          } 
        }
      },

      '2023' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2023,
            STAGE => 'Qualifying',
            DATE_START => '2023-05-16', # Tue
            DATE_END => '2023-05-17' # Wed
          },
          'C1' => 
          {
            YEAR => 2023,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-05-18', # Thu
            DATE_END => '2023-05-18' # Thu
          },
          'C2' => 
          {
            YEAR => 2023,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-05-19', # Fri
            DATE_END => '2023-05-19' # Fri
          } 
        }
      },

      '2024' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2024,
            STAGE => 'Quarterfinal',
            DATE_START => '2024-06-14', # Fri
            DATE_END => '2024-06-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2024,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2024-06-15', # Sat
            DATE_END => '2024-06-15' # Sat
          },
          'C2' => 
          {
            YEAR => 2024,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2024-06-16', # Sun
            DATE_END => '2024-06-16' # Sun
          } 
        }
      }
    }
  },

  'Canadian National Teams Championship' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-24', # Thu
            DATE_END => '2004-06-25' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-06-25', # Fri
            DATE_END => '2004-06-26' # Sat
          } 
        }
      },

      '2005' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-06-02', # Thu
            DATE_END => '2005-06-02' # Thu
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-06-03', # Fri
            DATE_END => '2005-06-04' # Sat
          } 
        }
      },

      '2006' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-02-16', # Thu
            DATE_END => '2006-02-16' # Thu
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-02-17', # Fri
            DATE_END => '2006-02-18' # Sat
          } 
        }
      },

      '2007' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-06-01', # Fri
            DATE_END => '2007-06-02' # Sat
          } 
        }
      },

      '2008' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-05-29', # Thu
            DATE_END => '2008-05-29' # Thu
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-05-30', # Fri
            DATE_END => '2008-05-31' # Sat
          } 
        }
      },

      '2009' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            DATE_START => '2009-06-06', # Sat
            DATE_END => '2009-06-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-10', # Wed
            DATE_END => '2009-06-10' # Wed
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-11', # Thu
            DATE_END => '2009-06-11' # Thu
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-12', # Fri
            DATE_END => '2009-06-13' # Sat
          } 
        }
      },

      '2010' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            DATE_START => '2010-05-29', # Sat
            DATE_END => '2010-06-01' # Tue
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-02', # Wed
            DATE_END => '2010-06-02' # Wed
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-03', # Thu
            DATE_END => '2010-06-03' # Thu
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-04', # Fri
            DATE_END => '2010-06-05' # Sat
          } 
        }
      },

      '2011' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Qualifying',
            DATE_START => '2011-05-21', # Sat
            DATE_END => '2011-05-24' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-25', # Wed
            DATE_END => '2011-05-25' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-26', # Thu
            DATE_END => '2011-05-26' # Thu
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'HALF',
            DATE_START => '2011-05-27', # Fri
            DATE_END => '2011-05-28' # Sat
          } 
        }
      },

      '2012' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            DATE_START => '2012-04-28', # Sat
            DATE_END => '2012-05-01' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-02', # Wed
            DATE_END => '2012-05-02' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-03', # Thu
            DATE_END => '2012-05-03' # Thu
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-04', # Fri
            DATE_END => '2012-05-05' # Sat
          } 
        }
      },

      '2013' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            DATE_START => '2013-05-25', # Sat
            DATE_END => '2013-05-28' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-29', # Wed
            DATE_END => '2013-05-29' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-30', # Thu
            DATE_END => '2013-05-30' # Thu
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-31', # Fri
            DATE_END => '2013-06-01' # Sat
          } 
        }
      },

      '2014' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            DATE_START => '2014-05-03', # Sat
            DATE_END => '2014-05-06' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-05-07', # Wed
            DATE_END => '2014-05-07' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-05-08', # Thu
            DATE_END => '2014-05-08' # Thu
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-09', # Fri
            DATE_END => '2014-05-10' # Sat
          } 
        }
      },

      '2015' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            DATE_START => '2015-05-23', # Sat
            DATE_END => '2015-05-26' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-05-27', # Wed
            DATE_END => '2015-05-27' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-05-28', # Thu
            DATE_END => '2015-05-28' # Thu
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-29', # Fri
            DATE_END => '2015-05-30' # Sat
          } 
        }
      },

      '2016' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            DATE_START => '2016-05-21', # Sat
            DATE_END => '2016-05-24' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-25', # Wed
            DATE_END => '2016-05-26' # Thu
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-26', # Thu
            DATE_END => '2016-05-27' # Fri
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-28', # Sat
            DATE_END => '2016-05-29' # Sun
          } 
        }
      },

      '2017' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2017,
            STAGE => 'Qualifying',
            DATE_START => '2017-05-21', # Sun
            DATE_END => '2017-05-24' # Wed
          },
          'C1' => 
          {
            YEAR => 2017,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2017-05-25', # Thu
            DATE_END => '2017-05-26' # Fri
          },
          'C2' => 
          {
            YEAR => 2017,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-05-26', # Fri
            DATE_END => '2017-05-27' # Sat
          },
          'C3' => 
          {
            YEAR => 2017,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-05-28', # Sun
            DATE_END => '2017-05-29' # Mon
          } 
        }
      },

      '2018' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2018,
            STAGE => 'Qualifying',
            DATE_START => '2018-05-26', # Sat
            DATE_END => '2018-05-29' # Tue
          },
          'C1' => 
          {
            YEAR => 2018,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2018-05-30', # Wed
            DATE_END => '2018-05-31' # Thu
          },
          'C2' => 
          {
            YEAR => 2018,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-05-31', # Thu
            DATE_END => '2018-06-01' # Fri
          },
          'C3' => 
          {
            YEAR => 2018,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-06-02', # Sat
            DATE_END => '2018-06-03' # Sun
          } 
        }
      },

      '2019' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2019,
            STAGE => 'Qualifying',
            DATE_START => '2019-05-04', # Sat
            DATE_END => '2019-05-06' # Mon
          },
          'C1' => 
          {
            YEAR => 2019,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2019-05-07', # Tue
            DATE_END => '2019-05-07' # Tue
          },
          'C2' => 
          {
            YEAR => 2019,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-05-08', # Wed
            DATE_END => '2019-05-08' # Wed
          },
          'C3' => 
          {
            YEAR => 2019,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-05-09', # Thu
            DATE_END => '2019-05-10' # Fri
          } 
        }
      },

      '2023' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2023,
            STAGE => 'Qualifying',
            DATE_START => '2023-05-11', # Thu
            DATE_END => '2023-05-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2023,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2023-05-13', # Sat
            DATE_END => '2023-05-13' # Sat
          },
          'C2' => 
          {
            YEAR => 2023,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-05-14', # Sun
            DATE_END => '2023-05-14' # Sun
          },
          'C3' => 
          {
            YEAR => 2023,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-05-15', # Mon
            DATE_END => '2023-05-15' # Mon
          } 
        }
      },

      '2024' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2024,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2024-06-10', # Mon
            DATE_END => '2024-06-10' # Mon
          },
          'C1' => 
          {
            YEAR => 2024,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2024-06-11', # Tue
            DATE_END => '2024-06-11' # Tue
          },
          'C2' => 
          {
            YEAR => 2024,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2024-06-12', # Wed
            DATE_END => '2024-06-13' # Thu
          } 
        }
      }
    }
  },

  'Canadian Seniors Teams Championship' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            DATE_START => '2009-06-10', # Wed
            DATE_END => '2009-06-11' # Thu
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-12', # Fri
            DATE_END => '2009-06-12' # Fri
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-13', # Sat
            DATE_END => '2009-06-13' # Sat
          } 
        }
      },

      '2010' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            DATE_START => '2010-06-02', # Wed
            DATE_END => '2010-06-03' # Thu
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-04', # Fri
            DATE_END => '2010-06-04' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-05', # Sat
            DATE_END => '2010-06-05' # Sat
          } 
        }
      },

      '2011' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Qualifying',
            DATE_START => '2011-05-25', # Wed
            DATE_END => '2011-05-26' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-27', # Fri
            DATE_END => '2011-05-27' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-28', # Sat
            DATE_END => '2011-05-28' # Sat
          } 
        }
      },

      '2012' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            DATE_START => '2012-05-02', # Wed
            DATE_END => '2012-05-03' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-04', # Fri
            DATE_END => '2012-05-04' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-05', # Sat
            DATE_END => '2012-05-05' # Sat
          } 
        }
      },

      '2013' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            DATE_START => '2013-05-29', # Wed
            DATE_END => '2013-05-30' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-31', # Fri
            DATE_END => '2013-05-31' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-01' # Sat
          } 
        }
      },

      '2014' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            DATE_START => '2014-05-07', # Wed
            DATE_END => '2014-05-08' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-05-09', # Fri
            DATE_END => '2014-05-09' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-10', # Sat
            DATE_END => '2014-05-10' # Sat
          } 
        }
      },

      '2015' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            DATE_START => '2015-05-27', # Wed
            DATE_END => '2015-05-28' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-05-29', # Fri
            DATE_END => '2015-05-29' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-30', # Sat
            DATE_END => '2015-05-30' # Sat
          } 
        }
      },

      '2016' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            DATE_START => '2016-05-25', # Wed
            DATE_END => '2016-05-27' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-28', # Sat
            DATE_END => '2016-05-28' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-29', # Sun
            DATE_END => '2016-05-29' # Sun
          } 
        }
      },

      '2017' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2017,
            STAGE => 'Qualifying',
            DATE_START => '2017-05-25', # Thu
            DATE_END => '2017-05-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2017,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-05-28', # Sun
            DATE_END => '2017-05-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2017,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-05-29', # Mon
            DATE_END => '2017-05-29' # Mon
          } 
        }
      },

      '2018' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2018,
            STAGE => 'Qualifying',
            DATE_START => '2018-05-30', # Wed
            DATE_END => '2018-05-31' # Thu
          },
          'C1' => 
          {
            YEAR => 2018,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-06-01', # Fri
            DATE_END => '2018-06-01' # Fri
          },
          'C2' => 
          {
            YEAR => 2018,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-06-02', # Sat
            DATE_END => '2018-06-02' # Sat
          } 
        }
      },

      '2019' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2019,
            STAGE => 'Qualifying',
            DATE_START => '2019-05-07', # Tue
            DATE_END => '2019-05-08' # Wed
          },
          'C1' => 
          {
            YEAR => 2019,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-05-09', # Thu
            DATE_END => '2019-05-09' # Thu
          },
          'C2' => 
          {
            YEAR => 2019,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-05-10', # Fri
            DATE_END => '2019-05-10' # Fri
          } 
        }
      },

      '2023' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2023,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-05-09', # Tue
            DATE_END => '2023-05-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2023,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-05-10', # Wed
            DATE_END => '2023-05-10' # Wed
          } 
        }
      },

      '2024' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2024,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2024-06-15', # Sat
            DATE_END => '2024-06-15' # Sat
          },
          'C1' => 
          {
            YEAR => 2024,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2024-06-16', # Sun
            DATE_END => '2024-06-16' # Sun
          } 
        }
      }
    }
  },

  'Canadian Women Teams Championship' =>
  {
    ZONE => 'North America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            DATE_START => '2009-06-07', # Sun
            DATE_END => '2009-06-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-10', # Wed
            DATE_END => '2009-06-10' # Wed
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-11', # Thu
            DATE_END => '2009-06-11' # Thu
          } 
        }
      },

      '2010' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            DATE_START => '2010-05-30', # Sun
            DATE_END => '2010-06-01' # Tue
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-02', # Wed
            DATE_END => '2010-06-02' # Wed
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-03', # Thu
            DATE_END => '2010-06-03' # Thu
          } 
        }
      },

      '2011' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Qualifying',
            DATE_START => '2011-05-22', # Sun
            DATE_END => '2011-05-24' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-25', # Wed
            DATE_END => '2011-05-25' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'HALF',
            DATE_START => '2011-05-26', # Thu
            DATE_END => '2011-05-26' # Thu
          } 
        }
      },

      '2012' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            DATE_START => '2012-04-29', # Sun
            DATE_END => '2012-05-01' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-02', # Wed
            DATE_END => '2012-05-02' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-03', # Thu
            DATE_END => '2012-05-03' # Thu
          } 
        }
      },

      '2013' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            DATE_START => '2013-05-29', # Wed
            DATE_END => '2013-05-29' # Wed
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-30', # Thu
            DATE_END => '2013-05-31' # Fri
          } 
        }
      },

      '2016' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            DATE_START => '2016-05-21', # Sat
            DATE_END => '2016-05-22' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-23', # Mon
            DATE_END => '2016-05-24' # Tue
          } 
        }
      },

      '2017' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2017,
            STAGE => 'Qualifying',
            DATE_START => '2017-05-25', # Thu
            DATE_END => '2017-05-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2017,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-05-29', # Mon
            DATE_END => '2017-05-29' # Mon
          },
          'C2' => 
          {
            YEAR => 2017,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-05-29', # Mon
            DATE_END => '2017-05-29' # Mon
          } 
        }
      },

      '2019' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2019,
            STAGE => 'Qualifying',
            DATE_START => '2019-05-04', # Sat
            DATE_END => '2019-05-05' # Sun
          },
          'C1' => 
          {
            YEAR => 2019,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-05-06', # Mon
            DATE_END => '2019-05-06' # Mon
          },
          'C2' => 
          {
            YEAR => 2019,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-05-07', # Tue
            DATE_END => '2019-05-07' # Tue
          } 
        }
      },

      '2023' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2023,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-05-14', # Sun
            DATE_END => '2023-05-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2023,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-05-15', # Mon
            DATE_END => '2023-05-15' # Mon
          } 
        }
      },

      '2024' =>
      {
        MEET => 'Canadian Bridge Championships',
        CHAPTERS => 
        {
          'C0' => 
          {
            YEAR => 2024,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2024-06-12', # Wed
            DATE_END => '2024-06-12' # Wed
          },
          'C1' => 
          {
            YEAR => 2024,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2024-06-13', # Thu
            DATE_END => '2024-06-13' # Thu
          } 
        }
      }
    }
  }
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_CANADA, \%TOURNAMENTS_CANADA, 'Canada');
}

1;
