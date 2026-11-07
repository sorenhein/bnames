#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Asia;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_ASIA =
(
  'APBF Championships' =>
  {
    # https://www.hkcba.org/apbf.php
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',

    EDITIONS =>
    {
      '2005' =>
      {
        ORDINAL => 43,
        CITY => 'Seoul',
        COUNTRY => 'South Korea',
        YEAR => 2005,
        DATE_START => '2005-06-23', # Thu
        DATE_END => '2005-07-03' # Sun
      },
      '2006' =>
      {
        ORDINAL => 44,
        CITY => 'Shanghai',
        COUNTRY => 'China',
        # Dates are just a guess.
        YEAR => 2006,
        DATE_START => '2006-08-24', # Thu
        DATE_END => '2006-08-29' # Tue
      },
      '2007' =>
      {
        ORDINAL => 45,
        CITY => 'Bandung',
        COUNTRY => 'Indonesia',
        YEAR => 2007,
        DATE_START => '2007-06-04', # Mon
        DATE_END => '2007-06-13' # Wed
      },
      '2008' =>
      {
        # Probably a PABF championship and not really
        # the official ABPF one.  Also the date is suspect --
        # probably 2008.
        YEAR => 2008,
        DATE_START => '2008-09-10', # Wed
        DATE_END => '2008-09-10' # Wed
      },
      '2009' =>
      {
        ORDINAL => 46,
        CITY => 'Macau',
        COUNTRY => 'Macau',
        YEAR => 2009,
        DATE_START => '2009-06-18', # Thu
        DATE_END => '2009-06-28' # Sun
      },
      '2010' =>
      {
        ORDINAL => 47,
        CITY => 'Hamilton',
        COUNTRY => 'New Zealand',
        YEAR => 2010,
        DATE_START => '2010-05-23', # Sun
        DATE_END => '2010-05-29' # Sat
      },
      '2011' =>
      {
        # http://www.mcba.org.my/
        # http://www.mcba.org.my/2011apbf.pdf
        ORDINAL => 48,
        CITY => 'Kuala Lumpur',
        COUNTRY => 'Malaysia',
        YEAR => 2011,
        DATE_START => '2011-06-15', # Wed
        DATE_END => '2011-06-24' # Fri
      },
      '2012' =>
      {
        YEAR => 2012,
        CITY => 'Fukuoka',
        COUNTRY => 'Japan',
        DATE_START => '2012-08-25', # Sat
        DATE_END => '2012-09-02' # Sun
      },
      '2013' =>
      {
        ORDINAL => 49,
        CITY => 'Hong Kong',
        COUNTRY => 'Hong Kong',
        YEAR => 2013,
        DATE_START => '2013-06-07', # Fri
        DATE_END => '2013-06-16' # Sun
      },
      '2015' =>
      {
        # https://www.ccba.org.cn/Tour/TourIndex.aspx?tourid=5827
        ORDINAL => 50,
        CITY => 'Bangkok',
        COUNTRY => 'Thailand',
        YEAR => 2015,
        DATE_START => '2015-05-20', # Wed
        DATE_END => '2015-05-31' # Sun
      },
      '2017' =>
      {
        # https://www.ccba.org.cn/Tour/TourIndex.aspx?tourid=7822
        ORDINAL => 51,
        CITY => 'Seoul',
        COUNTRY => 'South Korea',
        YEAR => 2017,
        DATE_START => '2017-05-28', # Sun
        DATE_END => '2017-06-07' # Wed
      },
      '2019' =>
      {
        # https://www.ccba.org.cn/Tour/TourIndex.aspx?tourid=14478
        ORDINAL => 52,
        CITY => 'Singapore',
        COUNTRY => 'Singapore',
        YEAR => 2019,
        DATE_START => '2019-06-11', # Tue
        DATE_END => '2019-06-20' # Thu
      },
      '2023' =>
      {
        # https://www.ccba.org.cn/Tour/TourIndex.aspx?tourid=23144
        ORDINAL => 53,
        CITY => 'Hong Kong',
        COUNTRY => 'Hong Kong',
        YEAR => 2023,
        DATE_START => '2023-06-09', # Fri
        DATE_END => '2023-06-17' # Sat
      },
    }
  },

  'APBF Youth Championships' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',

    EDITIONS =>
    {
      '2006' =>
      {
        # Guess.
        YEAR => 2006,
        DATE_START => '2006-06-10', # Sat
        DATE_END => '2006-06-10' # Sat
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-05-24', # Mon
        DATE_END => '2010-05-29' # Sat
      },
      '2013' =>
      {
        ORDINAL => 19,
        CITY => 'Wuhan',
        COUNTRY => 'China',
        YEAR => 2013,
        DATE_START => '2013-08-19', # Mon
        DATE_END => '2013-08-25' # Sun
      },
      '2015' =>
      {
        ORDINAL => 20,
        CITY => 'Bangkok',
        COUNTRY => 'Thailand',
        YEAR => 2015,
        DATE_START => '2015-04-01', # Wed
        DATE_END => '2015-04-07' # Tue
      },
    }
  },

  'ASEAN Club Championship' =>
  {
    # 2013: https://tournament.aseanbridge.com/
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',

    EDITIONS =>
    {
      '2006' =>
      {
        ORDINAL => 28,
        CITY => 'Singapore',
        COUNTRY => 'Singapore',
        YEAR => 2006,
        DATE_START => '2006-12-15', # Fri
        DATE_END => '2006-12-17' # Sun
      },
      '2007' =>
      {
        ORDINAL => 29,
        CITY => 'Makati City',
        COUNTRY => 'Philippines',
        YEAR => 2007,
        DATE_START => '2007-12-07', # Fri
        DATE_END => '2007-12-11' # Tue
      },
      '2008' =>
      {
        ORDINAL => 30,
        CITY => 'Semarang',
        COUNTRY => 'Indonesia',
        YEAR => 2008,
        DATE_START => '2008-12-03', # Wed
        DATE_END => '2008-12-07' # Sun
      },
      '2009' =>
      {
        ORDINAL => 31,
        CITY => 'Kuala Lumpur',
        COUNTRY => 'Malaysia',
        YEAR => 2009,
        DATE_START => '2009-12-05', # Sat
        DATE_END => '2009-12-09' # Wed
      },
      '2010' =>
      {
        ORDINAL => 32,
        CITY => 'Bangkok',
        COUNTRY => 'Thailand',
        YEAR => 2010,
        DATE_START => '2010-11-21', # Sun
        DATE_END => '2010-11-24' # Wed
      },
      '2011' =>
      {
        ORDINAL => 33,
        CITY => 'Singapore',
        COUNTRY => 'Singapore',
        YEAR => 2011,
        DATE_START => '2011-12-03', # Sat
        DATE_END => '2011-12-07' # Wed
      },
      '2012' =>
      {
        ORDINAL => 34,
        CITY => 'Bali',
        COUNTRY => 'Indonesia',
        YEAR => 2012,
        DATE_START => '2012-12-05', # Wed
        DATE_END => '2012-12-09' # Sun
      },
      '2013' =>
      {
        ORDINAL => 35,
        CITY => 'Makati City',
        COUNTRY => 'Philippines',
        YEAR => 2013,
        DATE_START => '2013-11-27', # Wed
        DATE_END => '2013-12-01' # Sun
      },
      '2014' =>
      {
        ORDINAL => 36,
        CITY => 'Kuala Lumpur',
        COUNTRY => 'Malaysia',
        YEAR => 2014,
        DATE_START => '2014-11-26', # Wed
        DATE_END => '2014-11-30' # Sun
      },
      '2015' =>
      {
        ORDINAL => 37,
        CITY => 'Bangkok',
        COUNTRY => 'Thailand',
        YEAR => 2015,
        DATE_START => '2015-12-03', # Thu
        DATE_END => '2015-12-06' # Sun
      },
    }
  },

  'Asia Cup' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',

    EDITIONS =>
    {
      '2010' =>
      {
        ORDINAL => 1,
        YEAR => 2010,
        DATE_START => '2010-08-30', # Mon
        DATE_END => '2010-09-05' # Sun
      },
      '2014' =>
      {
        # https://www.ccba.org.cn/Tour/TourIndex.aspx?tourid=3989
        ORDINAL => 2,
        CITY => 'Jinhua',
        COUNTRY => 'China',
        YEAR => 2014,
        DATE_START => '2014-06-12', # Thu
        DATE_END => '2014-06-22' # Sun
      },
      '2018' =>
      {
        # https://www.ccba.org.cn/Tour/TourIndex.aspx?tourid=11713
        ORDINAL => 3,
        CITY => 'Goa',
        COUNTRY => 'India',
        YEAR => 2018,
        DATE_START => '2018-06-04', # Mon
        DATE_END => '2018-06-10' # Sun
      },
      '2022' =>
      {
        # https://www.ccba.org.cn/Tour/TourIndex.aspx?tourid=22055
        ORDINAL => 4,
        CITY => 'Jakarta',
        COUNTRY => 'Indonesia',
        YEAR => 2022,
        DATE_START => '2022-10-19', # Wed
        DATE_END => '2022-10-25' # Tue
      },
    }
  },

  'Southeast Asian Games' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',

    EDITIONS =>
    {
      '2011' =>
      {
        # https://en.wikipedia.org/wiki/Bridge_at_the_2011_SEA_Games
        ORDINAL => 26,
        CITY => 'Jakarta',
        COUNTRY => 'Indonesia',
        YEAR => 2011,
        DATE_START => '2011-11-10', # Thu
        DATE_END => '2011-11-21' # Mon
      },
      '2013' =>
      {
        # https://en.wikipedia.org/wiki/2013_SEA_Games
        # May have dropped bridge again.
        ORDINAL => 27,
        CITY => 'Nay Pyi Taw',
        COUNTRY => 'Myanmar',
        YEAR => 2013,
        DATE_START => '2013-12-11', # Wed
        DATE_END => '2013-12-22' # Sun
      },
    }
  },
);

