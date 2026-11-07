#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Sweden;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_SWEDEN =
(
  'Swedish Bridge Festival' =>
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',

    # Start 6 days before end
    # End 3 days after
    EDITIONS => 
    {
      '2009' =>
      {
        YEAR => 2009,
        CITY => 'Örebro',
        DATE_START => '2009-07-24', # Estimated
        DATE_END => '2009-08-02' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        CITY => 'Örebro',
        DATE_START => '2010-07-28', # Estimated
        DATE_END => '2010-08-08' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        CITY => 'Örebro',
        DATE_START => '2011-07-27', # Estimated
        DATE_END => '2011-08-07' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        CITY => 'Örebro',
        DATE_START => '2012-07-25', # Estimated
        DATE_END => '2012-08-05' # Sun
      },
      '2013' =>
      {
        YEAR => 2013,
        CITY => 'Örebro',
        DATE_START => '2013-07-24', # Estimated
        DATE_END => '2013-08-04' # Sun
      },
      '2014' =>
      {
        # https://www.svenskbridge.se/festival-2014/nyheter/88
        YEAR => 2014,
        CITY => 'Örebro',
        DATE_START => '2014-07-25', # Fri
        DATE_END => '2014-08-03' # Sun
      },
      '2015' =>
      {
        # https://www.svenskbridge.se/festival-2015/info
        YEAR => 2015,
        CITY => 'Örebro',
        DATE_START => '2015-07-24', # Fri
        DATE_END => '2015-08-02' # Sun
      },
      '2016' =>
      {
        # https://www.svenskbridge.se/festival-2016/info
        YEAR => 2016,
        CITY => 'Örebro',
        DATE_START => '2016-07-29', # Fri
        DATE_END => '2016-08-07' # Sun
      },
      '2017' =>
      {
        # https://www.svenskbridge.se/festival-2017/info
        YEAR => 2017,
        CITY => 'Örebro',
        DATE_START => '2017-07-28', # Fri
        DATE_END => '2017-08-05' # Sat
      },
      '2018' =>
      {
        # https://www.svenskbridge.se/festival-2018/info
        YEAR => 2018,
        CITY => 'Örebro',
        DATE_START => '2018-07-28', # Sat
        DATE_END => '2018-08-05' # Sun
      },
      '2019' =>
      {
        # https://www.svenskbridge.se/festival-2019/info
        YEAR => 2019,
        CITY => 'Örebro',
        DATE_START => '2019-07-26', # Fri
        DATE_END => '2019-08-04' # Sun
      },
      '2021' =>
      {
        # https://www.svenskbridge.se/festival-2021/info
        YEAR => 2021,
        CITY => 'Online',
        DATE_START => '2021-07-30', # Fri
        DATE_END => '2021-08-08' # Sun
      },
      '2022' =>
      {
        # https://www.svenskbridge.se/festival-2022/info
        YEAR => 2022,
        CITY => 'Örebro',
        DATE_START => '2022-07-28', # Thu
        DATE_END => '2022-08-06' # Sat
      },
      '2023' =>
      {
        # https://www.svenskbridge.se/festival-2023/info
        YEAR => 2023,
        CITY => 'Örebro',
        DATE_START => '2023-07-28', # Fri
        DATE_END => '2023-08-06' # Sun
      },
      '2024' =>
      {
        # https://www.svenskbridge.se/festival-2024/tavling
        YEAR => 2024,
        CITY => 'Örebro',
        DATE_START => '2024-07-26', # Fri
        DATE_END => '2024-08-04' # Sun
      },
    }
  },

  'Swedish Women Trials' =>
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS => 
    {
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-04-27', # Fri
        DATE_END => '2012-04-29' # Sun
      },
    }
  },

  'Umea Bridgefestival' =>
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2006' =>
      {
        YEAR => 2006,
        CITY => 'Umea',
        DATE_START => '2006-07-05', # Wed
        DATE_END => '2006-07-06' # Thu
      },
    }
  },
);

