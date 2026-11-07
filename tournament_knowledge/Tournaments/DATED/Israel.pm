#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Israel;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# https://main.bridge.co.il/results/archive/12

my %MEETS_ISRAEL =
(
  'Israel Bridge Festival' =>
  {
    # http://www.ibf-festival.org/
    ORGANIZATION => 'IBF',
    CITY => 'Tel Aviv',
    COUNTRY => 'Israel',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2001' =>
      {
        ORDINAL => 35,
        YEAR => 2001,
        DATE_START => '2001-02-08', # Thu
        DATE_END => '2001-02-17' # Sat
      },
      '2003' =>
      {
        ORDINAL => 37,
        YEAR => 2003,
        DATE_START => '2003-02-13', # Thu
        DATE_END => '2003-02-22' # Sat
      },
      '2004' =>
      {
        ORDINAL => 38,
        YEAR => 2004,
        DATE_START => '2004-02-12', # Thu
        DATE_END => '2004-02-21' # Sat
      },
      '2006' =>
      {
        ORDINAL => 40,
        YEAR => 2006,
        DATE_START => '2006-02-09', # Thu
        DATE_END => '2006-02-19' # Sun
      },
      '2007' =>
      {
        ORDINAL => 41,
        YEAR => 2007,
        DATE_START => '2007-02-08', # Thu
        DATE_END => '2007-02-17' # Sat
      },
      '2009' =>
      {
        ORDINAL => 43,
        YEAR => 2009,
        DATE_START => '2009-02-05', # Thu
        DATE_END => '2009-02-14' # Sat
      },
      '2010' =>
      {
        ORDINAL => 44,
        YEAR => 2010,
        DATE_START => '2010-02-18', # Thu
        DATE_END => '2010-02-27' # Sat
      },
      '2011' =>
      {
        ORDINAL => 45,
        YEAR => 2011,
        DATE_START => '2011-02-18', # Fri
        DATE_END => '2011-02-18' # Fri
      },
      '2012' =>
      {
        ORDINAL => 46,
        YEAR => 2012,
        DATE_START => '2012-02-02', # Thu
        DATE_END => '2012-02-11' # Sat
      },
      '2013' =>
      {
        ORDINAL => 47,
        YEAR => 2013,
        DATE_START => '2013-02-09', # Sat
        DATE_END => '2013-02-15' # Fri
      },
      '2014' =>
      {
        ORDINAL => 48,
        YEAR => 2014,
        DATE_START => '2014-02-20', # Thu
        DATE_END => '2014-02-26' # Wed
      },
      '2016' =>
      {
        ORDINAL => 50,
        YEAR => 2016,
        DATE_START => '2016-06-03', # Fri
        DATE_END => '2016-06-09' # Thu
      },
      '2017' =>
      {
        ORDINAL => 51,
        YEAR => 2017,
        DATE_START => '2017-06-30', # Fri
        DATE_END => '2017-07-06' # Thu
      },
      '2018' =>
      {
        ORDINAL => 52,
        YEAR => 2018,
        DATE_START => '2018-06-22', # Fri
        DATE_END => '2018-06-28' # Thu
      },
      '2019' =>
      {
        ORDINAL => 53,
        YEAR => 2019,
        DATE_START => '2019-05-31', # Fri
        DATE_END => '2019-06-06' # Thu
      },
      '2022' =>
      {
        ORDINAL => 54,
        YEAR => 2022,
        DATE_START => '2022-07-07', # Thu
        DATE_END => '2022-07-14' # Thu
      },
      '2024' =>
      {
        ORDINAL => 56,
        YEAR => 2024,
        DATE_START => '2024-05-30', # Thu
        DATE_END => '2024-06-05' # Wed
      },
    }
  },

  'Israel Grand Prix' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-09-02', # Thu
        DATE_END => '2010-09-04' # Sat
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-06-09', # Thu
        DATE_END => '2011-06-11' # Sat
      },
    }
  },

  'Red Sea International Festival' =>
  {
    # https://www.bridgeredsea.com/previous-results
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2000' =>
      {
        ORDINAL => 6,
        CITY => 'Eilat',
        YEAR => 2000,
        DATE_START => '2000-11-05', # Sun
        DATE_END => '2000-11-12' # Sun
      },
      '2001' =>
      {
        ORDINAL => 7,
        CITY => 'Eilat',
        YEAR => 2001,
        DATE_START => '2001-11-04', # Sun
        DATE_END => '2001-11-11' # Sun
      },
      '2002' =>
      {
        ORDINAL => 8,
        CITY => 'Eilat',
        YEAR => 2002,
        DATE_START => '2002-11-10', # Sun
        DATE_END => '2002-11-17' # Sun
      },
      '2003' =>
      {
        ORDINAL => 9,
        CITY => 'Eilat',
        YEAR => 2003,
        DATE_START => '2003-11-16', # Sun
        DATE_END => '2003-11-23' # Sun
      },
      '2004' =>
      {
        ORDINAL => 10,
        CITY => 'Eilat',
        YEAR => 2004,
        DATE_START => '2004-11-14', # Sun
        DATE_END => '2004-11-21' # Sun
      },
      '2005' =>
      {
        ORDINAL => 11,
        CITY => 'Eilat',
        YEAR => 2005,
        DATE_START => '2005-11-13', # Sun
        DATE_END => '2005-11-20' # Sun
      },
      '2006' =>
      {
        ORDINAL => 12,
        CITY => 'Eilat',
        YEAR => 2006,
        DATE_START => '2006-11-05', # Sun
        DATE_END => '2006-11-12' # Sun
      },
      '2007' =>
      {
        ORDINAL => 13,
        CITY => 'Eilat',
        YEAR => 2007,
        DATE_START => '2007-11-08', # Thu
        DATE_END => '2007-11-18' # Sun
      },
      '2008' =>
      {
        ORDINAL => 14,
        CITY => 'Eilat',
        YEAR => 2008,
        DATE_START => '2008-11-13', # Thu
        DATE_END => '2008-11-23' # Sun
      },
      '2009' =>
      {
        ORDINAL => 15,
        CITY => 'Eilat',
        YEAR => 2009,
        DATE_START => '2009-11-07', # Sat
        DATE_END => '2009-11-12' # Thu
      },
      '2010' =>
      {
        ORDINAL => 16,
        CITY => 'Eilat',
        YEAR => 2010,
        DATE_START => '2010-11-18', # Thu
        DATE_END => '2010-11-28' # Sun
      },
      '2011' =>
      {
        ORDINAL => 17,
        CITY => 'Eilat',
        YEAR => 2011,
        DATE_START => '2011-11-17', # Thu
        DATE_END => '2011-11-27' # Sun
      },
      '2012' =>
      {
        ORDINAL => 18,
        CITY => 'Eilat',
        YEAR => 2012,
        DATE_START => '2012-11-15', # Thu
        DATE_END => '2012-11-25' # Sun
      },
      '2013' =>
      {
        ORDINAL => 19,
        CITY => 'Eilat',
        YEAR => 2013,
        DATE_START => '2013-11-21', # Thu
        DATE_END => '2013-11-21' # Thu
      },
      '2014' =>
      {
        ORDINAL => 20,
        CITY => 'Eilat',
        YEAR => 2014,
        DATE_START => '2014-11-13', # Thu
        DATE_END => '2014-11-23' # Sun
      },
      '2015' =>
      {
        ORDINAL => 21,
        CITY => 'Eilat',
        YEAR => 2015,
        DATE_START => '2015-11-12', # Thu
        DATE_END => '2015-11-22' # Sun
      },
      '2016' =>
      {
        ORDINAL => 22,
        CITY => 'Eilat',
        YEAR => 2016,
        DATE_START => '2016-11-07', # Mon
        DATE_END => '2016-11-16' # Wed
      },
      '2017' =>
      {
        ORDINAL => 23,
        CITY => 'Eilat',
        YEAR => 2017,
        DATE_START => '2017-11-09', # Thu
        DATE_END => '2017-11-19' # Sun
      },
      '2018' =>
      {
        ORDINAL => 24,
        CITY => 'Eilat',
        YEAR => 2018,
        DATE_START => '2018-11-08', # Thu
        DATE_END => '2018-11-18' # Sun
      },
      '2019' =>
      {
        ORDINAL => 25,
        CITY => 'Eilat',
        YEAR => 2019,
        DATE_START => '2019-11-12', # Tue
        DATE_END => '2019-11-20' # Wed
      },
      '2021' =>
      {
        CITY => 'Eilat',
        YEAR => 2021,
        DATE_START => '2021-11-12', # Fri
        DATE_END => '2021-11-20' # Sat
      },
      '2022' =>
      {
        CITY => 'Eilat',
        YEAR => 2022,
        DATE_START => '2022-11-11', # Fri
        DATE_END => '2022-11-19' # Sat
      },
      '2023' =>
      {
        CITY => 'Eilat',
        YEAR => 2023,
        DATE_START => '2023-11-09', # Thu
        DATE_END => '2023-11-19' # Sun
      },
      '2024' =>
      {
        CITY => 'Eilat',
        YEAR => 2024,
        DATE_START => '2024-11-07', # Thu
        DATE_END => '2024-11-16' # Sat
      },
    }
  }
);

