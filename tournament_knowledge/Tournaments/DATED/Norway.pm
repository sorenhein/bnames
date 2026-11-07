#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Norway;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_NORWAY =
(
  'Norwegian Bridge Festival' =>
  {
    # https://bridgefestival.no/resultater

    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-08-05', # Fri
        DATE_END => '2005-08-05' # Fri
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-08-06', # Sun
        DATE_END => '2006-08-09' # Wed
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-08-05', # Sun
        DATE_END => '2007-08-05' # Sun
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-08-12', # Tue
        DATE_END => '2008-08-12' # Tue
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-08-02', # Sun
        DATE_END => '2009-08-09' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-07-31', # Sat
        DATE_END => '2010-08-07' # Sat
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-07-30', # Sat
        DATE_END => '2011-08-06' # Sat
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-08-04', # Sat
        DATE_END => '2012-08-11' # Sat
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-08-03', # Sat
        DATE_END => '2013-08-12' # Mon
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-08-02', # Sat
        DATE_END => '2014-08-10' # Sun
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-07-29', # Fri
        DATE_END => '2016-08-04' # Thu
      },
      '2017' =>
      {
        YEAR => 2017,
        DATE_START => '2017-08-02', # Wed
        DATE_END => '2017-08-13' # Sun
      },
      '2018' =>
      {
        YEAR => 2018,
        DATE_START => '2018-08-03', # Fri
        DATE_END => '2018-08-11' # Sat
      },
      '2019' =>
      {
        YEAR => 2019,
        DATE_START => '2019-08-04', # Sun
        DATE_END => '2019-08-10' # Sat
      },
      '2020' =>
      {
        YEAR => 2020,
        DATE_START => '2020-08-03', # Mon
        DATE_END => '2020-08-08' # Sat
      },
      '2021' =>
      {
        YEAR => 2021,
        DATE_START => '2021-08-02', # Mon
        DATE_END => '2021-08-07' # Sat
      },
      '2022' =>
      {
        YEAR => 2022,
        DATE_START => '2022-08-07', # Sun
        DATE_END => '2022-08-13' # Sat
      },
      '2023' =>
      {
        YEAR => 2023,
        DATE_START => '2023-08-06', # Sun
        DATE_END => '2023-08-12' # Sat
      },
      '2024' =>
      {
        YEAR => 2024,
        DATE_START => '2024-08-02', # Fri
        DATE_END => '2024-08-12' # Mon
      },
    }
  }
);

