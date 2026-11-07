#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Turkey;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Surely there is more structure here than I have discovered.

my %MEETS_TURKEY =
(
  'Assael Festival' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    CITY => 'Cesme',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-06-03', # Tue
        DATE_END => '2014-06-08' # Sun
      },
    }
  },

  'Cappadocia Fairy Chimneys Festival' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    REGION => 'Cappadocia',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-10-24', # Sat
        DATE_END => '2009-10-24' # Sat
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-10-23', # Sat
        DATE_END => '2010-10-24' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-11-19', # Sat
        DATE_END => '2011-11-19' # Sat
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-11-03', # Sat
        DATE_END => '2012-11-03' # Sat
      },
    }
  },

  'Bodrum Peninsula Festival' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    CITY => 'Bodrum',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-07-25', # Fri
        DATE_END => '2014-07-25' # Fri
      },
    }
  },

  'Mersin Bridge Festival' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    CITY => 'Mersin',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-09-23', # Fri
        DATE_END => '2011-09-25' # Sun
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-09-20', # Fri
        DATE_END => '2013-09-20' # Fri
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-09-12', # Fri
        DATE_END => '2014-09-12' # Fri
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-09-11', # Fri
        DATE_END => '2015-09-11' # Fri
      },
    }
  },

  'Sivrioglu Festival' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    CITY => 'Sivrioglu',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-02-07', # Sun
        DATE_END => '2016-02-07' # Sun
      },
    }
  },

  'Turkish-Greek Friendship Festival' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-09-24', # Fri
        DATE_END => '2010-09-24' # Fri
      },
      '2011' =>
      {
        ORDINAL => 3,
        YEAR => 2011,
        DATE_START => '2011-09-09', # Fri
        DATE_END => '2011-09-12' # Mon
      },
    }
  },

  'Turkish Open Trials' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-04-04', # Sun
        DATE_END => '2010-04-09' # Fri
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-10-21', # Fri
        DATE_END => '2011-10-23' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-07-11', # Wed
        DATE_END => '2012-07-13' # Fri
      },
      '2016' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=7&year=2016
        YEAR => 2016,
        DATE_START => '2016-07-01', # Fri
        DATE_END => '2016-07-03' # Sun
      },
    }
  },

  'Turkish Winter Championships' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-03-19', # Mon
        DATE_END => '2007-03-19' # Mon
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-03-03', # Mon
        DATE_END => '2008-03-03' # Mon
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-03-06', # Fri
        DATE_END => '2009-03-11' # Wed
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-03-05', # Fri
        DATE_END => '2010-03-10' # Wed
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-03-04', # Fri
        DATE_END => '2011-03-09' # Wed
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-02-23', # Thu
        DATE_END => '2012-02-28' # Tue
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-03-10', # Sun
        DATE_END => '2013-03-16' # Sat
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-03-01', # Sat
        DATE_END => '2014-03-07' # Fri
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-02-28', # Sat
        DATE_END => '2015-03-07' # Sat
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-03-05', # Sat
        DATE_END => '2016-03-12' # Sat
      },
      '2017' =>
      {
        YEAR => 2017,
        DATE_START => '2017-03-25', # Sat
        DATE_END => '2017-03-28' # Tue
      },
      '2018' =>
      {
        YEAR => 2018,
        DATE_START => '2018-03-17', # Sat
        DATE_END => '2018-03-24' # Sat
      },
      '2019' =>
      {
        YEAR => 2019,
        DATE_START => '2019-02-02', # Sat
        DATE_END => '2019-02-09' # Sat
      },
      '2020' =>
      {
        YEAR => 2020,
        CITY => 'Antalya',
        DATE_START => '2020-01-23', # Thu
        DATE_END => '2020-01-26' # Sun
      },
      '2023' =>
      {
        YEAR => 2023,
        CITY => 'Antalya',
        DATE_START => '2023-01-26', # Thu
        DATE_END => '2023-01-29' # Sun
      },
      '2024' =>
      {
        YEAR => 2024,
        CITY => 'Antalya',
        DATE_START => '2024-01-25', # Thu
        DATE_END => '2024-01-28' # Sun
      },
    }
  },

  'Turkish Women Trials' =>
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-04-05', # Mon
        DATE_END => '2010-04-08' # Thu
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-10-21', # Fri
        DATE_END => '2011-10-23' # Sun
      },
    }
  },
);