my %TOURNAMENTS_ISRAEL =
(
  'Four Nations Cup' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-11-19', # Sat
            DATE_END => '2011-11-19' # Sat
          } 
        }
      },
    }
  },

  'Israel Festival Open Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Israel Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-02-26', # Fri
            DATE_END => '2010-02-26' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Israel Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-02-18', # Fri
            DATE_END => '2011-02-18' # Fri
          } 
        }
      },
    }
  },

  'Israel Festival Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Israel Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-02-13', # Fri
            DATE_END => '2009-02-13' # Fri
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Israel Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-02-26', # Fri
            DATE_END => '2010-02-26' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Israel Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-02-18', # Fri
            DATE_END => '2011-02-18' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Israel Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-06-08', # Wed
            DATE_END => '2016-06-08' # Wed
          } 
        }
      },
    }
  },

  'Israel Juniors Pairs' => 
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Juniors',

    EDITIONS =>
    {
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2008-02-12', # Tue
            DATE_END => '2008-02-12' # Tue
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
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2009-12-26', # Sat
            DATE_END => '2009-12-26' # Sat
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
            DATE_START => '2011-01-15', # Sat
            DATE_END => '2011-01-15' # Sat
          } 
        }
      },
    }
  },

  'Israel Juniors Trials' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Juniors',

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
            DATE_START => '2005-05-05', # Thu
            DATE_END => '2005-05-05' # Thu
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
            DATE_START => '2011-02-05', # Sat
            DATE_END => '2011-02-05' # Sat
          } 
        }
      },
    }
  },

  'Israel Individual' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Israel Grand Prix',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-09-03', # Fri
            DATE_END => '2010-09-03' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Israel Grand Prix',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-06-11', # Sat
            DATE_END => '2011-06-11' # Sat
          } 
        }
      },
    }
  },

  'Israel IMP Pairs' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
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
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-03-28', # Sat
            DATE_END => '2009-03-28' # Sat
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Israel Grand Prix',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-09-02', # Thu
            DATE_END => '2010-09-04' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Israel Grand Prix',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-06-09', # Thu
            DATE_END => '2011-06-09' # Thu
          } 
        }
      },
    }
  },

  'Israel Open Pairs' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
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
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2005-06-04', # Sat
            DATE_END => '2005-06-04' # Sat
          } 
        }
      },
      '2008' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          } 
        }
      },
      '2010' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2010-06-05', # Sat
            DATE_END => '2010-06-05' # Sat
          } 
        }
      },
      '2011' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-14' # Sat
          } 
        }
      },
      '2012' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-05-19', # Sat
            DATE_END => '2012-05-19' # Sat
          } 
        }
      },
      '2013' =>
      {
        # https://main.bridge.co.il/uploads/files/2858gmar-al-2013.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-01' # Sat
          } 
        }
      },
      '2014' =>
      {
        # https://www.bridge.co.il/results/2014/94-2014-ga-fr.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2014-07-05', # Sat
            DATE_END => '2014-07-05' # Sat
          } 
        }
      },
      '2015' =>
      {
        # https://www.bridge.co.il/results/2015/ga2015h.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-06-20', # Sat
            DATE_END => '2015-06-20' # Sat
          } 
        }
      },
      '2016' =>
      {
        # https://www.bridge.co.il/results/2016/94-ga2016.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-05-21', # Sat
            DATE_END => '2016-05-21' # Sat
          } 
        }
      },
    }
  },

  'Israel Open Teams' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-01-16', # Mon
            DATE_END => '2006-01-16' # Mon
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-01-22', # Tue
            DATE_END => '2008-01-22' # Tue
          } 
        }
      },
      '2009' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-01-05', # Mon
            DATE_END => '2009-01-05' # Mon
          } 
        }
      },
      '2010A' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-01', # Fri
            DATE_END => '2010-01-02' # Sat
          } 
        }
      },
      '2010B' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-25', # Sat
            DATE_END => '2010-12-25' # Sat
          } 
        }
      },
      '2011' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-31', # Sat
            DATE_END => '2011-12-31' # Sat
          } 
        }
      },
      '2012' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-22', # Sat
            DATE_END => '2012-12-22' # Sat
          } 
        }
      },
      '2013' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-28', # Sat
            DATE_END => '2013-12-28' # Sat
          } 
        }
      },
      '2015A' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-01-10', # Sat
            DATE_END => '2015-01-10' # Sat
          } 
        }
      },
      '2015B' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-12', # Sat
            DATE_END => '2015-12-12' # Sat
          } 
        }
      },
    }
  },

  'Israel Open Teams Cup' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
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
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
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
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
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
            DATE_START => '2009-09-12', # Sat
            DATE_END => '2009-09-12' # Sat
          } 
        }
      },
      '2010A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-08-28', # Sat
            DATE_END => '2010-08-28' # Sat
          } 
        }
      },
      '2010B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-09-04', # Sat
            DATE_END => '2010-09-04' # Sat
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
            DATE_START => '2011-08-27', # Sat
            DATE_END => '2011-08-27' # Sat
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
            DATE_START => '2012-09-01', # Sat
            DATE_END => '2012-09-01' # Sat
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
            DATE_START => '2013-08-31', # Sat
            DATE_END => '2013-08-31' # Sat
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
            DATE_START => '2014-08-30', # Sat
            DATE_END => '2014-08-30' # Sat
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
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
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
            DATE_START => '2016-07-30', # Sat
            DATE_END => '2016-07-30' # Sat
          } 
        }
      },
    }
  },

  'Israel Open Trials' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
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
        # Link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-05-01', # Mon
            DATE_END => '2006-05-01' # Mon
          } 
        }
      },
      '2009' =>
      {
        # Link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-13', # Thu
            DATE_END => '2009-08-15' # Sat
          } 
        }
      },
      '2012' =>
      {
        # Link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-03-02', # Fri
            DATE_END => '2012-03-03' # Sat
          } 
        }
      },
      '2015A' =>
      {
        # Link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-08', # Fri
            DATE_END => '2015-05-10' # Sun
          } 
        }
      },
      '2015B' =>
      {
        # Link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-26', # Sat
            DATE_END => '2015-12-26' # Sat
          } 
        }
      },
    }
  },

  'Israel School Trials' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U18',

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
            DATE_START => '2010-01-16', # Sat
            DATE_END => '2010-01-16' # Sat
          } 
        }
      },
    }
  },

  'Israel Women Pairs' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-21', # Tue
            DATE_END => '2015-07-21' # Tue
          } 
        }
      },
    }
  },

  'Maccabi Games' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
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
            major => 'ROUND',
            DATE_START => '2005-07-19', # Tue
            DATE_END => '2005-07-19' # Tue
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
            DATE_START => '2011-07-11', # Mon
            DATE_END => '2011-07-11' # Mon
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-07-11', # Mon
            DATE_END => '2011-07-12' # Tue
          } 
        }
      },
    }
  },

  'Red Sea Invitational Pairs' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'Invitational',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-11-12', # Thu
            DATE_END => '2009-11-12' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-11-24', # Thu
            DATE_END => '2011-11-24' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-11-22', # Thu
            DATE_END => '2012-11-22' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-11-21', # Thu
            DATE_END => '2013-11-21' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-11-19', # Thu
            DATE_END => '2015-11-19' # Thu
          } 
        }
      },
    }
  },

  'Red Sea Open Swiss Teams' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    MOVEMENT => 'Swiss',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-11-07', # Sat
            DATE_END => '2009-11-08' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-11-21', # Sat
            DATE_END => '2015-11-21' # Sat
          } 
        }
      },
    }
  },

  'Rand Pairs Cup' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
    ORIGIN => 'Invitational',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-11-20', # Thu
            DATE_END => '2014-11-20' # Thu
          } 
        }
      },
    }
  },

  'Rand Teams Cup' =>
  {
    ORGANIZATION => 'IBF',
    COUNTRY => 'Israel',
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
        MEET => 'Red Sea International Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-11-25', # Thu
            DATE_END => '2010-11-25' # Thu
          } 
        }
      },
    }
  },

);

sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_ISRAEL, \%TOURNAMENTS_ISRAEL, 'Israel');
}

1;