my %TOURNAMENTS_NORWAY =
(
  'Bergen Grand Open Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    CITY => 'Bergen',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-02-01', # Wed
            DATE_END => '2006-02-01' # Wed
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
            major => 'SEGMENT',
            DATE_START => '2007-01-24', # Wed
            DATE_END => '2007-01-24' # Wed
          } 
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'SESSION',
            DATE_START => '2008-01-22', # Tue
            DATE_END => '2008-01-22' # Tue
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-01-23', # Sat
            DATE_END => '2010-01-24' # Sun
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
            major => 'SEGMENT',
            DATE_START => '2011-01-22', # Sat
            DATE_END => '2011-01-23' # Sun
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
            major => 'SESSION',
            DATE_START => '2014-01-18', # Sat
            DATE_END => '2014-01-19' # Sun
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
            major => 'SESSION',
            DATE_START => '2016-04-16', # Sat
            DATE_END => '2016-04-17' # Sun
          } 
        }
      },
    }
  },

  'FX Securities Pairs Cup' =>
  {
    ORGANIZATION => 'NBF',
    SPONSOR => 'FX Securities',
    COUNTRY => 'Norway',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-10-15', # Sat
            DATE_END => '2011-10-16' # Sun
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
            major => 'SEGMENT',
            DATE_START => '2012-10-20', # Sat
            DATE_END => '2012-10-21' # Sun
          } 
        }
      },
    }
  },

  "Jessheim New Year's Pairs" =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    CITY => 'Jessheim',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            major => 'SESSION',
            DATE_START => '2015-01-02', # Fri
            DATE_END => '2015-01-02' # Fri
          } 
        }
      },
    }
  },

  "Jessheim New Year's Teams" =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    CITY => 'Jessheim',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    MOVEMENT => 'Swiss',
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
            DATE_START => '2015-01-03', # Sat
            DATE_END => '2015-01-04' # Sun
          } 
        }
      },
    }
  },




  'Codan Teams Cup' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
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
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-05-28', # Thu
            DATE_END => '2015-05-30' # Sat
          } 
        }
      },
    }
  },

  'Farmen Invitational' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            major => 'MATCH',
            DATE_START => '2005-10-21', # Fri
            DATE_END => '2005-10-23' # Sun
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
            major => 'MATCH',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
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
            major => 'MATCH',
            DATE_START => '2007-08-27', # Mon
            DATE_END => '2007-08-27' # Mon
          } 
        }
      },
    }
  },

  'FOSS Grand Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    CITY => 'Fredrikstad',
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
            DATE_START => '2009-08-29', # Sat
            DATE_END => '2009-08-30' # Sun
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-08-28', # Sat
            DATE_END => '2010-08-29' # Sun
          } 
        }
      },
      '2011' =>
      {
        # https://www.bridge.no/var/ruter/html/0219/2011-09-04-foss2.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2011-09-03', # Sat
            DATE_END => '2011-09-04' # Sun
          } 
        }
      },
      '2012' =>
      {
        # https://www.bridge.no/var/ruter/html/0219/2012-09-09-foss2.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-09-08', # Sat
            DATE_END => '2012-09-09' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://www.bridge.no/var/ruter/html/0219/2013-09-08-fosssndag.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-09-07', # Sat
            DATE_END => '2013-09-08' # Sun
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
            major => 'SESSION',
            DATE_START => '2014-09-06', # Sat
            DATE_END => '2014-09-07' # Sun
          } 
        }
      },
    }
  },

  'Gardermoen Airport Hotel Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    LOCALITY => 'Gardermoen',
    ORIGIN => 'National',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-01-08', # Sat
            DATE_END => '2011-01-08' # Sat
          } 
        }
      },
    }
  },

  'Gardermoen Airport Hotel Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    LOCALITY => 'Gardermoen',
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
            major => 'MATCH',
            DATE_START => '2011-01-09', # Sun
            DATE_END => '2011-01-09' # Sun
          } 
        }
      },
    }
  },

  'Marit Sveaas Open Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            major => 'SESSION',
            DATE_START => '2016-08-05', # Fri
            DATE_END => '2016-08-07' # Sun
          } 
        }
      },
    }
  },

  'Mo i Rana Ladies Invitational' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'Invitational',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        # https://www.bridge.no/Turneringer/Turneringsresultater/Tidligere-aars-resultater/Resultater-2008-09
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'SESSION',
            DATE_START => '2008-11-05', # Wed
            DATE_END => '2008-11-05' # Wed
          } 
        }
      },
    }
  },

  'Namsos Pairs Cup' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-09-17', # Sat
            DATE_END => '2011-09-18' # Sun
          } 
        }
      },
    }
  },

  'Norwegian Club Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-06-01', # Wed
            DATE_END => '2011-06-01' # Wed
          } 
        }
      },
    }
  },

  'Norwegian Club Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'Interclub',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2004-05-20', # Thu
            DATE_END => '2004-05-23' # Sun
          } 
        }
      },
      '2005' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-05-05', # Thu
            DATE_END => '2005-05-07' # Sat
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
            minor => 'HALF',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
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
            minor => 'HALF',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
          } 
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          } 
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2009-05-20', # Wed
            DATE_END => '2009-05-24' # Sun
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2010-05-13', # Thu
            DATE_END => '2010-05-16' # Sun
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
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2011-03-27', # Sun
            DATE_END => '2011-03-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-06-02', # Thu
            DATE_END => '2011-06-05' # Sun
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
            minor => 'SEGMENT',
            DATE_START => '2012-05-25', # Fri
            DATE_END => '2012-05-28' # Mon
          } 
        }
      },
      '2013' =>
      {
        # https://www.bridge.no/var/ruter/html/1611/2013-05-09-11.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-05-09', # Thu
            DATE_END => '2013-05-11' # Sat
          } 
        }
      },
      '2014' =>
      {
        # https://www.bridge.no/var/ruter/html/9901/nmlag2014.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2014-05-28', # Wed
            DATE_END => '2014-05-31' # Sat
          } 
        }
      },
      '2016' =>
      {
        # https://www.bridge.no/var/ruter/html/9901/finalenmklubblag2016.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-06-02', # Thu
            DATE_END => '2016-06-05' # Sun
          } 
        }
      },
    }
  },

  'Norwegian Corporate Championship' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'Corporate',
    ZONE => 'Europe',
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
            DATE_START => '2016-03-05', # Sat
            DATE_END => '2016-03-06' # Sun
          } 
        }
      },
    }
  },

  'Norwegian Mixed Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'SESSION',
            DATE_START => '2005-08-05', # Fri
            DATE_END => '2005-08-05' # Fri
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-08-02', # Sun
            DATE_END => '2009-08-03' # Mon
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-07-31', # Sat
            DATE_END => '2010-08-01' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-07-30', # Sat
            DATE_END => '2011-07-30' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-08-04', # Sat
            DATE_END => '2012-08-05' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-08-03', # Sat
            DATE_END => '2013-08-04' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-08-02', # Sat
            DATE_END => '2014-08-03' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            DATE_START => '2016-07-29', # Fri
            DATE_END => '2016-07-30' # Sat
          } 
        }
      },
    }
  },

  'Norwegian Mixed Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-08-03', # Sun
            DATE_END => '2014-08-04' # Mon
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-07-31', # Sun
            DATE_END => '2016-08-01' # Mon
          } 
        }
      },
    }
  },

  'Norwegian Open IMP Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-08-08', # Tue
            DATE_END => '2006-08-08' # Tue
          } 
        }
      },
    }
  },

  'Norwegian Open Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            DATE_START => '2005-08-05', # Fri
            DATE_END => '2005-08-05' # Fri
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2009-08-05', # Wed
            DATE_END => '2009-08-07' # Fri
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2010-08-03', # Tue
            DATE_END => '2010-08-05' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2011-08-02', # Tue
            DATE_END => '2011-08-04' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-08-07', # Tue
            DATE_END => '2012-08-09' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-08-06', # Tue
            DATE_END => '2013-08-08' # Thu
          } 
        }
      },
      '2014A' =>
      {
        MEET => 'Norwegian Bridge Festival',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            DATE_START => '2014-08-08', # Fri
            DATE_END => '2014-08-09' # Sat
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
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2014-09-19', # Fri
            DATE_END => '2014-09-21' # Sun
          } 
        }
      },
      '2015' =>
      {
        # No festival in 2015
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-09-18', # Fri
            DATE_END => '2015-09-20' # Sun
          } 
        }
      },
    }
  },

  'Norwegian Open Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'MATCH',
            DATE_START => '2005-08-05', # Fri
            DATE_END => '2005-08-05' # Fri
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Just a guess
            YEAR => 2006,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2006-08-06', # Sun
            DATE_END => '2006-08-06' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            DATE_START => '2014-08-06', # Wed
            DATE_END => '2014-08-06' # Wed
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            DATE_START => '2014-08-07', # Thu
            DATE_END => '2014-08-07' # Thu
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            DATE_START => '2014-08-07', # Thu
            DATE_END => '2014-08-07' # Thu
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            DATE_START => '2014-08-08', # Fri
            DATE_END => '2014-08-08' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-08-01', # Mon
            DATE_END => '2016-08-02' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Rof16',
            major => 'ROUND',
            DATE_START => '2016-08-02', # Tue
            DATE_END => '2016-08-03' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-03', # Wed
            DATE_END => '2016-08-03' # Wed
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-03', # Wed
            DATE_END => '2016-08-04' # Thu
          },
          'C4' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            DATE_START => '2016-08-04', # Thu
            DATE_END => '2016-08-04' # Thu
          }
        }
      },
    }
  },

  'Norwegian Premier League' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004-05' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-11-13', # Sat
            DATE_END => '2004-11-13' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-02-05', # Sat
            DATE_END => '2005-02-06' # Sun
          },
          'C2' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2005-03-26', # Sat
            DATE_END => '2005-03-27' # Sun
          }
        }
      },
      '2005-06' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-11-14', # Mon
            DATE_END => '2005-11-14' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2006-02-07', # Tue
            DATE_END => '2006-02-07' # Tue
          },
        }
      },
      '2006-07' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-13' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2007-02-11', # Sun
            DATE_END => '2007-02-11' # Sun
          },
          'C2' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-03-27', # Tue
            DATE_END => '2007-03-27' # Tue
          } 
        }
      },
      '2007-08' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2007-11-25', # Sun
            DATE_END => '2007-11-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-02-12', # Tue
            DATE_END => '2008-02-12' # Tue
          } 
        }
      },
      '2008-09' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2009-02-13', # Fri
            DATE_END => '2009-02-15' # Sun
          } 
        }
      },
      '2009-10' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2009-10-23', # Fri
            DATE_END => '2009-10-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-01-07', # Thu
            DATE_END => '2010-01-07' # Thu
          },
          'C2' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-02-12', # Fri
            DATE_END => '2010-02-14' # Sun
          } 
        }
      },
      '2010-11' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2010-10-22', # Fri
            DATE_END => '2010-10-24' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-11-07', # Sun
            DATE_END => '2010-11-07' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2011-02-11', # Fri
            DATE_END => '2011-02-13' # Sun
          },
          'C3' => 
          {
            # ?
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-04-08', # Fri
            DATE_END => '2011-04-08' # Fri
          } 
        }
      },
      '2011-12' =>
      {
        # https://www.bridge.no/Turneringer/NM-for-klubblag/Tidligere-aar/2011-12
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-11-04', # Fri
            DATE_END => '2011-11-07' # Mon
          },
          'C1' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-02-11', # Sat
            DATE_END => '2012-02-12' # Sun
          } 
        }
      },
      '2012-13' =>
      {
        # https://www.bridge.no/Turneringer/NM-for-klubblag/Tidligere-aar/2012-13
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-11-02', # Fri
            DATE_END => '2012-11-04' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-02-09', # Sat
            DATE_END => '2013-02-10' # Sun
          } 
        }
      },
      '2013-14' =>
      {
        # https://www.bridge.no/Turneringer/NM-for-klubblag/Tidligere-aar/2013-14
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-11-01', # Fri
            DATE_END => '2013-11-03' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-02-08', # Sat
            DATE_END => '2014-02-09' # Sun
          } 
        }
      },
      '2014-15' =>
      {
        # https://www.bridge.no/Turneringer/NM-for-klubblag/Tidligere-aar/2014-15
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-11-07', # Fri
            DATE_END => '2014-11-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-02-07', # Sat
            DATE_END => '2015-02-08' # Sun
          } 
        }
      },
      '2015-16' =>
      {
        # https://www.bridge.no/Turneringer/NM-for-klubblag/Tidligere-aar/2015-16
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-11-06', # Fri
            DATE_END => '2015-11-08' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-02-06', # Sat
            DATE_END => '2016-02-07' # Sun
          } 
        }
      },

      # https://www.bridge.no/Turneringer/NM-for-klubblag/Tidligere-aar
    }
  },

  'Norwegian Senior Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-03-06', # Sun
            DATE_END => '2016-03-06' # Sun
          } 
        }
      },
    }
  },

  'Norwegian Swiss Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    MOVEMENT => 'Swiss',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'SESSION',
            DATE_START => '2005-08-05', # Fri
            DATE_END => '2005-08-05' # Fri
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Norwegian Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-08-03', # Mon
            DATE_END => '2009-08-04' # Tue
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Norwegian Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-08-01', # Sun
            DATE_END => '2010-08-02' # Mon
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Norwegian Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-07-31', # Sun
            DATE_END => '2011-08-01' # Mon
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Norwegian Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-08-05', # Sun
            DATE_END => '2012-08-06' # Mon
          } 
        }
      },
      '2013' =>
      {
        # https://www.bridge.no/var/ruter/html/9901/2013monradpar.htm
        MEET => 'Norwegian Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-08-04', # Sun
            DATE_END => '2013-08-05' # Mon
          } 
        }
      },
    }
  },

  'Norwegian Swiss Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    MOVEMENT => 'Swiss',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'MATCH',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-08-05', # Sun
            DATE_END => '2007-08-05' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-08-12', # Tue
            DATE_END => '2008-08-12' # Tue
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-08-08', # Sat
            DATE_END => '2009-08-09' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-08-05', # Thu
            DATE_END => '2010-08-07' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-08-05', # Fri
            DATE_END => '2011-08-06' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-08-10', # Fri
            DATE_END => '2012-08-11' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-08-09', # Fri
            DATE_END => '2013-08-10' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Norwegian Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-08-05', # Tue
            DATE_END => '2014-08-06' # Wed
          } 
        }
      },
    }
  },

  'Norwegian Team Trials' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'SEGMENT',
            DATE_START => '2004-06-08', # Tue
            DATE_END => '2004-06-08' # Tue
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
            major => 'SEGMENT',
            DATE_START => '2016-05-07', # Sat
            DATE_END => '2016-05-08' # Sun
          } 
        }
      },
    }
  },

  'Norwegian Women Invitational Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
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
            DATE_START => '2009-10-31', # Sat
            DATE_END => '2009-10-31' # Sat
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-10-30', # Sat
            DATE_END => '2010-10-30' # Sat
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
            DATE_START => '2011-10-29', # Sat
            DATE_END => '2011-10-29' # Sat
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
            major => 'SESSION',
            DATE_START => '2012-10-27', # Sat
            DATE_END => '2012-10-27' # Sat
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
            major => 'SESSION',
            DATE_START => '2013-10-26', # Sat
            DATE_END => '2013-10-26' # Sat
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
            major => 'SESSION',
            DATE_START => '2014-10-25', # Sat
            DATE_END => '2014-10-25' # Sat
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
            major => 'SESSION',
            DATE_START => '2015-10-31', # Sat
            DATE_END => '2015-10-31' # Sat
          } 
        }
      },
    }
  },

  'Norwegian Women Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-03-08', # Sat
            DATE_END => '2014-03-09' # Sun
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
            major => 'ROUND',
            DATE_START => '2015-04-25', # Sat
            DATE_END => '2015-04-26' # Sun
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
            major => 'ROUND',
            DATE_START => '2016-03-05', # Sat
            DATE_END => '2016-03-06' # Sun
          } 
        }
      },
    }
  },


  'Olrud Easter Mixed Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
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
            major => 'SESSION',
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          } 
        }
      },
    }
  },

  'Olrud Easter Swiss Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Pairs',
    MOVEMENT => 'Swiss',
    SCORING => 'MP',
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
            major => 'SESSION',
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          } 
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-04-04', # Sat
            DATE_END => '2009-04-05' # Sun
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-03-27', # Sat
            DATE_END => '2010-03-28' # Sun
          } 
        }
      },
    }
  },

  'Olrud Easter Swiss Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            major => 'MATCH',
            DATE_START => '2005-03-25', # Fri
            DATE_END => '2005-03-25' # Fri
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
            major => 'MATCH',
            DATE_START => '2006-04-10', # Mon
            DATE_END => '2006-04-11' # Tue
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
            DATE_START => '2007-04-11', # Wed
            DATE_END => '2007-04-11' # Wed
          } 
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          } 
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-04-06', # Mon
            DATE_END => '2009-04-07' # Tue
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-03-29', # Mon
            DATE_END => '2010-03-30' # Tue
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
            major => 'MATCH',
            DATE_START => '2011-04-17', # Sun
            DATE_END => '2011-04-18' # Mon
          } 
        }
      },
      '2012' =>
      {
        # https://www.bridge.no/var/ruter/html/0124/2012-04-02.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            DATE_START => '2012-04-01', # Sun
            DATE_END => '2012-04-02' # Mon
          } 
        }
      },
      '2013' =>
      {
        # https://www.bridge.no/var/ruter/html/0124/2013-03-24.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-03-24', # Sun
            DATE_END => '2013-03-25' # Mon
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
            major => 'ROUND',
            DATE_START => '2014-04-13', # Sun
            DATE_END => '2014-04-14' # Mon
          } 
        }
      },
    }
  },

  'Rondane Pairs Cup' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        # Link broken
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-10-09', # Sat
            DATE_END => '2010-10-09' # Sat
          } 
        }
      },
      '2011' =>
      {
        # Link broken
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-10-08', # Sat
            DATE_END => '2011-10-08' # Sat
          } 
        }
      },
      '2012' =>
      {
        # Link broken
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-10-06', # Sat
            DATE_END => '2012-10-06' # Sat
          } 
        }
      },
      '2013' =>
      {
        # https://www.bridge.no/var/ruter/html/0535/rc2013.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-10-05', # Sat
            DATE_END => '2013-10-05' # Sat
          } 
        }
      },
      '2014' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-10-04', # Sat
            DATE_END => '2014-10-04' # Sat
          } 
        }
      },
    }
  },

  'Rondane Teams Cup' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
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
        # Link broken
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-10-10', # Sun
            DATE_END => '2010-10-10' # Sun
          } 
        }
      },
      '2011' =>
      {
        # Link broken
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-10-09', # Sun
            DATE_END => '2011-10-09' # Sun
          } 
        }
      },
      '2012' =>
      {
        # https://www.bridge.no/var/ruter/html/0535/rc2012.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-10-07', # Sun
            DATE_END => '2012-10-07' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://www.bridge.no/var/ruter/html/0535/rc2013lag.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-10-06', # Sun
            DATE_END => '2013-10-06' # Sun
          } 
        }
      },
      '2014' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-10-05', # Sun
            DATE_END => '2014-10-05' # Sun
          } 
        }
      },
    }
  },

  'Ragn-Sells International Open Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'Regional',
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
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-01-21', # Sat
            DATE_END => '2012-01-22' # Sun
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
            major => 'SESSION',
            DATE_START => '2013-01-19', # Sat
            DATE_END => '2013-01-20' # Sun
          } 
        }
      },
    }
  },

  'Rosfjord Swiss Teams' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
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
            minor => 'SEGMENT',
            DATE_START => '2012-04-05', # Thu
            DATE_END => '2012-04-05' # Thu
          } 
        }
      },
    }
  },

  'Ruter 7 Open Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SEGMENT',
            DATE_START => '2010-06-19', # Sat
            DATE_END => '2010-06-19' # Sat
          } 
        }
      },
      '2012' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-05-12', # Sat
            DATE_END => '2012-05-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-05-13', # Sun
            DATE_END => '2012-05-13' # Sun
          } 
        }
      },
      '2013' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-02' # Sun
          } 
        }
      },
    }
  },

  'Snåsa Pairs Cup' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-11-26', # Sat
            DATE_END => '2011-11-26' # Sat
          } 
        }
      },
    }
  },

  'Trondheim Pairs Cup' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            CITY => 'Trondheim',
            major => 'SESSION',
            DATE_START => '2011-05-07', # Sat
            DATE_END => '2011-05-07' # Sat
          } 
        }
      },
    }
  },

  'Trondheim Teams Cup' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
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
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            CITY => 'Trondheim',
            major => 'ROUND',
            DATE_START => '2011-05-08', # Sun
            DATE_END => '2011-05-08' # Sun
          } 
        }
      },
    }
  },

  'Vest-Agder Regional Team Championship' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    REGION => 'Vest-Agder',
    ORIGIN => 'Regional',
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
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-12-08', # Tue
            DATE_END => '2009-12-08' # Tue
          } 
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-10-19', # Tue
            DATE_END => '2010-10-19' # Tue
          } 
        }
      },
      '2012A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-01-13', # Fri
            DATE_END => '2012-01-13' # Fri
          } 
        }
      },
      '2012B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-11-21', # Wed
            DATE_END => '2012-11-21' # Wed
          } 
        }
      },
    }
  },

  'Willy Brown Memorial Pairs' =>
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-12-03', # Sat
            DATE_END => '2011-12-03' # Sat
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_NORWAY, \%TOURNAMENTS_NORWAY, 'Norway');
}

1;