my %TOURNAMENTS_TURKEY =
(
  'Aegean Open Teams',
  {
    ORGANIZATION => 'TBF',
    CITY => 'Izmir',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-06-29', # Fri
            DATE_END => '2012-07-01' # Sun
          },
        }
      },
    }
  },

  'Anatolian Club Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-05-20', # Sun
            DATE_END => '2012-05-20' # Sun
          },
        }
      },
      '2014' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-05-17', # Sat
            DATE_END => '2014-05-18' # Sun
          },
        }
      }
    }
  },

  'Anatolian Fall Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-26', # Wed
            DATE_END => '2011-10-26' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-26', # Wed
            DATE_END => '2011-10-27' # Thu
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-27' # Thu
          },
        }
      }
    }
  },

  'Anatolian Spring Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          },
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            MOVEMENT => 'Danish',
            major => 'SEGMENT',
            DATE_START => '2010-04-26', # Mon
            DATE_END => '2010-04-27' # Tue
          },
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-04-27', # Wed
            DATE_END => '2011-04-27' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-27', # Wed
            DATE_END => '2011-04-27' # Wed
          },
        }
      }
    }
  },

  'Ankara Summer Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
          'C0' => 
          {
            YEAR => 2012,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2012-06-17', # Sun
            DATE_END => '2012-06-17' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2012-06-24', # Sun
            DATE_END => '2012-06-24' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2012-07-01', # Sun
            DATE_END => '2012-07-01' # Sun
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-17', # Wed
            DATE_END => '2016-08-17' # Wed
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-08-18', # Thu
            DATE_END => '2016-08-19' # Fri
          } 
        }
      },
    }
  },

  'Balikcioglu Open Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-05-17', # Thu
            DATE_END => '2012-05-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-05-24', # Thu
            DATE_END => '2012-05-24' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-05-31', # Thu
            DATE_END => '2012-05-31' # Thu
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-06-07', # Thu
            DATE_END => '2012-06-07' # Thu
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-06-14', # Thu
            DATE_END => '2012-06-14' # Thu
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-06-21', # Thu
            DATE_END => '2012-06-21' # Thu
          },
          'C6' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-06-26', # Tue
            DATE_END => '2012-06-26' # Tue
          },
          'C7' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-06-28', # Thu
            DATE_END => '2012-06-28' # Thu
          },
        }
      },
    }
  },

  'Bodrum Patton Teams',
  {
    FORM => 'Teams',
    SCORING => 'Patton',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Bodrum Peninsula Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-07-25', # Fri
            DATE_END => '2014-07-25' # Fri
          },
        }
      },
    }
  },

  'Cappadocia Open Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Cappadocia Fairy Chimneys Festival',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-10-24', # Sat
            DATE_END => '2009-10-24' # Sat
          },
        }
      },
      '2010' =>
      {
        MEET => 'Cappadocia Fairy Chimneys Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-10-23', # Sat
            DATE_END => '2010-10-24' # Sun
          },
        }
      },
      '2011' =>
      {
        MEET => 'Cappadocia Fairy Chimneys Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-11-19', # Sat
            DATE_END => '2011-11-19' # Sat
          },
        }
      },
      '2012' =>
      {
        MEET => 'Cappadocia Fairy Chimneys Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-11-03', # Sat
            DATE_END => '2012-11-03' # Sat
          },
        }
      },
    }
  },

  'Fatih Kiral Pairs',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            DATE_START => '2011-06-11', # Sat
            DATE_END => '2011-06-11' # Sat
          },
        }
      },
    }
  },

  'Gelibolu Peace Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    CITY => 'Gelibolu',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
            major => 'MATCH',
            DATE_START => '2007-04-22', # Sun
            DATE_END => '2007-04-23' # Mon
          },
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          },
        }
      },
    }
  },

  'Goksu-Yalikavak Pairs',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            major => 'SESSION',
            DATE_START => '2009-07-17', # Fri
            DATE_END => '2009-07-18' # Sat
          } 
        }
      },
    }
  },

  'Istanbul Summer Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            DATE_START => '2014-05-30', # Fri
            DATE_END => '2014-06-01' # Sun
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2016-06-04', # Sat
            DATE_END => '2016-06-05' # Sun
          } 
        }
      },
    }
  },

  'Istanbul Winter Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            major => 'SEGMENT',
            DATE_START => '2006-02-13', # Mon
            DATE_END => '2006-02-13' # Mon
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
            major => 'SEGMENT',
            DATE_START => '2010-02-19', # Fri
            DATE_END => '2010-02-19' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-02-20', # Sat
            DATE_END => '2010-02-21' # Sun
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
            DATE_START => '2011-02-18', # Fri
            DATE_END => '2011-02-20' # Sun
          } 
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-02-10', # Fri
            DATE_END => '2012-02-12' # Sun
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-02-16', # Sat
            DATE_END => '2013-02-17' # Sun
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-02-08', # Sat
            DATE_END => '2014-02-09' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-01-24', # Sat
            DATE_END => '2015-01-31' # Sat
          } 
        }
      },
      '2016' =>
      {

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-01-30', # Sat
            DATE_END => '2016-01-31' # Sun
          } 
        }
      },
    }
  },

  'Izmir Teams Cup',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            major => 'ROUND',
            DATE_START => '2009-09-19', # Sat
            DATE_END => '2009-09-21' # Mon
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2009-09-22', # Tue
            DATE_END => '2009-09-22' # Tue
          } 
        }
      },
    }
  },

  'Izmir Winter Teams Cup',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
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
            major => 'ROUND',
            DATE_START => '2010-02-27', # Sat
            DATE_END => '2010-02-28' # Sun
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
            STAGE => 'Playoff',
            major => 'ROUND',
            DATE_START => '2013-02-19', # Tue
            DATE_END => '2013-02-19' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'ROUND',
            DATE_START => '2013-03-02', # Sat
            DATE_END => '2013-03-03' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-01-25', # Sun
            DATE_END => '2015-01-25' # Sun
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-02-07', # Sun
            DATE_END => '2016-02-07' # Sun
          } 
        }
      },
    }
  },

  'Lüleburgaz Liberation Cup',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
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
          'SINGLE' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-11-08', # Sun
            DATE_END => '2015-11-08' # Sun
          },
        }
      },
    }
  },

  'Marmara Inter-Club Championship',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    REGION => 'Marmara',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
            major => 'ROUND',
            DATE_START => '2012-04-28', # Sat
            DATE_END => '2012-04-29' # Sun
          },
        }
      },
    }
  },

  'Mersin Open Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Mersin Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-25', # Sun
            DATE_END => '2011-09-25' # Sun
          },
        }
      },
    }
  },

  'Mersin Open Patton Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    REGION => 'Mersin',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'Patton',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Mersin Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-23', # Fri
            DATE_END => '2011-09-23' # Fri
          },
        }
      },
      '2013' =>
      {
        MEET => 'Mersin Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-09-20', # Fri
            DATE_END => '2013-09-20' # Fri
          },
        }
      },
      '2014' =>
      {
        MEET => 'Mersin Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-09-12', # Fri
            DATE_END => '2014-09-12' # Fri
          },
        }
      },
      '2015' =>
      {
        MEET => 'Mersin Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-11', # Fri
            DATE_END => '2015-09-11' # Fri
          },
        }
      },
    }
  },

  'Murat Kilercioglu Turkish Spring Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            DATE_START => '2011-04-28', # Thu
            DATE_END => '2011-04-28' # Thu
          } 
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-04-30', # Mon
            DATE_END => '2012-04-30' # Mon
          } 
        }
      },
    }
  },

  'Necmettin Sunget Teams Cup',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-11-08', # Sun
            DATE_END => '2009-11-08' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-11-08', # Sun
            DATE_END => '2009-11-08' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-11-08', # Sun
            DATE_END => '2009-11-08' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-07', # Sun
            DATE_END => '2010-11-07' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-07', # Sun
            DATE_END => '2010-11-07' # Sun
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-11-07', # Sun
            DATE_END => '2010-11-07' # Sun
          } 
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-12-11', # Sun
            DATE_END => '2011-12-11' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-11', # Sun
            DATE_END => '2011-12-11' # Sun
          } 
        }
      },
    }
  },

  'Salvador Assael IMP Pairs',
  {
    # https://bridgescanner.com/event/salvador-assael-aegean-pair-championship-2023

    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP', # Really IAF, but hard to get through the code
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
            major => 'SESSION',
            DATE_START => '2013-06-04', # Tue
            DATE_END => '2013-06-05' # Wed
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-06-06', # Thu
            DATE_END => '2013-06-06' # Thu
          },
        }
      },
      '2015' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-06-01', # Mon
            DATE_END => '2015-06-02' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-06-03', # Wed
            DATE_END => '2015-06-04' # Thu
          },
        }
      },
    }
  },

  'Salvador Assael Pro-Am Pairs',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Pro-Am',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-05-20', # Sun
            DATE_END => '2012-05-20' # Sun
          },
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-06-02', # Sun
            DATE_END => '2013-06-03' # Mon
          },
        }
      },
      '2014' =>
      {
        MEET => 'Assael Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-06-04', # Wed
            DATE_END => '2014-06-04' # Wed
          },
        }
      },

    }
  },

  'Sivrioglu BAM Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'Sivrioglu Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            DATE_START => '2016-02-07', # Sun
            DATE_END => '2016-02-07' # Sun
          },
        }
      },
    }
  },

  'Solakoglu IMP Pairs',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Assael Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-06-03', # Tue
            DATE_END => '2014-06-06' # Fri
          },
        }
      },
    }
  },

  'Thrace Cup League',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    REGION => 'Thrace',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
            major => 'ROUND',
            DATE_START => '2014-05-18', # Sun
            DATE_END => '2014-05-18' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-19', # Mon
            DATE_END => '2014-05-19' # Mon
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-07-11', # Fri
            DATE_END => '2014-07-13' # Sun
          },
        }
      },
      '2015' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-16', # Sat
            DATE_END => '2015-05-19' # Tue
          },
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-06-05', # Sun
            DATE_END => '2016-06-05' # Sun
          },
        }
      },
    }
  },

  'Turkish-Greek Open Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Turkish-Greek Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-09', # Fri
            DATE_END => '2011-09-10' # Sat
          },
        }
      },
    }
  },

  'Turkish-Greek Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Turkish-Greek Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-09-24', # Fri
            DATE_END => '2010-09-24' # Fri
          },
        }
      },
      '2011' =>
      {
        MEET => 'Turkish-Greek Friendship Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-11', # Sun
            DATE_END => '2011-09-12' # Mon
          },
        }
      },
    }
  },

  'Turkish Club Championship',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Interclub',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=7&year=2009
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=8&year=2009
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-07-31', # Fri
            DATE_END => '2009-08-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-08-02', # Sun
            DATE_END => '2009-08-03' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-03', # Mon
            DATE_END => '2009-08-04' # Tue
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-04', # Tue
            DATE_END => '2009-08-04' # Tue
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-05', # Wed
            DATE_END => '2009-08-05' # Wed
          } 
        }
      },
      '2010' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=8&year=2010
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-08-27', # Fri
            DATE_END => '2010-08-28' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-08-28', # Sat
            DATE_END => '2010-08-29' # Sun
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-08-29', # Sun
            DATE_END => '2010-08-30' # Mon
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-08-30', # Mon
            DATE_END => '2010-08-30' # Mon
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-08-31', # Tue
            DATE_END => '2010-08-31' # Tue
          } 
        }
      },
      '2011' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=8&year=2011
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-08-19', # Fri
            DATE_END => '2011-08-20' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2011-08-20', # Sat
            DATE_END => '2011-08-21' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-21', # Sun
            DATE_END => '2011-08-22' # Mon
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-22', # Mon
            DATE_END => '2011-08-22' # Mon
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-08-23', # Tue
            DATE_END => '2011-08-23' # Tue
          } 
        }
      },
      '2012' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=8&year=2012
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=9&year=2012
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-27', # Sun
            DATE_END => '2012-05-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-08-30', # Thu
            DATE_END => '2012-08-31' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-08-31', # Fri
            DATE_END => '2012-09-01' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-09-01', # Sat
            DATE_END => '2012-09-02' # Sun
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-09-02', # Sun
            DATE_END => '2012-09-02' # Sun
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-09-03', # Mon
            DATE_END => '2012-09-03' # Mon
          } 
        }
      },
      '2013' =>
      {
        # https://clubs.vugraph.com/tbricfed/calendar.php?month=8&year=2013
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            DATE_START => '2013-02-19', # Tue
            DATE_END => '2013-02-19' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            DATE_START => '2013-07-12', # Fri
            DATE_END => '2013-07-14' # Sun
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'SEGMENT',
            DATE_START => '2013-08-24', # Sat
            DATE_END => '2013-08-25' # Sun
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2013-08-25', # Sun
            DATE_END => '2013-08-26' # Mon
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-08-26', # Mon
            DATE_END => '2013-08-27' # Tue
          },
          'C5' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-27', # Tue
            DATE_END => '2013-08-28' # Wed
          },
          'C6' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-28', # Wed
            DATE_END => '2013-08-28' # Wed
          },
          'C7' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-29', # Thu
            DATE_END => '2013-08-29' # Thu
          } 
        }
      },
      '2014' =>
      {
        # https://clubs.vugraph.com/tbricfed/calendar.php?month=8&year=2014
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-08-03', # Sun
            DATE_END => '2014-08-04' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-08-05', # Tue
            DATE_END => '2014-08-05' # Tue
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-08-05', # Tue
            DATE_END => '2014-08-06' # Wed
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-06', # Wed
            DATE_END => '2014-08-07' # Thu
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-07', # Thu
            DATE_END => '2014-08-07' # Thu
          },
          'C5' => 
          {
            YEAR => 2014,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2014-08-08', # Fri
            DATE_END => '2014-08-08' # Fri
          },
          'C6' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-08-08', # Fri
            DATE_END => '2014-08-08' # Fri
          } 
        }
      },
      '2015' =>
      {
        # https://clubs.vugraph.com/tbricfed/calendar.php?month=8&year=2015
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-17', # Sun
            DATE_END => '2015-05-19' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Rof64',
            DATE_START => '2015-08-22', # Sat
            DATE_END => '2015-08-23' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Rof32',
            DATE_START => '2015-08-24', # Mon
            DATE_END => '2015-08-24' # Mon
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            DATE_START => '2015-08-24', # Mon
            DATE_END => '2015-08-25' # Tue
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-25', # Tue
            DATE_END => '2015-08-26' # Wed
          },
          'C5' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-26', # Wed
            DATE_END => '2015-08-26' # Wed
          },
          'C6' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-27', # Thu
            DATE_END => '2015-08-27' # Thu
          } 
        }
      },
      '2016' =>
      {

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'SEGMENT',
            DATE_START => '2016-08-26', # Fri
            DATE_END => '2016-08-28' # Sun
          } 
        }
      },
    }
  },

  'Turkish East Mediterranean Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-05-25', # Sat
            DATE_END => '2013-05-26' # Sun
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-06-28', # Sat
            DATE_END => '2014-06-29' # Sun
          } 
        }
      },
    }
  },

  'Turkish Junior Pairs',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2012' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=2&year=2012
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-02-03', # Fri
            DATE_END => '2012-02-03' # Fri
          } 
        }
      },
    }
  },

  'Turkish Mixed Team Trials',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=7&year=2016
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-10', # Sun
            DATE_END => '2016-07-10' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-10', # Sun
            DATE_END => '2016-07-10' # Sun
          } 
        }
      },
    }
  },

  'Turkish Mixed Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=12&year=2012
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-12-19', # Wed
            DATE_END => '2012-12-21' # Fri
          } 
        }
      },
      '2013' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=12&year=2013
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-12-18', # Wed
            DATE_END => '2013-12-20' # Fri
          } 
        }
      },
      '2014' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=12&year=2014
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-12-10', # Wed
            DATE_END => '2014-12-12' # Fri
          } 
        }
      },
    }
  },

  'Turkish Open Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=4&year=2009
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            MOVEMENT => 'Swiss',
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2009-04-26', # Sun
            DATE_END => '2009-04-30' # Thu
          } 
        }
      },
      '2010' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=4&year=2010
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2010-05-02', # Sun
            DATE_END => '2010-05-06' # Thu
          } 
        }
      },
      '2011' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2011
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            MOVEMENT => 'Swiss',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2011-05-10', # Tue
            DATE_END => '2011-05-11' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            MOVEMENT => 'Danish',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-12', # Thu
            DATE_END => '2011-05-12' # Thu
          } 
        }
      },
      '2012' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2012
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            MOVEMENT => 'Swiss',
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2012-05-08', # Tue
            DATE_END => '2012-05-09' # Wed
          },
          'C1' => 
          {
            YEAR => 2012,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2012-05-10', # Thu
            DATE_END => '2012-05-10' # Thu
          } 
        }
      },
      '2013' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2013
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-05-04', # Sat
            DATE_END => '2013-05-07' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2013-05-07', # Tue
            DATE_END => '2013-05-08' # Wed
          } 
        }
      },
      '2014' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2014
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-05-04', # Sun
            DATE_END => '2014-05-05' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-05-06', # Tue
            DATE_END => '2014-05-06' # Tue
          },
          'C2' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2014-05-07', # Wed
            DATE_END => '2014-05-07' # Wed
          } 
        }
      },
      '2015' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2015
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-05-04', # Mon
            DATE_END => '2015-05-06' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2015-05-07', # Thu
            DATE_END => '2015-05-07' # Thu
          } 
        }
      },
      '2016' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2016
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2016-05-02', # Mon
            DATE_END => '2016-05-02' # Mon
          },
          'C1' => 
          {
            YEAR => 2016,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2016-05-03', # Tue
            DATE_END => '2016-05-03' # Tue
          } 
        }
      },
    }
  },

  'Turkish Open Pair Trials',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      # http://clubs.vugraph.com/tbricfed/calendar.php?month=4&year=2010
      '2010' =>
      {
        MEET => 'Turkish Open Trials',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-04-04', # Sun
            DATE_END => '2010-04-05' # Mon
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SESSION',
            DATE_START => '2010-04-06', # Tue
            DATE_END => '2010-04-07' # Wed
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            DATE_START => '2010-04-08', # Thu
            DATE_END => '2010-04-09' # Fri
          } 
        }
      },
      '2016' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=7&year=2016
        MEET => 'Turkish Open Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-07-01', # Fri
            DATE_END => '2016-07-03' # Sun
          } 
        }
      },
    }
  },

  'Turkish Open Team Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=10&year=2011
        MEET => 'Turkish Open Trials',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-21', # Fri
            DATE_END => '2011-10-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-22', # Sat
            DATE_END => '2011-10-23' # Sun
          } 
        }
      },
      '2012' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=7&year=2012
        MEET => 'Turkish Open Trials',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-11', # Wed
            DATE_END => '2012-07-12' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-12', # Thu
            DATE_END => '2012-07-13' # Fri
          } 
        }
      },
    }
  },

  'Turkish Swiss Mixed Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    MOVEMENT => 'Swiss',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=12&year=2015
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-12-16', # Wed
            DATE_END => '2015-12-18' # Fri
          } 
        }
      },
    }
  },

  'Turkish U16 Pairs',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U16',

    EDITIONS =>
    {
      '2016' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=7&year=2016
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            DATE_START => '2016-07-02', # Sat
            DATE_END => '2016-07-02' # Sat
          } 
        }
      },
    }
  },

  'Turkish University Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U31',

    EDITIONS =>
    {
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-03-30', # Fri
            DATE_END => '2012-03-30' # Fri
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-03-28', # Thu
            DATE_END => '2013-03-28' # Thu
          } 
        }
      },
    }
  },

  'Turkish Winter Open Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-03-19', # Mon
            DATE_END => '2007-03-19' # Mon
          },
        }
      },
      '2008' =>
      {
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          },
        }
      },
      '2009' =>
      {
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-03-06', # Fri
            DATE_END => '2009-03-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2009-03-08', # Sun
            DATE_END => '2009-03-08' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-03-08', # Sun
            DATE_END => '2009-03-09' # Mon
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-09', # Mon
            DATE_END => '2009-03-10' # Tue
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-10', # Tue
            DATE_END => '2009-03-10' # Tue
          },
          'C5' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-11', # Wed
            DATE_END => '2009-03-11' # Wed
          },
        }
      },
      '2010' =>
      {
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-03-05', # Fri
            DATE_END => '2010-03-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2010-03-07', # Sun
            DATE_END => '2010-03-07' # Sun
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-03-07', # Sun
            DATE_END => '2010-03-08' # Mon
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-08', # Mon
            DATE_END => '2010-03-09' # Tue
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-09', # Tue
            DATE_END => '2010-03-09' # Tue
          },
          'C5' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-03-10', # Wed
            DATE_END => '2010-03-10' # Wed
          },
        }
      },
      '2011' =>
      {
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-03-04', # Fri
            DATE_END => '2011-03-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2011-03-06', # Sun
            DATE_END => '2011-03-06' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2011-03-06', # Sun
            DATE_END => '2011-03-07' # Mon
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-07', # Mon
            DATE_END => '2011-03-08' # Tue
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            DATE_START => '2011-03-08', # Tue
            DATE_END => '2011-03-08' # Tue
          },
          'C5' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-03-09', # Wed
            DATE_END => '2011-03-09' # Wed
          },
        }
      },
      '2012' =>
      {
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-02-23', # Thu
            DATE_END => '2012-02-24' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2012-02-24', # Fri
            DATE_END => '2012-02-25' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-02-25', # Sat
            DATE_END => '2012-02-26' # Sun
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-26', # Sun
            DATE_END => '2012-02-27' # Mon
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-27', # Mon
            DATE_END => '2012-02-27' # Mon
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-28', # Tue
            DATE_END => '2012-02-28' # Tue
          },
        }
      },
      '2013' =>
      {
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-03-10', # Sun
            DATE_END => '2013-03-11' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2013-03-12', # Tue
            DATE_END => '2013-03-12' # Tue
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2013-03-12', # Tue
            DATE_END => '2013-03-13' # Wed
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-03-13', # Wed
            DATE_END => '2013-03-14' # Thu
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-14', # Thu
            DATE_END => '2013-03-14' # Thu
          },
          'C5' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-14', # Thu
            DATE_END => '2013-03-15' # Fri
          },
          'C6' => 
          {
            YEAR => 2013,
            STAGE => 'Bronze',
            DATE_START => '2013-03-16', # Sat
            DATE_END => '2013-03-16' # Sat
          },
          'C7' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-15', # Fri
            DATE_END => '2013-03-16' # Sat
          },
        }
      },
      '2014' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=3&year=2014
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-03-01', # Sat
            DATE_END => '2014-03-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2014-03-03', # Mon
            DATE_END => '2014-03-03' # Mon
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-03-03', # Mon
            DATE_END => '2014-03-04' # Tue
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-03-04', # Tue
            DATE_END => '2014-03-05' # Wed
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-03-05', # Wed
            DATE_END => '2014-03-05' # Wed
          },
          'C5' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-03-06', # Thu
            DATE_END => '2014-03-06' # Thu
          },
          'C6' => 
          {
            YEAR => 2014,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2014-03-06', # Thu
            DATE_END => '2014-03-06' # Thu
          },
          'C7' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-06', # Thu
            DATE_END => '2014-03-07' # Fri
          } 
        }
      },
      '2015' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=2&year=2015
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=3&year=2015
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-02-28', # Sat
            DATE_END => '2015-03-02' # Mon
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Rof64',
            DATE_START => '2015-03-02', # Mon
            DATE_END => '2015-03-03' # Tue
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Rof32',
            DATE_START => '2015-03-03', # Tue
            DATE_END => '2015-03-04' # Wed
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            DATE_START => '2015-03-04', # Wed
            DATE_END => '2015-03-05' # Thu
          },
          'C5' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-05', # Thu
            DATE_END => '2015-03-05' # Thu
          },
          'C6' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-06', # Fri
            DATE_END => '2015-03-06' # Fri
          },
          'C7' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-06', # Fri
            DATE_END => '2015-03-07' # Sat
          } 
        }
      },
      '2016' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=3&year=2016
        MEET => 'Turkish Winter Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-03-09', # Wed
            DATE_END => '2016-03-10' # Thu
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-10', # Thu
            DATE_END => '2016-03-10' # Thu
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-11', # Fri
            DATE_END => '2016-03-11' # Fri
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-11', # Fri
            DATE_END => '2016-03-12' # Sat
          } 
        }
      },
    }
  },

  'Turkish Winter Women Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-03-17', # Sat
            DATE_END => '2012-03-18' # Sun
          },
        }
      },
      '2013' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=2&year=2013
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-02-23', # Sat
            DATE_END => '2013-02-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-02-23', # Sat
            DATE_END => '2013-02-24' # Sun
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-02-24', # Sun
            DATE_END => '2013-02-24' # Sun
          } 
        }
      },
      '2014' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=2&year=2014
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'SEGMENT',
            DATE_START => '2014-02-21', # Fri
            DATE_END => '2014-02-23' # Sun
          } 
        }
      },
      '2015' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=2&year=2015
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-02-20', # Fri
            DATE_END => '2015-02-22' # Sun
          } 
        }
      },
    }
  },

  'Turkish Women Pair Trials',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=4&year=2010
        MEET => 'Turkish Women Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2010-04-05', # Mon
            DATE_END => '2010-04-08' # Thu
          } 
        }
      },
    }
  },

  'Turkish Women Team Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=10&year=2011
        MEET => 'Turkish Women Trials',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-21', # Fri
            DATE_END => '2011-10-22' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-22', # Sat
            DATE_END => '2011-10-23' # Sun
          } 
        }
      },
    }
  },

  'Turkish Women Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=4&year=2009
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-04-25', # Sat
            DATE_END => '2009-04-28' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-04-30', # Thu
            DATE_END => '2009-04-30' # Thu
          } 
        }
      },
      '2010' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2010
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-05-01', # Sat
            DATE_END => '2010-05-06' # Thu
          } 
        }
      },
      '2014' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2014
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-05-06', # Tue
            DATE_END => '2014-05-06' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2014-05-07', # Wed
            DATE_END => '2014-05-07' # Wed
          } 
        }
      },
      '2015' =>
      {
        # http://clubs.vugraph.com/tbricfed/calendar.php?month=5&year=2015
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2015-05-07', # Thu
            DATE_END => '2015-05-07' # Thu
          } 
        }
      },
    }
  },

  'Western Mediterranean Club Teams',
  {
    ORGANIZATION => 'TBF',
    COUNTRY => 'Turkey',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
            major => 'ROUND',
            DATE_START => '2014-05-30', # Fri
            DATE_END => '2014-06-01' # Sun
          },
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_TURKEY, \%TOURNAMENTS_TURKEY, 'Turkey');
}

1;