my %TOURNAMENTS_SWEDEN =
(
  "Chairman's Cup" =>
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
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
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-28', # Tue
            DATE_END => '2009-07-28' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-29', # Wed
            DATE_END => '2009-07-29' # Wed
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-30', # Thu
            DATE_END => '2009-07-30' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-08-03', # Tue
            DATE_END => '2010-08-03' # Tue
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-08-04', # Wed
            DATE_END => '2010-08-04' # Wed
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-08-05', # Thu
            DATE_END => '2010-08-05' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-02', # Tue
            DATE_END => '2011-08-02' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-03', # Wed
            DATE_END => '2011-08-03' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-08-04', # Thu
            DATE_END => '2011-08-04' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-31', # Tue
            DATE_END => '2012-07-31' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-01', # Wed
            DATE_END => '2012-08-01' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-02', # Thu
            DATE_END => '2012-08-02' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-30', # Tue
            DATE_END => '2013-07-30' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-31', # Wed
            DATE_END => '2013-08-01' # Thu
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-01', # Thu
            DATE_END => '2013-08-02' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-29', # Tue
            DATE_END => '2014-07-29' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-30', # Wed
            DATE_END => '2014-07-30' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-31', # Thu
            DATE_END => '2014-07-31' # Thu
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2014-07-31', # Thu
            DATE_END => '2014-07-31' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-07-28', # Tue
            DATE_END => '2015-07-28' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-07-29', # Wed
            DATE_END => '2015-07-29' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-07-30', # Thu
            DATE_END => '2015-07-30' # Thu
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-02', # Tue
            DATE_END => '2016-08-02' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-03', # Wed
            DATE_END => '2016-08-03' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-08-04', # Thu
            DATE_END => '2016-08-04' # Thu
          } 
        }
      },
    }
  },

  'Filbyter Cup',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
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
            STAGE => 'Playoff',
            major => 'ROUND',
            DATE_START => '2009-03-30', # Mon
            DATE_END => '2009-03-30' # Mon
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-30', # Mon
            DATE_END => '2009-03-30' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-04-06', # Mon
            DATE_END => '2009-04-06' # Mon
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-01', # Mon
            DATE_END => '2010-03-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-08', # Mon
            DATE_END => '2010-03-08' # Mon
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-15', # Mon
            DATE_END => '2010-03-15' # Mon
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-03-22', # Mon
            DATE_END => '2010-03-22' # Mon
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-03-29', # Mon
            DATE_END => '2010-03-29' # Mon
          },
          'C5' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-04-12', # Mon
            DATE_END => '2010-04-12' # Mon
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
            STAGE => 'Rof16',
            major => 'ROUND',
            DATE_START => '2011-02-17', # Thu
            DATE_END => '2011-02-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-03', # Thu
            DATE_END => '2011-03-03' # Thu
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-10', # Thu
            DATE_END => '2011-03-10' # Thu
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-17', # Thu
            DATE_END => '2011-03-17' # Thu
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-24', # Thu
            DATE_END => '2011-03-24' # Thu
          },
          'C5' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-31', # Thu
            DATE_END => '2011-03-31' # Thu
          },
          'C6' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-07', # Thu
            DATE_END => '2011-04-07' # Thu
          },
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-03-19', # Mon
            DATE_END => '2012-03-19' # Mon
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-02', # Mon
            DATE_END => '2012-04-02' # Mon
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-16', # Mon
            DATE_END => '2012-04-16' # Mon
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-23', # Mon
            DATE_END => '2012-04-23' # Mon
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-07', # Mon
            DATE_END => '2012-05-07' # Mon
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-14', # Mon
            DATE_END => '2012-05-14' # Mon
          },
          'C6' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-21', # Mon
            DATE_END => '2012-05-21' # Mon
          },
          'C7' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-04', # Mon
            DATE_END => '2012-06-05' # Tue
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-05', # Mon
            DATE_END => '2014-05-05' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-12', # Mon
            DATE_END => '2014-05-12' # Mon
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-19', # Mon
            DATE_END => '2014-05-19' # Mon
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-26', # Mon
            DATE_END => '2014-05-26' # Mon
          } 
        }
      },
    }
  },

  'Park Hotell Swiss Teams',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    MOVEMENT => 'Swiss',
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
            DATE_START => '2013-09-21', # Sat
            DATE_END => '2013-09-22' # Sun
          } 
        }
      },
    }
  },

  'Stena Line Cup',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
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
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-07', # Thu
            DATE_END => '2013-11-07' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-08', # Fri
            DATE_END => '2013-11-09' # Sat
          } 
        }
      },
    }
  },

  'Stockholm Teams',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        CITY => 'Stockholm',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'MATCH',
            DATE_START => '2005-02-13', # Sun
            DATE_END => '2005-02-14' # Mon
          } 
        }
      },
    }
  },

  'Swedish Cup',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
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
        # https://www.svenskbridge.se/svenska-cupen-2014/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            DATE_START => '2014-11-20', # Thu
            DATE_END => '2014-11-20' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            DATE_START => '2014-11-20', # Thu
            DATE_END => '2014-11-20' # Thu
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            DATE_START => '2014-11-21', # Fri
            DATE_END => '2014-11-21' # Fri
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            DATE_START => '2014-11-22', # Sat
            DATE_END => '2014-11-23' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2015/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-11-12', # Thu
            DATE_END => '2015-11-12' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-12', # Thu
            DATE_END => '2015-11-12' # Thu
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-13', # Fri
            DATE_END => '2015-11-13' # Fri
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-11-13', # Fri
            DATE_END => '2015-11-14' # Sat
          } 
        }
      },
      '2016' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2016/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-11-10', # Thu
            DATE_END => '2016-11-13' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2016/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-11-10', # Thu
            DATE_END => '2016-11-13' # Sun
          } 
        }
      },
      '2017' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2017/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-11-16', # Thu
            DATE_END => '2017-11-19' # Sun
          } 
        }
      },
      '2018' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2018/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-11-15', # Thu
            DATE_END => '2018-11-18' # Sun
          } 
        }
      },
      '2019' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2021/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-11-14', # Thu
            DATE_END => '2019-11-17' # Sun
          } 
        }
      },
      '2020' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2020/final
        CITY => 'Online',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2020,
            DATE_START => '2020-11-12', # Thu
            DATE_END => '2020-11-15' # Sun
          } 
        }
      },
      '2021' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2021/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-11-11', # Thu
            DATE_END => '2021-11-14' # Sun
          } 
        }
      },
      '2022' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2022/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-11-10', # Thu
            DATE_END => '2022-11-13' # Sun
          } 
        }
      },
      '2023' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2023/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-11-16', # Thu
            DATE_END => '2023-11-19' # Sun
          } 
        }
      },
      '2024' =>
      {
        # https://www.svenskbridge.se/svenska-cupen-2024/final
        CITY => 'Uppsala',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-11-07', # Thu
            DATE_END => '2024-11-10' # Sun
          } 
        }
      },
    }
  },

  'Swedish District Teams',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'Regional',
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
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-02-27', # Sat
            DATE_END => '2010-02-28' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-03-14', # Sun
            DATE_END => '2010-03-14' # Sun
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
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-02-26', # Sat
            DATE_END => '2011-02-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-03-13', # Sun
            DATE_END => '2011-03-13' # Sun
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
            STAGE => 'Final',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-02-25', # Sat
            DATE_END => '2012-02-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'MATCH',
            minor => 'HALF',
            DATE_START => '2012-03-10', # Sat
            DATE_END => '2012-03-11' # Sun
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
            minor => 'SEGMENT',
            DATE_START => '2013-03-09', # Sat
            DATE_END => '2013-03-10' # Sun
          } 
        }
      },
    }
  },

  'Swedish Juniors Pairs',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U26',

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
            major => 'SESSION',
            DATE_START => '2011-09-17', # Sat
            DATE_END => '2011-09-18' # Sun
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
            major => 'SESSION',
            DATE_START => '2012-09-15', # Sat
            DATE_END => '2012-09-16' # Sun
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
            major => 'SESSION',
            DATE_START => '2013-09-14', # Sat
            DATE_END => '2013-09-15' # Sun
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
            major => 'SESSION',
            DATE_START => '2014-09-06', # Sat
            DATE_END => '2014-09-07' # Sun
          } 
        }
      },
    }
  },

  'Swedish Juniors Teams',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

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
            DATE_START => '2005-03-14', # Mon
            DATE_END => '2005-03-14' # Mon
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
            major => 'ROUND',
            DATE_START => '2009-05-09', # Sat
            DATE_END => '2009-05-10' # Sun
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
            DATE_START => '2010-05-01', # Sat
            DATE_END => '2010-05-02' # Sun
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
            DATE_START => '2011-05-07', # Sat
            DATE_END => '2011-05-08' # Sun
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
            major => 'ROUND',
            DATE_START => '2012-05-05', # Sat
            DATE_END => '2012-05-06' # Sun
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
            major => 'ROUND',
            DATE_START => '2014-05-17', # Sat
            DATE_END => '2014-05-18' # Sun
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-05-09', # Sat
            DATE_END => '2015-05-10' # Sun
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
            DATE_START => '2016-05-28', # Sat
            DATE_END => '2016-05-29' # Sun
          } 
        }
      },
    }
  },

  'Swedish Mixed Teams',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
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
            DATE_START => '2013-01-19', # Sat
            DATE_END => '2013-01-20' # Sun
          } 
        }
      },
    }
  },

  'Swedish Open Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-08-07', # Sat
            DATE_END => '2010-08-08' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2011-08-06', # Sat
            DATE_END => '2011-08-07' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Swedish Bridge Festival',
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
        MEET => 'Swedish Bridge Festival',
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
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2014-08-02', # Sat
            DATE_END => '2014-08-03' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-08-01', # Sat
            DATE_END => '2015-08-02' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Swedish Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-08-06', # Sat
            DATE_END => '2016-08-07' # Sun
          } 
        }
      },
    }
  },

  'Swedish Open Teams',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2004-06-01', # Dates probably wrong
            DATE_END => '2004-06-01' # Tue
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2005-06-01', # Dates probably wrong
            DATE_END => '2005-06-02' # Thu
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2006-06-02', # Dates probably wrong
            DATE_END => '2006-06-02' # Fri
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
            minor => 'SEGMENT',
            DATE_START => '2010-05-13', # Thu
            DATE_END => '2010-05-16' # Sun
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-05-17', # Thu
            DATE_END => '2012-05-20' # Sun
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-05-09', # Thu
            DATE_END => '2013-05-12' # Sun
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
            minor => 'SEGMENT',
            DATE_START => '2014-05-29', # Thu
            DATE_END => '2014-06-01' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://www.svenskbridge.se/sm-lag-2015/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-05-14', # Thu
            DATE_END => '2015-05-17' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://www.svenskbridge.se/sm-lag-2016/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-05-05', # Thu
            DATE_END => '2016-05-08' # Sun
          } 
        }
      },
      '2017' =>
      {
        # https://www.svenskbridge.se/sm-lag-2017/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            DATE_START => '2017-05-25', # Thu
            DATE_END => '2017-05-28' # Sun
          } 
        }
      },
      '2018' =>
      {
        # https://www.svenskbridge.se/sm-lag-2018/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            DATE_START => '2018-05-10', # Thu
            DATE_END => '2018-05-13' # Sun
          } 
        }
      },
      '2019' =>
      {
        # https://www.svenskbridge.se/sm-lag-2022/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            DATE_START => '2019-05-30', # Thu
            DATE_END => '2019-06-02' # Sun
          } 
        }
      },
      '2021' =>
      {
        # https://www.svenskbridge.se/sm-lag-2021/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            CITY => 'Online',
            DATE_START => '2021-05-13', # Thu
            DATE_END => '2021-05-16' # Sun
          } 
        }
      },
      '2022' =>
      {
        # https://www.svenskbridge.se/sm-lag-2022/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            DATE_START => '2022-05-26', # Thu
            DATE_END => '2022-05-29' # Sun
          } 
        }
      },
      '2023' =>
      {
        # https://www.svenskbridge.se/sm-lag-2023/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            DATE_START => '2023-05-18', # Thu
            DATE_END => '2023-05-21' # Sun
          } 
        }
      },
      '2024' =>
      {
        # https://www.svenskbridge.se/sm-lag-2024/final
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            CITY => 'Örebro',
            COUNTRY => 'Sweden',
            DATE_START => '2024-05-09', # Thu
            DATE_END => '2024-05-12' # Sun
          } 
        }
      },
    }
  },

  'Swedish Open Pair Trials',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-10-31', # Sat
            DATE_END => '2009-11-01' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://arkiv.svenskbridge.se/e107_plugins/content/content.php?content.2836
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-04-05', # Fri
            DATE_END => '2013-04-07' # Sun
          } 
        }
      },
    }
  },

  'Swedish Open Team Trials',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
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
            DATE_START => '2005-04-08', # Fri
            DATE_END => '2005-04-10' # Sun
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
            DATE_START => '2015-04-24', # Fri
            DATE_END => '2015-04-26' # Sun
          } 
        }
      },
    }
  },

  'Swedish Premier League',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'Interclub',
    ZONE => 'Europe',
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
            minor => 'SEGMENT',
            DATE_START => '2008-12-12', # Fri
            DATE_END => '2008-12-14' # Dates estimated
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
            DATE_START => '2009-12-12', # Sat
            DATE_END => '2009-12-13' # Sun
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
            minor => 'SEGMENT',
            DATE_START => '2010-12-11', # Sat
            DATE_END => '2010-12-12' # Sun
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
            minor => 'SEGMENT',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-11' # Sun
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-12-08', # Sat
            DATE_END => '2012-12-09' # Sun
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-10-11', # Fri
            DATE_END => '2013-10-13' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2014/div1-program
        CITY => 'Örebro',
        COUNTRY => 'Sweden',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-10-03', # Fri
            DATE_END => '2014-10-05' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2015/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-10-23', # Fri
            DATE_END => '2015-10-25' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2016/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-08-27', # Sat
            DATE_END => '2016-08-28' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            DATE_START => '2016-10-21', # Fri
            DATE_END => '2016-10-23' # Sun
          } 
        }
      },
      '2017' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2017/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-10-27', # Fri
            DATE_END => '2017-10-29' # Sun
          } 
        }
      },
      '2018' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2018/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-10-19', # Fri
            DATE_END => '2018-10-21' # Sun
          } 
        }
      },
      '2019' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2019/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-10-18', # Fri
            DATE_END => '2019-10-20' # Sun
          } 
        }
      },
      '2021' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2021/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-10-15', # Fri
            DATE_END => '2021-10-17' # Sun
          } 
        }
      },
      '2022' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2022/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-10-14', # Fri
            DATE_END => '2022-10-16' # Sun
          } 
        }
      },
      '2023' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2023/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-10-06', # Fri
            DATE_END => '2023-10-08' # Sun
          } 
        }
      },
      '2024' =>
      {
        # https://www.svenskbridge.se/allsvenskan-2024/div1
        CITY => 'Örebro',
        COUNTRY => 'Sweden',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-09-27', # Fri
            DATE_END => '2024-09-29' # Sun
          } 
        }
      },
    }
  },

  'Swedish Senior Team Trials',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-02-12', # Sun
            DATE_END => '2012-02-12' # Sun
          } 
        }
      },
    }
  },

  'Swedish Women Pair Trials',
  {
    FORM => 'Pairs',
    SCORING => 'MP',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Swedish Women Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-04-27', # Fri
            DATE_END => '2012-04-29' # Sun
          } 
        }
      },
    }
  },

  'S:t Erik Championship Series',
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
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
            major => 'SEGMENT',
            DATE_START => '2011-12-12', # Mon
            DATE_END => '2011-12-14' # Wed
          } 
        }
      },
    }
  },

  'Umea Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Umea Bridgefestival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-07-05', # Wed
            DATE_END => '2006-07-06' # Thu
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_SWEDEN, \%TOURNAMENTS_SWEDEN, 'Sweden');
}

1;