my %TOURNAMENTS_ASIA =
(
  'APBF Girl Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-08-21', # Wed
            DATE_END => '2013-08-25' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-04-03', # Fri
            DATE_END => '2015-04-07' # Tue
          } 
        }
      },
    }
  },

  'APBF Junior Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2006-06-10', # Sat
            DATE_END => '2006-06-10' # Sat
          } 
        }
      },
      '2010' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2010-05-24', # Mon
            DATE_END => '2010-05-25' # Tue
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2010-05-26', # Wed
            DATE_END => '2010-05-29' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-02', # Sun
            DATE_END => '2012-09-02' # Sun
          },
        }
      },
      '2013' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-08-20', # Tue
            DATE_END => '2013-08-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-08-24', # Sat
            DATE_END => '2013-08-25' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-04-01', # Wed
            DATE_END => '2015-04-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-04-05', # Sun
            DATE_END => '2015-04-07' # Tue
          } 
        }
      },
    }
  },

  'APBF Mixed Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-06-19', # Fri
            DATE_END => '2009-06-28' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-06-15', # Wed
            DATE_END => '2011-06-24' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-16' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-05-21', # Thu
            DATE_END => '2015-05-31' # Sun
          } 
        }
      },
    }
  },

  'APBF Open Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2005-06-23', # Thu
            DATE_END => '2005-07-01' # Fri
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Bronze',
            major => 'ROUND',
            DATE_START => '2005-07-02', # Sat
            DATE_END => '2005-07-03' # Sun
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Playoff',
            major => 'ROUND',
            DATE_START => '2005-07-01', # Fri
            DATE_END => '2005-07-03' # Sun
          } 
        }
      },
      '2006' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Qualifying',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2006-08-24', # Thu
            DATE_END => '2006-08-29' # Tue
          } 
        }
      },
      '2007' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-06-04', # Mon
            DATE_END => '2007-06-11' # Mon
          },
          'C1' => 
          {
            # Not sure.
            YEAR => 2007,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2007-06-12', # Tue
            DATE_END => '2007-06-12' # Tue
          },
          'C2' => 
          {
            # Not sure.
            YEAR => 2007,
            STAGE => 'Playoff',
            DATE_START => '2007-06-13', # Wed
            DATE_END => '2007-06-13' # Wed
          } 
        }
      },
      '2008' =>
      {
        # Suspect -- PABF rather than APBF?
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          } 
        }
      },
      '2009' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2009-06-19', # Fri
            DATE_END => '2009-06-26' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-06-26', # Fri
            DATE_END => '2009-06-28' # Sun
          },
        }
      },
      '2010' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2010-05-23', # Sun
            DATE_END => '2010-05-29' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2011-06-15', # Wed
            DATE_END => '2011-06-22' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Playoff',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-06-23', # Thu
            DATE_END => '2011-06-24' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-08-27', # Mon
            DATE_END => '2012-09-02' # Sun
          },
        }
      },
      '2013' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-06-15', # Sat
            DATE_END => '2013-06-16' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-05-21', # Thu
            DATE_END => '2015-05-29' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-05-30', # Sat
            DATE_END => '2015-05-31' # Sun
          } 
        }
      },
    }
  },

  'APBF School Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Schools',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2006-06-10', # Sat
            DATE_END => '2006-06-10' # Sat
          } 
        }
      },
      '2007' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2007-06-13', # Wed
            DATE_END => '2007-06-13' # Wed
          } 
        }
      },
    }
  },

  'APBF Senior Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Qualifying',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2006-08-28', # Mon
            DATE_END => '2006-08-29' # Tue
          } 
        }
      },
      '2007' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-06-04', # Mon
            DATE_END => '2007-06-11' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2007-06-12', # Tue
            DATE_END => '2007-06-13' # Wed
          } 
        }
      },
      '2008' =>
      {
        # Suspect -- PABF rather than APBF?
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          } 
        }
      },
      '2009' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2009-06-23', # Tue
            DATE_END => '2009-06-25' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2010-05-23', # Sun
            DATE_END => '2010-05-28' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-08-27', # Mon
            DATE_END => '2012-09-02' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-06-16', # Sun
            DATE_END => '2013-06-16' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-05-21', # Thu
            DATE_END => '2015-05-29' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-05-30', # Sat
            DATE_END => '2015-05-30' # Sat
          } 
        }
      },
    }
  },

  'APBF Women Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Qualifying',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2006-08-24', # Thu
            DATE_END => '2006-08-29' # Tue
          } 
        }
      },
      '2007' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-10' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Bronze',
            DATE_START => '2007-06-13', # Wed
            DATE_END => '2007-06-13' # Wed
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2007-06-11', # Mon
            DATE_END => '2007-06-12' # Tue
          } 
        }
      },
      '2008' =>
      {
        # Suspect -- PABF rather than APBF?
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          } 
        }
      },
      '2009' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2009-06-20', # Sat
            DATE_END => '2009-06-26' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-06-27', # Sat
            DATE_END => '2009-06-27' # Sat
          } 
        }
      },
      '2010' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2010-05-24', # Mon
            DATE_END => '2010-05-26' # Wed
          } 
        }
      },
      '2012' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-08-27', # Mon
            DATE_END => '2012-09-02' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-06-08', # Sat
            DATE_END => '2013-06-14' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-05-21', # Thu
            DATE_END => '2015-05-29' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-05-30', # Sat
            DATE_END => '2015-05-30' # Sat
          } 
        }
      },
    }
  },

  'APBF Youngster Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2007-06-08', # Fri
            DATE_END => '2007-06-11' # Mon
          } 
        }
      },
      '2008' =>
      {
        # Suspect -- PABF rather than APBF?
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          } 
        }
      },
      '2010' =>
      {
        MEET => 'APBF Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2010-05-25', # Tue
            DATE_END => '2010-05-29' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-08-21', # Wed
            DATE_END => '2013-08-25' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'APBF Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-04-02', # Thu
            DATE_END => '2015-04-07' # Tue
          } 
        }
      },
    }
  },

  'ASEAN Mixed Club Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-12-17', # Sun
            DATE_END => '2006-12-17' # Sun
          } 
        }
      },
      '2008A' =>
      {
        # Suspect -- PABF rather than APBF?
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
        }
      },
      '2008B' =>
      {
        MEET => 'ASEAN Club Championship',
        MEET_TAG => '2008',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-12-07', # Sun
            DATE_END => '2008-12-07' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-12-06', # Sun
            DATE_END => '2009-12-09' # Wed
          } 
        }
      },
      '2010' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-11-21', # Sun
            DATE_END => '2010-11-24' # Wed
          } 
        }
      },
      '2012' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-12-05', # Wed
            DATE_END => '2012-12-09' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-12-03', # Thu
            DATE_END => '2015-12-06' # Sun
          } 
        }
      },
    }
  },

  'ASEAN Open Club Pairs' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-12-17', # Sun
            DATE_END => '2006-12-17' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-12-05', # Wed
            DATE_END => '2012-12-09' # Sun
          } 
        }
      },
    }
  },

  'ASEAN Open Club Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-12-16', # Sat
            DATE_END => '2006-12-16' # Sat
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            DATE_START => '2006-12-17', # Sun
            DATE_END => '2006-12-17' # Sun
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            DATE_START => '2006-12-17', # Sun
            DATE_END => '2006-12-17' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Qualifying',
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2008-12-06', # Sat
            DATE_END => '2008-12-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-12-07', # Sun
            DATE_END => '2008-12-07' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-12-06', # Sun
            DATE_END => '2009-12-06' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-12-07', # Mon
            DATE_END => '2009-12-08' # Tue
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-12-09', # Wed
            DATE_END => '2009-12-09' # Wed
          } 
        }
      },
      '2010' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-11-21', # Sun
            DATE_END => '2010-11-23' # Tue
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2010-11-24', # Wed
            DATE_END => '2010-11-24' # Wed
          } 
        }
      },
      '2011' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-12-06', # Tue
            DATE_END => '2011-12-07' # Wed
          } 
        }
      },
      '2012' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-12-05', # Wed
            DATE_END => '2012-12-06' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-12-07', # Fri
            DATE_END => '2012-12-08' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-09', # Sun
            DATE_END => '2012-12-09' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-12-04', # Fri
            DATE_END => '2015-12-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-06', # Sun
            DATE_END => '2015-12-06' # Sun
          } 
        }
      },
    }
  },

  'ASEAN Women Club Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-12-17', # Sun
            DATE_END => '2006-12-17' # Sun
          } 
        }
      },
    }
  },

  'ASEAN Youngsters Club Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'ASEAN Club Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-06', # Sun
            DATE_END => '2015-12-06' # Sun
          } 
        }
      },
    }
  },

  'Asia Open Teams Cup' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Asia Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-08-31', # Tue
            DATE_END => '2010-09-04' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Asia Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2014-06-13', # Fri
            DATE_END => '2014-06-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-06-21', # Sat
            DATE_END => '2014-06-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-06-22', # Sun
            DATE_END => '2014-06-22' # Sun
          } 
        }
      },
    }
  },

  'Asia Women Teams Cup' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Asia Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-08-30', # Mon
            DATE_END => '2010-09-05' # Sun
          } 
        }
      },
    }
  },

  'Asian University Championship' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U31',

    EDITIONS =>
    {
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2009-11-25', # Wed
            DATE_END => '2009-11-30' # Mon
          } 
        }
      },
    }
  },

  'SEA Mixed Pairs' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Southeast Asian Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-11-10', # Thu
            DATE_END => '2011-11-21' # Mon
          } 
        }
      },
    }
  },

  'SEA Mixed Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Southeast Asian Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            DATE_START => '2011-11-15', # Tue
            DATE_END => '2011-11-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-11-17', # Thu
            DATE_END => '2011-11-18' # Fri
          } 
        }
      },
    }
  },

  'SEA Open Pairs' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Southeast Asian Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-11-10', # Thu
            DATE_END => '2011-11-21' # Mon
          } 
        }
      },
    }
  },

  'SEA Open Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Southeast Asian Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-11-10', # Thu
            DATE_END => '2011-11-21' # Mon
          } 
        }
      },
    }
  },

  'SEA Women Pairs' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Southeast Asian Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-11-10', # Thu
            DATE_END => '2011-11-21' # Mon
          } 
        }
      },
    }
  },

  'SEA Women Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Southeast Asian Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2011-11-10', # Thu
            DATE_END => '2011-11-13' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-11-14', # Mon
            DATE_END => '2011-11-15' # Tue
          },
        }
      },
    }
  },

  'South Pacific Open Teams' =>
  {
    ORGANIZATION => 'APBF',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2005-05-18', # Wed
            DATE_END => '2005-05-18' # Wed
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2005-05-18', # Wed
            DATE_END => '2005-05-18' # Wed
          } 
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
          } 
        }
      },
    }
  },

  'Yeh Bros Pairs Cup' =>
  {
    ORIGIN => 'Invitational',
    ZONE => 'Southeast Asia',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        CITY => 'Broadbeach Island',
        COUNTRY => 'Australia',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2009,
            DATE_START => '2009-03-02', # Mon
            DATE_END => '2009-03-02' # Mon
          },
        }
      },
    }
  },

  'Yeh Bros Cup' =>
  {
    ORIGIN => 'Invitational',
    ZONE => 'Southeast Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        # Not present in data
        CITY => 'Beijing',
        COUNTRY => 'China',
        CHAPTERS =>
        {
          'SINGLE' =>
          {
            YEAR => 2004,
            DATE_START => '2004-04-23', # Fri
            DATE_END => '2004-04-25' # Sun
          }
        }
      },
      '2006' =>
      {
        CITY => 'Kaohsiung',
        COUNTRY => 'Taiwan',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2006,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2006-03-18', # Sat
            DATE_END => '2006-03-18' # Sat
          },
          'C1' =>
          {
            YEAR => 2006,
            STAGE => 'Knock-out',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2006-03-18', # Sat
            DATE_END => '2006-03-19' # Sun
          },
          'C2' =>
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-03-19', # Sun
            DATE_END => '2006-03-19' # Sun
          }
        }
      },
      '2007' =>
      {
        CITY => 'Shenzhen',
        COUNTRY => 'China',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2007,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2007-03-01', # Thu
            DATE_END => '2007-03-02' # Fri
          },
          'C1' =>
          {
            YEAR => 2007,
            STAGE => 'Knock-out',
            major => 'SEGMENT',
            DATE_START => '2007-03-03', # Sat
            DATE_END => '2007-03-04' # Sun
          },
          'C2' =>
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-03-04', # Sun
            DATE_END => '2007-03-04' # Sun
          }
        }
      },
      '2008' =>
      {
        CITY => 'Kaohsiung',
        COUNTRY => 'Taiwan',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2008,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2008-02-13', # Wed
            DATE_END => '2008-02-15' # Fri
          },
          'C1' =>
          {
            YEAR => 2008,
            STAGE => 'Knock-out',
            major => 'SEGMENT',
            minor => 'HALF',
            DATE_START => '2008-02-16', # Sat
            DATE_END => '2008-02-16' # Sat
          },
          'C2' =>
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-02-17', # Sun
            DATE_END => '2008-02-17' # Sun
          }
        }
      },
      '2009' =>
      {
        CITY => 'Broadbeach Island',
        COUNTRY => 'Australia',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2009-02-25', # Wed
            DATE_END => '2009-02-27' # Fri
          },
          'C1' =>
          {
            YEAR => 2009,
            STAGE => 'Knock-out',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2009-02-27', # Fri
            DATE_END => '2009-03-01' # Sun
          },
          'C2' =>
          {
            YEAR => 2009,
            MOVEMENT => 'Triangle',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2009-02-28', # Sat
            DATE_END => '2009-03-01' # Sun
          },
          'C3' =>
          {
            YEAR => 2009,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2009-03-01', # Sun
            DATE_END => '2009-03-02' # Mon
          },
          'C4' =>
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-01', # Sun
            DATE_END => '2009-03-02' # Mon
          }
        }
      },
      '2011' =>
      {
        CITY => 'Wuxi',
        COUNTRY => 'China',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2011,
            STAGE => 'Qualifying',
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2011-04-17', # Sun
            DATE_END => '2011-04-19' # Tue
          },
          'C1' =>
          {
            YEAR => 2011,
            STAGE => 'Knock-out',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-04-19', # Tue
            DATE_END => '2011-04-21' # Thu
          },
          'C2' =>
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-19', # Tue
            DATE_END => '2011-04-21' # Thu
          }
        }
      },
      '2013' =>
      {
        CITY => 'Yokohama',
        COUNTRY => 'Japan',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2013-04-22', # Mon
            DATE_END => '2013-04-23' # Tue
          },
          'C1' =>
          {
            YEAR => 2013,
            STAGE => 'Knock-out',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-04-23', # Tue
            DATE_END => '2013-04-25' # Thu
          },
          'C2' =>
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-04-23', # Tue
            DATE_END => '2013-04-26' # Fri
          },
          'C3' =>
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-04-23', # Tue
            DATE_END => '2013-04-26' # Fri
          }
        }
      },
      '2015' =>
      {
        CITY => 'Shanghai',
        COUNTRY => 'China',
        CHAPTERS =>
        {
          'C0' =>
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-04-08', # Wed
            DATE_END => '2015-04-09' # Thu
          },
          'C1' =>
          {
            YEAR => 2015,
            STAGE => 'Knock-out',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-04-10', # Fri
            DATE_END => '2015-04-11' # Sat
          },
          'C2' =>
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-12', # Sun
            DATE_END => '2015-04-12' # Sun
          }
        }
      },
      '2017' =>
      {
        CITY => 'Tokyo',
        COUNTRY => 'Japan',
        CHAPTERS =>
        {
          'SINGLE' =>
          {
            YEAR => 2017,
            DATE_START => '2017-07-03', # Mon
            DATE_END => '2017-07-03' # Mon
          }
        }
      },
      '2018' =>
      {
        CITY => 'Beijing',
        COUNTRY => 'China',
        CHAPTERS =>
        {
          'SINGLE' =>
          {
            YEAR => 2018,
            DATE_START => '2018-07-01', # Sun
            DATE_END => '2018-07-05' # Thu
          }
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_ASIA, \%TOURNAMENTS_ASIA, 'Asia');
}

1;
