#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::China;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# No real results, but confirmation of dates and locations:
# https://www.ccba.org.cn/Tour/HistoryList.aspx

my %MEETS_CHINA =
(
  'All China Games' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',

    EDITIONS => 
    {
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-05-26', # Fri
        DATE_END => '2006-05-29' # Mon
      },
    }
  }
);

my %TOURNAMENTS_CHINA =
(
  'All-China Mixed Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'All China Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          } 
        }
      },
    }
  },

  'All-China Open Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'All China Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-05-26', # Fri
            DATE_END => '2006-05-26' # Fri
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-05-27', # Sat
            DATE_END => '2006-05-27' # Sat
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-05-29', # Mon
            DATE_END => '2006-05-29' # Mon
          } 
        }
      },
    }
  },

  'All-China Women Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'All China Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-05-27', # Sat
            DATE_END => '2006-05-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          } 
        }
      },
    }
  },

  'Aoda Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            DATE_START => '2008-12-14', # Sun
            DATE_END => '2008-12-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-12-14', # Sun
            DATE_END => '2008-12-14' # Sun
          } 
        }
      },
    }
  },

  'China Elite Tournament' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011A' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-02-19', # Sat
            DATE_END => '2011-02-21' # Mon
          } 
        }
      },
      '2011B' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-05-26', # Thu
            DATE_END => '2011-05-29' # Sun
          } 
        }
      },
      '2012A' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-03-22', # Thu
            DATE_END => '2012-03-25' # Sun
          } 
        }
      },
      '2012B' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-06-18', # Mon
            DATE_END => '2012-06-20' # Wed
          } 
        }
      },
      '2012C' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-11-16', # Fri
            DATE_END => '2012-11-18' # Sun
          } 
        }
      },
      '2013A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-03-22', # Fri
            DATE_END => '2013-03-24' # Sun
          } 
        }
      },
      '2013B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-05-31', # Fri
            DATE_END => '2013-06-02' # Sun
          } 
        }
      },
      '2013C' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-11-07', # Thu
            DATE_END => '2013-11-10' # Sun
          } 
        }
      },
      '2014A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-04-07', # Mon
            DATE_END => '2014-04-07' # Mon
          } 
        }
      },
      '2014B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-08-05', # Tue
            DATE_END => '2014-08-08' # Fri
          } 
        }
      },
      '2015A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-04-25', # Sat
            DATE_END => '2015-04-28' # Tue
          } 
        }
      },
      '2015B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-11-06', # Fri
            DATE_END => '2015-11-08' # Sun
          } 
        }
      },
    }
  },

  'China Friend City Senior Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2016-06-18', # Sat
            DATE_END => '2016-06-19' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-06-20', # Mon
            DATE_END => '2016-06-20' # Mon
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-06-20', # Mon
            DATE_END => '2016-06-20' # Mon
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-06-20', # Mon
            DATE_END => '2016-06-21' # Tue
          } 
        }
      },
    }
  },

  'China Hosts Europe in Rome' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'Italy',
    CITY => 'Rome',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-04-17', # Fri
            DATE_END => '2009-04-18' # Sat
          } 
        }
      },
    }
  },

  'Chinese Inter-City Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            DATE_START => '2009-08-18', # Tue
            DATE_END => '2009-08-21' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-22', # Sat
            DATE_END => '2009-08-22' # Sat
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-22', # Sat
            DATE_END => '2009-08-22' # Sat
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-22', # Sat
            DATE_END => '2009-08-23' # Sun
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-08-11', # Wed
            DATE_END => '2010-08-13' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2010-08-14', # Sat
            DATE_END => '2010-08-14' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-08-14', # Sat
            DATE_END => '2010-08-15' # Sun
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
            DATE_START => '2011-08-02', # Tue
            DATE_END => '2011-08-07' # Sun
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-08-01', # Wed
            DATE_END => '2012-08-03' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-03', # Fri
            DATE_END => '2012-08-03' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-04', # Sat
            DATE_END => '2012-08-04' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-05', # Sun
            DATE_END => '2012-08-05' # Sun
          } 
        }
      },
      '2015' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-29', # Wed
            DATE_END => '2015-08-02' # Sun
          } 
        }
      },
    }
  },

  'Chinese First League' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-07-02', # Sun
            DATE_END => '2006-07-06' # Thu
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          },
          'C4' => 
          {
            # TODO Something else?
            YEAR => 2006,
            DATE_START => '2006-10-04', # Wed
            DATE_END => '2006-10-04' # Wed
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
            major => 'ROUND',
            DATE_START => '2007-07-03', # Tue
            DATE_END => '2007-07-08' # Sun
          } 
        }
      },
      '2012' =>
      {
        # TODO Something else?
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-11-29', # Thu
            DATE_END => '2012-11-30' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-01', # Sat
            DATE_END => '2012-12-02' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-03', # Mon
            DATE_END => '2012-12-03' # Mon
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-04', # Tue
            DATE_END => '2012-12-04' # Tue
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-10-19', # Sat
            DATE_END => '2013-10-23' # Wed
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-23', # Wed
            DATE_END => '2013-10-24' # Thu
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-24', # Thu
            DATE_END => '2013-10-25' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-25', # Fri
            DATE_END => '2013-10-26' # Sat
          },
        }
      },
    }
  },

  'Chinese Mixed Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            DATE_START => '2011-05-29', # Sun
            DATE_END => '2011-05-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-29', # Sun
            DATE_END => '2011-05-29' # Sun
          } 
        }
      },
      '2015' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-08-13', # Thu
            DATE_END => '2015-08-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-15', # Sat
            DATE_END => '2015-08-15' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-15', # Sat
            DATE_END => '2015-08-16' # Sun
          } 
        }
      },
    }
  },

  'Chinese Open Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-04-15', # Sun
            DATE_END => '2007-04-15' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          } 
        }
      },
    }
  },

  'Chinese Open Trials' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'SEGMENT',
            DATE_START => '2008-05-14', # Wed
            DATE_END => '2008-05-14' # Wed
          } 
        }
      },
    }
  },

  'Chinese Women Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            DATE_START => '2014-04-12', # Sat
            DATE_END => '2014-04-15' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-16', # Wed
            DATE_END => '2014-04-16' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-17', # Thu
            DATE_END => '2014-04-18' # Fri
          } 
        }
      },
    }
  },

  'Chung Hua Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            DATE_START => '2011-02-18', # Fri
            DATE_END => '2011-02-19' # Sat
          } 
        }
      },
    }
  },

  'Cross Strait Invitational' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-11-12', # Sun
            DATE_END => '2006-11-12' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-13' # Mon
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-13' # Mon
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-13' # Mon
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
            major => 'ROUND',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
          } 
        }
      },
    }
  },

  'Dongfeng Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-11-27', # Mon
            DATE_END => '2006-11-27' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-11-27', # Mon
            DATE_END => '2006-11-27' # Mon
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-11-27', # Mon
            DATE_END => '2006-11-27' # Mon
          } 
        }
      },
    }
  },

  'Dongming Knock-out Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-13' # Mon
          } 
        }
      },
    }
  },

  'GHTD Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2005-12-09', # Fri
            DATE_END => '2005-12-09' # Fri
          } 
        }
      },
      '2006' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2006-12-17', # Sun
            DATE_END => '2006-12-17' # Sun
          } 
        }
      },
    }
  },

  'Guangdong Club Championship' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-08-20', # Sat
            DATE_END => '2011-08-21' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-10', # Sat
            DATE_END => '2011-09-11' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-20', # Tue
            DATE_END => '2011-09-20' # Tue
          },
          'C3' => 
          {
            YEAR => 2011,
            DATE_START => '2011-10-07', # Fri
            DATE_END => '2011-10-07' # Fri
          } 
        }
      },
    }
  },

  'Guangdong Elite Tournament' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            major => 'ROUND',
            DATE_START => '2011-05-01', # Sun
            DATE_END => '2011-05-02' # Mon
          } 
        }
      },
    }
  },

  'Guangzhou-HK-Macau Interport' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-07-23', # Sat
            DATE_END => '2016-07-24' # Sun
          } 
        }
      },
    }
  },

  'Haikou Fitness Day' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-08-01', # Sat
            DATE_END => '2015-08-01' # Sat
          } 
        }
      },
    }
  },

  'High-Tech Zone Workers Invitational' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2013-11-01', # Fri
            DATE_END => '2013-11-02' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-02', # Sat
            DATE_END => '2013-11-02' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-02', # Sat
            DATE_END => '2013-11-03' # Sun
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-03', # Sun
            DATE_END => '2013-11-03' # Sun
          } 
        }
      },
    }
  },

  'HNA Open Teams' =>
  {
    ORGANIZATION => 'CCBA',
    SPONSOR => 'Hainan Air',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-10-12', # Wed
            DATE_END => '2011-10-16' # Sun
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
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2012-10-18', # Thu
            DATE_END => '2012-10-19' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2012-10-20', # Sat
            DATE_END => '2012-10-21' # Sun
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-09-05', # Thu
            DATE_END => '2013-09-08' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-09-09', # Mon
            DATE_END => '2013-09-09' # Mon
          } 
        }
      },
      '2014' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-10-16', # Thu
            DATE_END => '2014-10-17' # Fri
          } 
        }
      },
      '2015' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-10-07', # Wed
            DATE_END => '2015-10-09' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-10-09', # Fri
            DATE_END => '2015-10-09' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-10', # Sat
            DATE_END => '2015-10-10' # Sat
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-10', # Sat
            DATE_END => '2015-10-10' # Sat
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-10', # Sat
            DATE_END => '2015-10-11' # Sun
          },
        }
      },
    }
  },

  'Jianshe Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-14', # Sun
            DATE_END => '2009-06-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-15', # Mon
            DATE_END => '2009-06-15' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-15', # Mon
            DATE_END => '2009-06-16' # Tue
          } 
        }
      },
    }
  },

  'Jili Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            major => 'ROUND',
            DATE_START => '2011-12-16', # Fri
            DATE_END => '2011-12-20' # Tue
          } 
        }
      },
    }
  },

  'JPD Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-03-29', # Wed
            DATE_END => '2006-03-29' # Wed
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            DATE_START => '2006-03-30', # Thu
            DATE_END => '2006-03-30' # Thu
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-03-31', # Fri
            DATE_END => '2006-03-31' # Fri
          } 
        }
      },
    }
  },

  'Mountain Sea Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    CITY => 'Xiamen',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-01-11', # Sat
            DATE_END => '2014-01-12' # Sun
          } 
        }
      },
    }
  },

  'Sanchen Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          } 
        }
      },
    }
  },

  'Sanya Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-08-19', # Sun
            DATE_END => '2007-08-19' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-08-19', # Sun
            DATE_END => '2007-08-19' # Sun
          } 
        }
      },
    }
  },

  'Shenhua Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Bronze',
            DATE_START => '2006-06-20', # Tue
            DATE_END => '2006-06-20' # Tue
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-06-20', # Tue
            DATE_END => '2006-06-20' # Tue
          } 
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          }
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          } 
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            DATE_START => '2009-05-02', # Sat
            DATE_END => '2009-05-02' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            DATE_START => '2009-05-03', # Sun
            DATE_END => '2009-05-03' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-03', # Sun
            DATE_END => '2009-05-03' # Sun
          } 
        }
      },
    }
  },

  'Shenyang Spring Teams' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    CITY => 'Shenyang',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            STAGE => 'Semifinal',
            DATE_START => '2009-03-29', # Sun
            DATE_END => '2009-03-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-29', # Sun
            DATE_END => '2009-03-29' # Sun
          } 
        }
      },
    }
  },

  'Shenzhen Lanpu Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    CITY => 'Shenzhen',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Qualifying',
            major => 'SESSION',
            DATE_START => '2006-11-27', # Mon
            DATE_END => '2006-11-27' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2006-11-27', # Mon
            DATE_END => '2006-11-27' # Mon
          } 
        }
      },
    }
  },

  'Shenzhen Nangangdongli Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    CITY => 'Shenzhen',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'SEGMENT',
            DATE_START => '2011-10-02', # Sun
            DATE_END => '2011-10-04' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-04', # Tue
            DATE_END => '2011-10-05' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-05', # Wed
            DATE_END => '2011-10-05' # Wed
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-05', # Wed
            DATE_END => '2011-10-06' # Thu
          },
        }
      },
    }
  },

  'Sunchime Fund Cup' =>
  {
    # Could be an Elite tournament.
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-10-02', # Tue
            DATE_END => '2012-10-04' # Thu
          } 
        }
      },
    }
  },

  'Tielu Jixie Invitational' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        CITY => 'Jixiexiang',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-05-27', # Sun
            DATE_END => '2012-05-27' # Sun
          } 
        }
      },
    }
  },

  'Vanke Open Teams Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-07-13', # Fri
            DATE_END => '2012-07-15' # Sun
          } 
        }
      },
    }
  },

  'Xinyuan Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-06-11', # Fri
            DATE_END => '2010-06-13' # Sun
          } 
        }
      },
    }
  },

  'Zhejiang Huamen Cup' =>
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-06', # Tue
            DATE_END => '2011-09-09' # Fri
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_CHINA, \%TOURNAMENTS_CHINA, 'China');
}

1;
