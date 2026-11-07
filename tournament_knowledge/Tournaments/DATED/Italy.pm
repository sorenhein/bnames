#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Italy;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_ITALY =
(
  'Festival della Matematica' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'International',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-03-22', # Sun
        DATE_END => '2009-03-22' # Sun
      },
    }
  },

  'Italian Club Championship' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'Interclub',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-12-16', # Thu
        DATE_END => '2004-12-16' # Thu
      },
      '2005' =>
      {
        # https://www.federbridge.it/campionati/2005/CSSASBSC/indice.asp
        YEAR => 2005,
        CITY => 'Salsomaggiore',
        DATE_START => '2005-02-12', # Sat
        DATE_END => '2005-04-08' # Fri
      },
      '2006' =>
      {
        # https://www.federbridge.it/campionati/2006/CSSASBSC/indice.asp
        YEAR => 2006,
        CITY => 'Montecatini',
        DATE_START => '2006-09-28', # Thu
        DATE_END => '2006-10-01' # Sun
      },
      '2007' =>
      {
        # https://www.federbridge.it/campionati/2007/CLCCSQMX/indice.asp
        YEAR => 2007,
        CITY => 'Salsomaggiore',
        DATE_START => '2007-10-27', # Sat
        DATE_END => '2007-10-28' # Sun
      },
      '2008' =>
      {
        # https://www.federbridge.it/campionati/2008/CSSASBSC/indice.asp
        YEAR => 2008,
        CITY => 'San Remo',
        DATE_START => '2008-09-18', # Thu
        DATE_END => '2008-09-21' # Sun
      },
      '2009' =>
      {
        # https://www.federbridge.it/campionati/2009/CSSASBSC/indice.asp
        YEAR => 2009,
        CITY => 'Bologna',
        DATE_START => '2009-09-24', # Thu
        DATE_END => '2009-09-27' # Sun
      },
      '2010' =>
      {
        # https://www.federbridge.it/campionati/2010/CSS1S2S3/indice.asp
        YEAR => 2010,
        CITY => 'Bologna',
        DATE_START => '2010-09-23', # Thu
        DATE_END => '2010-09-26' # Sun
      },
      '2011' =>
      {
        # https://www.federbridge.it/campionati/2011/CSS1S2S3/indice.asp
        YEAR => 2011,
        CITY => 'Salsomaggiore',
        DATE_START => '2011-09-22', # Thu
        DATE_END => '2011-09-25' # Sun
      },
      '2012' =>
      {
        # https://www.federbridge.it/campionati/2012/CSS1S2S3/indice.asp
        YEAR => 2012,
        CITY => 'Salsomaggiore',
        DATE_START => '2012-09-27', # Thu
        DATE_END => '2012-09-30' # Sun
      },
      '2013' =>
      {
        # https://www.federbridge.it/campionati/2013/CSS1S2S3/indice.asp
        YEAR => 2013,
        CITY => 'Salsomaggiore',
        DATE_START => '2013-10-03', # Thu
        DATE_END => '2013-10-06' # Sun
      },
      '2014' =>
      {
        # https://www.federbridge.it/campionati/2014/CSS1S2S3/indice.asp
        YEAR => 2014,
        CITY => 'Salsomaggiore',
        DATE_START => '2014-09-25', # Thu
        DATE_END => '2014-09-28' # Sun
      },
      '2015' =>
      {
        # https://www.federbridge.it/campionati/2015/CSS1S2S3/indice.asp
        YEAR => 2015,
        CITY => 'Salsomaggiore',
        DATE_START => '2015-06-19', # Fri
        DATE_END => '2015-06-21' # Sun
      },
      '2016' =>
      {
        # https://www.federbridge.it/campionati/2016/CSS1S2S3/indice.asp
        YEAR => 2016,
        CITY => 'Salsomaggiore',
        DATE_START => '2016-05-19', # Thu
        DATE_END => '2016-05-22' # Sun
      },
      '2017' =>
      {
        # https://www.federbridge.it/campionati/2017/CSS1S2S3/indice.asp
        YEAR => 2017,
        CITY => 'Salsomaggiore',
        DATE_START => '2017-05-18', # Thu
        DATE_END => '2017-05-21' # Sun
      },
      '2018' =>
      {
        # https://www.federbridge.it/campionati/2018/CSSASBSC/indice.asp
        YEAR => 2018,
        CITY => 'Salsomaggiore',
        DATE_START => '2018-04-05', # Thu
        DATE_END => '2018-04-08' # Sun
      },
      '2019' =>
      {
        # https://www.federbridge.it/campionati/2019/CSSASBSC/indice.asp
        YEAR => 2019,
        CITY => 'Salsomaggiore',
        DATE_START => '2019-04-04', # Thu
        DATE_END => '2019-04-07' # Sun
      },
      '2020' =>
      {
        # https://www.federbridge.it/campionati/2019/CSSASBSC/indice.asp
        YEAR => 2020,
        CITY => 'Salsomaggiore',
        DATE_START => '2020-02-20', # Thu
        DATE_END => '2020-09-27' # Sun
      },
      # Nothing in 2021?
      # https://www.federbridge.it/campionati/2019/CSSASBSC/indice.asp
      '2022' =>,
      {
        # https://www.federbridge.it/campionati/2022/CSSASBSC/indice.asp
        YEAR => 2022,
        CITY => 'Salsomaggiore',
        DATE_START => '2022-09-22', # Thu
        DATE_END => '2022-09-25' # Sun
      },
      '2023' =>
      {
        # https://www.federbridge.it/campionati/2023/CSSQSASBSC/indice.asp
        YEAR => 2023,
        CITY => 'Salsomaggiore',
        DATE_START => '2023-02-23', # Thu
        DATE_END => '2023-02-26' # Sun
      },
      '2024' =>
      {
        # https://www.federbridge.it/campionati/2024/CSSQSASBSC/indice.asp
        YEAR => 2024,
        CITY => 'Salsomaggiore',
        DATE_START => '2024-02-29', # Thu
        DATE_END => '2024-03-03' # Sun
      }
    }
  },

  'Italy Cup' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-06-05', # Sat
        DATE_END => '2004-06-08' # Tue
      },
      '2005' =>
      {
        YEAR => 2005,
        CITY => 'Bologna',
        DATE_START => '2005-12-10', # Sat
        DATE_END => '2005-12-11' # Sun
      },
      '2006' =>
      {
        YEAR => 2006,
        CITY => 'Bologna',
        DATE_START => '2006-12-14', # Thu
        DATE_END => '2006-12-17' # Sun
      },
      '2007' =>
      {
        YEAR => 2007,
        CITY => 'Salsomaggiore',
        DATE_START => '2007-12-14', # Fri
        DATE_END => '2007-12-16' # Sun
      },
      '2008' =>
      {
        YEAR => 2008,
        CITY => 'Salsomaggiore',
        DATE_START => '2008-12-12', # Fri
        DATE_END => '2008-12-14' # Sun
      },
      '2009' =>
      {
        CITY => 'Salsomaggiore',
        YEAR => 2009,
        DATE_START => '2009-12-11', # Fri
        DATE_END => '2009-12-13' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        CITY => 'Salsomaggiore',
        DATE_START => '2010-12-16', # Thu
        DATE_END => '2010-12-19' # Sun
      },
      '2011' =>
      {
        # https://www.federbridge.it/campionati/2011/CI/programma.asp?ciType=4I
        YEAR => 2011,
        CITY => 'Salsomaggiore',
        DATE_START => '2011-12-16', # Fri
        DATE_END => '2011-12-18' # Sun
      },
      '2012' =>
      {
        # https://www.federbridge.it/campionati/2012/CI/programma.asp?ciType=4I
        YEAR => 2012,
        CITY => 'Salsomaggiore',
        DATE_START => '2012-12-14', # Fri
        DATE_END => '2012-12-16' # Sun
      },
      '2013' =>
      {
        # https://www.federbridge.it/campionati/2013/ci/programma.asp?ciType=4I

        YEAR => 2013,
        CITY => 'Salsomaggiore',
        DATE_START => '2013-11-21', # Thu
        DATE_END => '2013-11-24' # Sun
      },
      '2014' =>
      {
        # https://www.federbridge.it/campionati/2014/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2014/CI/programma.asp?ciType=MIWI4I
        # https://www.federbridge.it/campionati/2014/CI/programma.asp?ciType=XI
        YEAR => 2014,
        CITY => 'Salsomaggiore',
        DATE_START => '2014-09-11', # Thu
        DATE_END => '2014-12-14' # Sun
      },
      '2015' =>
      {
        # https://www.federbridge.it/campionati/2015/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2015/CI/programma.asp?ciType=MIWI5I
        # https://www.federbridge.it/campionati/2015/CI/programma.asp?ciType=XI

        YEAR => 2015,
        CITY => 'Salsomaggiore',
        DATE_START => '2015-10-08', # Thu
        DATE_END => '2015-11-22' # Sun
      },
      '2016' =>
      {
        # https://www.federbridge.it/campionati/2016/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2016/CI/programma.asp?ciType=XI
        # https://www.federbridge.it/campionati/2016/CI/programma.asp?ciType=MIWI5I

        YEAR => 2016,
        CITY => 'Salsomaggiore',
        DATE_START => '2016-09-23', # Fri
        DATE_END => '2016-12-11' # Sun
      },
      '2017' =>
      {
        # https://www.federbridge.it/campionati/2017/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2017/CI/programma.asp?ciType=XI
        # https://www.federbridge.it/campionati/2017/CI/programma.asp?ciType=MIWI5I

        YEAR => 2017,
        CITY => 'Salsomaggiore',
        DATE_START => '2017-09-21', # Thu
        DATE_END => '2017-12-17' # Sun
      },
      '2018' =>
      {
        # https://www.federbridge.it/campionati/2018/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2018/CI/programma.asp?ciType=XI
        # https://www.federbridge.it/campionati/2018/CI/programma.asp?ciType=MIWI

        YEAR => 2018,
        CITY => 'Salsomaggiore',
        DATE_START => '2018-09-13', # Thu
        DATE_END => '2018-11-18' # Sun
      },
      '2019' =>
      {
        # https://www.federbridge.it/campionati/2019/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2019/CI/programma.asp?ciType=XI
        # https://www.federbridge.it/campionati/2019/CI/programma.asp?ciType=MIWI

        YEAR => 2019,
        CITY => 'Salsomaggiore',
        DATE_START => '2019-10-10', # Thu
        DATE_END => '2019-11-24' # Sun
      },
      '2020' =>
      {
        YEAR => 2020,
        CITY => 'Salsomaggiore',
        DATE_START => '2020-10-28', # Wed
        DATE_END => '2020-10-30' # Fri
      },
      '2022' =>
      {
        # https://www.federbridge.it/campionati/2022/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2022/CI/programma.asp?ciType=XI
        #  https://www.federbridge.it/campionati/2022/CI/programma.asp?ciType=MIWI

        YEAR => 2022,
        CITY => 'Salsomaggiore',
        DATE_START => '2022-10-12', # Wed
        DATE_END => '2022-10-30' # Sun
      },
      '2023' =>
      {
        # https://www.federbridge.it/campionati/2023/CI/programma.asp?ciType=OI
        # https://www.federbridge.it/campionati/2023/CI/programma.asp?ciType=XI
        # https://www.federbridge.it/campionati/2023/CI/programma.asp?ciType=MIWI

        YEAR => 2023,
        CITY => 'Salsomaggiore',
        DATE_START => '2023-09-28', # Thu
        DATE_END => '2023-12-10' # Sun
      },
      '2024' =>
      {
        # https://www.federbridge.it/campionati/indice.asp?cYear=2024
        # Not yet available (as of 2024-09-04)
        # 

        YEAR => 2024,
        CITY => 'Salsomaggiore',
        DATE_START => '2024-10-10', # Thu
        DATE_END => '2024-12-15' # Sun
      },
    }
  }
);

my %TOURNAMENTS_ITALY =
(
  'Angelini Teams' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        YEAR => 2012,
        CHAPTERS => 
        {
          'C0' =>
          {
            DATE_START => '2012-10-06', # Sat
            DATE_END => '2012-10-06' # Sat
          }
        }
      },
    }
  },

  'Bologna Trophy' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    CITY => 'Bologna',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        YEAR => 2012,
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'ROUND',
            DATE_START => '2012-10-06', # Sat
            DATE_END => '2012-10-06' # Sat
          }
        }
      },
      '2014' =>
      {
        YEAR => 2014,
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'ROUND',
            DATE_START => '2014-10-04', # Sat
            DATE_END => '2014-10-04' # Sat
          }
        }
      },
    }
  },

  'Italian Club Open Championship' =>
  {
    AGE => 'Open',
    GENDER => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2004-12-16', # Thu
            DATE_END => '2004-12-16' # Thu
          } ,
          'C1' =>
          {
            STAGE => => 'Final',
            major => 'ROUND',
            DATE_START => '2004-12-16', # Thu
            DATE_END => '2004-12-16' # Thu
          } 
        }
      },
      '2005' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Qualifying',
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2005-02-12', # Sat
            DATE_END => '2005-02-13' # Sun
          },
          'C1' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-04-07', # Thu
            DATE_END => '2005-04-07' # Thu
          },
          'C2' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-04-08', # Fri
            DATE_END => '2005-04-08' # Fri
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2006-09-28', # Thu
            DATE_END => '2006-09-29' # Fri
          } ,
          'C1' =>
          {
            STAGE => => 'Final',
            major => 'ROUND',
            DATE_START => '2006-09-30', # Sat
            DATE_END => '2006-10-01' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2007-10-27', # Sat
            DATE_END => '2007-10-27' # Sat
          } ,
          'C1' =>
          {
            STAGE => => 'Final',
            major => 'ROUND',
            DATE_START => '2007-10-28', # Sun
            DATE_END => '2007-10-28' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-09-18', # Thu
            DATE_END => '2008-09-19' # Fri
          },
          'C1' =>
          {
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2008-09-19', # Fri
            DATE_END => '2008-09-20' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-19', # Fri
            DATE_END => '2008-09-21' # Sun
          }
        }
      },
      '2009' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-24', # Thu
            DATE_END => '2009-09-25' # Fri
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-25', # Fri
            DATE_END => '2009-09-27' # Sun
          }
        }
      },
      '2010' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-09-23', # Thu
            DATE_END => '2010-09-24' # Fri
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-09-24', # Fri
            DATE_END => '2010-09-26' # Sun
          }
        }
      },
      '2011' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-09-22', # Thu
            DATE_END => '2011-09-23' # Fri
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-09-23', # Fri
            DATE_END => '2011-09-25' # Sun
          }
        }
      },
      '2012' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-09-27', # Thu
            DATE_END => '2012-09-28' # Fri
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-09-28', # Fri
            DATE_END => '2012-09-30' # Sun
          }
        }
      },
      '2013' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-03', # Thu
            DATE_END => '2013-10-03' # Thu
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-04', # Fri
            DATE_END => '2013-10-04' # Fri
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-05', # Sat
            DATE_END => '2013-10-06' # Sun
          }
        }
      },
      '2014' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-09-25', # Thu
            DATE_END => '2014-09-25' # Thu
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-26', # Fri
            DATE_END => '2014-09-27' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-27', # Sat
            DATE_END => '2014-09-28' # Sun
          }
        }
      },
      '2015' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-19', # Fri
            DATE_END => '2015-06-20' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-20', # Sat
            DATE_END => '2015-06-21' # Sun
          }
        }
      },
      '2016' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-05-19', # Thu
            DATE_END => '2016-05-20' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-20', # Fri
            DATE_END => '2016-05-21' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-21', # Sat
            DATE_END => '2016-05-22' # Sun
          }
        }
      },
      '2017' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2017-05-18', # Thu
            DATE_END => '2017-05-19' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-05-19', # Fri
            DATE_END => '2017-05-20' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-05-20', # Sat
            DATE_END => '2017-05-21' # Sun
          }
        }
      },
      '2018' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2018-04-05', # Thu
            DATE_END => '2018-04-06' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-04-06', # Fri
            DATE_END => '2018-04-07' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-04-07', # Sat
            DATE_END => '2018-04-08' # Sun
          }
        }
      },
      '2019' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2019-04-04', # Thu
            DATE_END => '2019-04-05' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-04-05', # Fri
            DATE_END => '2019-04-06' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-04-06', # Sat
            DATE_END => '2019-04-07' # Sun
          }
        }
      },
      '2020' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2020-02-20', # Thu
            DATE_END => '2020-02-22' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2020-09-19', # Sat
            DATE_END => '2020-09-20' # Sun
          },
        }
      },
      '2022' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2022-09-22', # Thu
            DATE_END => '2022-09-24' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2022-09-24', # Sat
            DATE_END => '2022-09-25' # Sun
          }
        }
      },
      '2023' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2023-02-23', # Thu
            DATE_END => '2023-02-25' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-02-25', # Sat
            DATE_END => '2023-02-26' # Sun
          }
        }
      },
      '2024' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2024-02-29', # Thu
            DATE_END => '2024-03-02' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2024-03-02', # Sat
            DATE_END => '2024-03-03' # Sun
          }
        }
      }
    }
  },

  'Italian Club Women Championship' =>
  {
    AGE => 'Open',
    GENDER => 'Women',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            DATE_START => '2004-12-16', # Thu
            DATE_END => '2004-12-16' # Thu
          }
        }
      },
      '2006' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-09-30', # Sat
            DATE_END => '2006-10-01' # Sun
          }
        }
      },
      '2007' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-27', # Sat
            DATE_END => '2007-10-27' # Sat
          }
        }
      },
      '2008' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-09-18', # Thu
            DATE_END => '2008-09-19' # Fri
          }
        }
      },
      '2014' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-27', # Sat
            DATE_END => '2014-09-28' # Sun
          }
        }
      },
      '2017' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2017-05-18', # Thu
            DATE_END => '2017-05-19' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-05-19', # Fri
            DATE_END => '2017-05-20' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-05-20', # Sat
            DATE_END => '2017-05-21' # Sun
          }
        }
      },
      '2018' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2018-04-05', # Thu
            DATE_END => '2018-04-06' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-04-06', # Fri
            DATE_END => '2018-04-07' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-04-07', # Sat
            DATE_END => '2018-04-08' # Sun
          }
        }
      },
      '2019' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2019-04-04', # Thu
            DATE_END => '2019-04-05' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-04-05', # Fri
            DATE_END => '2019-04-06' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-04-06', # Sat
            DATE_END => '2019-04-07' # Sun
          }
        }
      },
      '2020' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2020-02-20', # Thu
            DATE_END => '2020-02-22' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2020-09-26', # Sat
            DATE_END => '2020-09-27' # Sun
          },
        }
      },
      '2022' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2022-09-22', # Thu
            DATE_END => '2022-09-24' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2022-09-24', # Sat
            DATE_END => '2022-09-25' # Sun
          }
        }
      },
      '2023' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2023-02-23', # Thu
            DATE_END => '2023-02-25' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-02-25', # Sat
            DATE_END => '2023-02-26' # Sun
          }
        }
      },
      '2024' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2024-02-29', # Thu
            DATE_END => '2024-03-02' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2024-03-02', # Sat
            DATE_END => '2024-03-03' # Sun
          }
        }
      }
    }
  },

  # Probably the same as Open Cup, but would take some relabeling
  # of Men into Open in the original files.
  'Italian Men Cup' =>
  {
    GENDER => 'Men',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-05', # Sat
            DATE_END => '2004-06-06' # Sun
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-06', # Sun
            DATE_END => '2004-06-07' # Mon
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-06-07', # Mon
            DATE_END => '2004-06-08' # Tue
          }
        }
      },
      '2005' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-12-10', # Sat
            DATE_END => '2005-12-10' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-12-10', # Sat
            DATE_END => '2005-12-11' # Sun
          }
        }
      },
      '2008' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2008-12-12', # Fri
            DATE_END => '2008-12-12' # Fri
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-12-12', # Fri
            DATE_END => '2008-12-13' # Sat
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-12-13', # Sat
            DATE_END => '2008-12-13' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-12-13', # Sat
            DATE_END => '2008-12-14' # Sun
          }
        }
      },
      '2009' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-12-11', # Fri
            DATE_END => '2009-12-11' # Fri
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-12-11', # Fri
            DATE_END => '2009-12-12' # Sat
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-12-12', # Sat
            DATE_END => '2009-12-12' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-12-12', # Sat
            DATE_END => '2009-12-13' # Sun
          }
        }
      },
      '2010' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-12-16', # Thu
            DATE_END => '2010-12-16' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-12-17', # Fri
            DATE_END => '2010-12-17' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-12-17', # Fri
            DATE_END => '2010-12-18' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-18', # Sat
            DATE_END => '2010-12-19' # Sun
          }
        }
      }
    }
  },

  'Italian Mixed Cup' =>
  {
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-10-29', # Wed
            DATE_END => '2014-10-29' # Wed
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-10-29', # Wed
            DATE_END => '2014-10-30' # Thu
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-30', # Thu
            DATE_END => '2014-10-30' # Thu
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-30', # Thu
            DATE_END => '2014-10-31' # Fri
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-10-31', # Fri
            DATE_END => '2014-11-01' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2015-10-28', # Wed
            DATE_END => '2015-10-28' # Wed
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-10-28', # Wed
            DATE_END => '2015-10-29' # Thu
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-29', # Thu
            DATE_END => '2015-10-29' # Thu
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-29', # Thu
            DATE_END => '2015-10-30' # Fri
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-30', # Fri
            DATE_END => '2015-10-30' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2016-10-28', # Fri
            DATE_END => '2016-10-28' # Fri
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-10-28', # Fri
            DATE_END => '2016-10-29' # Sat
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-10-29', # Sat
            DATE_END => '2016-10-29' # Sat
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-10-29', # Sat
            DATE_END => '2016-10-30' # Sun
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-10-30', # Sun
            DATE_END => '2016-10-30' # Sun
          } 
        }
      },
      '2017' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2017-10-28', # Sat
            DATE_END => '2017-10-28' # Sat
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2017-10-28', # Sat
            DATE_END => '2017-10-29' # Sun
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2017-10-29', # Sun
            DATE_END => '2017-10-29' # Sun
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-10-29', # Sun
            DATE_END => '2017-10-30' # Mon
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-10-30', # Mon
            DATE_END => '2017-10-30' # Mon
          } 
        }
      },
      '2018' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2018-10-31', # Wed
            DATE_END => '2018-10-31' # Wed
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2018-10-31', # Wed
            DATE_END => '2018-11-01' # Thu
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2018-11-01', # Thu
            DATE_END => '2018-11-01' # Thu
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-11-01', # Thu
            DATE_END => '2018-11-02' # Fri
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-11-02', # Fri
            DATE_END => '2018-11-02' # Fri
          } 
        }
      },
      '2019' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2019-10-30', # Wed
            DATE_END => '2019-10-30' # Wed
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2019-10-30', # Wed
            DATE_END => '2019-10-31' # Thu
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2019-10-31', # Thu
            DATE_END => '2019-10-31' # Thu
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-10-31', # Thu
            DATE_END => '2019-11-01' # Fri
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-11-01', # Fri
            DATE_END => '2019-11-01' # Fri
          } 
        }
      },
      '2020' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2020-10-28', # Wed
            DATE_END => '2020-10-28' # Wed
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2020-10-28', # Wed
            DATE_END => '2020-10-29' # Thu
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2020-10-29', # Thu
            DATE_END => '2020-10-29' # Thu
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2020-10-29', # Thu
            DATE_END => '2020-10-30' # Fri
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2020-10-30', # Fri
            DATE_END => '2020-10-30' # Fri
          } 
        }
      },
      '2023' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2023-10-28', # Sat
            DATE_END => '2023-10-28' # Sat
          },
          'C1' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2023-10-28', # Sat
            DATE_END => '2023-10-29' # Sun
          },
          'C2' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2023-10-29', # Sun
            DATE_END => '2023-10-29' # Sun
          },
          'C3' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-10-29', # Sun
            DATE_END => '2023-10-30' # Mon
          },
          'C4' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-10-30', # Mon
            DATE_END => '2023-10-30' # Mon
          } 
        }
      }
    }
  },

  'Italian Mixed Pairs' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        YEAR => 2014,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2014/CXCCMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            DATE_START => '2014-11-01', # Sat
            DATE_END => '2014-11-02' # Sun
          }
        }
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2015/CXCCMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-10-31', # Sat
            DATE_END => '2015-11-01' # Sun
          }
        }
      },
      '2016' =>
      {
        YEAR => 2016,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2016/CXCCMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-10-31', # Mon
            DATE_END => '2016-11-01' # Tue
          }
        }
      },
      '2017' =>
      {
        YEAR => 2017,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2017/CXCCMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2017-10-31', # Tue
            DATE_END => '2017-11-01' # Wed
          }
        }
      },
      '2018' =>
      {
        YEAR => 2018,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2018/CXCCMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2018-11-03', # Sat
            DATE_END => '2018-11-04' # Sun
          }
        }
      },
      '2019' =>
      {
        YEAR => 2019,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2019/CXCCMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2019-11-02', # Sat
            DATE_END => '2019-11-03' # Sun
          }
        }
      },
      '2022' =>
      {
        YEAR => 2022,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2022/CXCCMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2022-10-31', # Mon
            DATE_END => '2022-11-01' # Tue
          }
        }
      },
      '2023' =>
      {
        YEAR => 2023,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2023/CXCCLBMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2023-10-31', # Tue
            DATE_END => '2023-11-01' # Wed
          }
        }
      }
    }
  },

  'Italian Mixed Teams' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        YEAR => 2010,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2010/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-10-29', # Fri
            DATE_END => '2010-11-01' # Mon
          }
        }
      },
      '2011' =>
      {
        YEAR => 2011,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2011/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-10-30', # Sun
            DATE_END => '2011-11-01' # Tue
          }
        }
      },
      '2012' =>
      {
        YEAR => 2012,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2012/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-11-01', # Thu
            DATE_END => '2012-11-04' # Sun
          }
        }
      },
      '2013' =>
      {
        YEAR => 2013,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2013/CXSQMX/indice.asp
        
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-05-30', # Thu
            DATE_END => '2013-06-02' # Sun
          }
        }
      },
      '2014' =>
      {
        YEAR => 2014,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2014/CXSQMX/indice.asp
        
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-05-30', # Fri
            DATE_END => '2014-06-02' # Mon
          }
        }
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2015/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-30', # Sat
            DATE_END => '2015-06-02' # Tue
          }
        }
      },
      '2016' =>
      {
        YEAR => 2016,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2016/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-06-02', # Thu
            DATE_END => '2016-06-05' # Sun
          }
        }
      },
      '2017' =>
      {
        YEAR => 2017,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2017/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2017-06-01', # Thu
            DATE_END => '2017-06-04' # Sun
          }
        }
      },
      '2018' =>
      {
        YEAR => 2018,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2018/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2018-05-31', # Thu
            DATE_END => '2018-06-03' # Sun
          }
        }
      },
      '2019' =>
      {
        YEAR => 2019,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2019/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2019-05-30', # Thu
            DATE_END => '2019-06-02' # Sun
          }
        }
      },
      '2021' =>
      {
        YEAR => 2021,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2021/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2021-11-18', # Thu
            DATE_END => '2021-11-21' # Sun
          }
        }
      },
      '2022' =>
      {
        YEAR => 2022,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2022/CXSQMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2022-05-02', # Mon
            DATE_END => '2022-05-06' # Fri
          }
        }
      },
      '2023' =>
      {
        YEAR => 2023,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2023/CXSQLBMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2023-06-01', # Thu
            DATE_END => '2023-06-04' # Sun
          }
        }
      },
      '2024' =>
      {
        YEAR => 2024,
        CITY => 'Salsomaggiore',
        # Not yet available
        # https://www.federbridge.it/campionati/2023/CXSQLBMX/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2024-11-07', # Thu
            DATE_END => '2024-11-10' # Sun
          }
        }
      }
    }
  },

  'Italian Open Cup' =>
  {
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-12-14', # Thu
            DATE_END => '2006-12-15' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-12-15', # Fri
            DATE_END => '2006-12-16' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-12-16', # Sat
            DATE_END => '2006-12-17' # Sun
          }
        }
      },
      '2007' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2007-12-14', # Fri
            DATE_END => '2007-12-14' # Fri
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-12-14', # Fri
            DATE_END => '2007-12-15' # Sat
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-12-15', # Sat
            DATE_END => '2007-12-15' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-12-15', # Sat
            DATE_END => '2007-12-16' # Sun
          }
        }
      },
      '2009' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-12-11', # Fri
            DATE_END => '2009-12-11' # Fri
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-12-11', # Fri
            DATE_END => '2009-12-12' # Sat
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-12-12', # Sat
            DATE_END => '2009-12-12' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-12-12', # Sat
            DATE_END => '2009-12-13' # Sun
          }
        }
      },
      '2010' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-12-16', # Thu
            DATE_END => '2010-12-16' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-12-17', # Fri
            DATE_END => '2010-12-17' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-12-17', # Fri
            DATE_END => '2010-12-18' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-18', # Sat
            DATE_END => '2010-12-19' # Sun
          }
        }
      },
      '2011' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2011-12-16', # Fri
            DATE_END => '2011-12-16' # Fri
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-12-16', # Fri
            DATE_END => '2011-12-17' # Sat
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-12-17', # Sat
            DATE_END => '2011-12-17' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-17', # Sat
            DATE_END => '2011-12-18' # Sun
          }
        }
      },
      '2012' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-12-14', # Fri
            DATE_END => '2012-12-14' # Fri
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-14', # Fri
            DATE_END => '2012-12-15' # Sat
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-15', # Sat
            DATE_END => '2012-12-15' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-15', # Sat
            DATE_END => '2012-12-16' # Sun
          }
        }
      },
      '2013' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-11-21', # Thu
            DATE_END => '2013-11-21' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-21', # Thu
            DATE_END => '2013-11-22' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-22', # Fri
            DATE_END => '2013-11-22' # Fri
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-22', # Fri
            DATE_END => '2013-11-24' # Sun
          }
        }
      },
      '2014' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-12', # Fri
            DATE_END => '2014-09-13' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-13', # Sat
            DATE_END => '2014-09-14' # Sun
          },
          'C2' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-12-11', # Thu
            DATE_END => '2014-12-11' # Thu
          },
          'C3' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-12', # Fri
            DATE_END => '2014-12-12' # Fri
          },
          'C4' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-12', # Fri
            DATE_END => '2014-12-13' # Sat
          },
          'C5' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-14' # Sun
          }
        }
      },
      '2015' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-11-19', # Thu
            DATE_END => '2015-11-19' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-20', # Fri
            DATE_END => '2015-11-20' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2015-11-20', # Fri
            DATE_END => '2015-11-21' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-11-21', # Sat
            DATE_END => '2015-11-22' # Sun
          }
        }
      },
      '2016' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-12-08', # Thu
            DATE_END => '2016-12-08' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-12-09', # Fri
            DATE_END => '2016-12-09' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2016-12-09', # Fri
            DATE_END => '2016-12-10' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2016-12-10', # Sat
            DATE_END => '2016-12-11' # Sun
          }
        }
      },
      '2017' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2017-12-14', # Thu
            DATE_END => '2017-12-14' # Thu
          },
          'C1' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2017-12-15', # Fri
            DATE_END => '2017-12-15' # Fri
          },
          'C2' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-12-16', # Sat
            DATE_END => '2017-12-16' # Sat
          },
          'C3' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-12-16', # Sat
            DATE_END => '2017-12-17' # Sun
          } 
        }
      },
      '2018' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2018-11-15', # Thu
            DATE_END => '2018-11-15' # Thu
          },
          'C1' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2018-11-16', # Fri
            DATE_END => '2018-11-16' # Fri
          },
          'C2' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-11-16', # Fri
            DATE_END => '2018-11-17' # Sat
          },
          'C3' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-11-17', # Sat
            DATE_END => '2018-11-18' # Sun
          } 
        }
      },
      '2019' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2019-11-21', # Thu
            DATE_END => '2019-11-21' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2019-11-22', # Fri
            DATE_END => '2019-11-22' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-11-22', # Fri
            DATE_END => '2019-11-23' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-11-23', # Sat
            DATE_END => '2019-11-24' # Sun
          }
        }
      },
      '2022' =>
      {
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2022-11-17', # Thu
            DATE_END => '2022-11-17' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2022-11-18', # Fri
            DATE_END => '2022-11-18' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2022-11-18', # Fri
            DATE_END => '2022-11-19' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2022-11-19', # Sat
            DATE_END => '2022-11-20' # Sun
          }
        }
      },
      '2023' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2023-12-07', # Thu
            DATE_END => '2023-12-07' # Thu
          },
          'C1' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2023-12-07', # Thu
            DATE_END => '2023-12-08' # Fri
          },
          'C2' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2023-12-08', # Fri
            DATE_END => '2023-12-08' # Fri
          },
          'C3' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-12-08', # Fri
            DATE_END => '2023-12-09' # Sat
          },
          'C4' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-12-09', # Sat
            DATE_END => '2023-12-10' # Sun
          }
        }
      }
    }
  },

  'Italian Open Teams' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
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
        YEAR => 2004,
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2004-04-28', # Wed
            DATE_END => '2004-04-30' # Fri
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2004-05-01', # Sat
            DATE_END => '2004-05-02' # Sun
          },
        }
      },
      '2006' =>
      {
        YEAR => 2006,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2006/CPSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-04-23', # Sun
            DATE_END => '2006-04-25' # Tue
          }
        }
      },
      '2010' =>
      {
        YEAR => 2010,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2010/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-04-29', # Thu
            DATE_END => '2010-05-02' # Sun
          }
        }
      },
      '2011' =>
      {
        YEAR => 2011,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2011/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-04-28', # Thu
            DATE_END => '2011-05-01' # Sun
          }
        }
      },
      '2012' =>
      {
        YEAR => 2012,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2012/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-04-28', # Sat
            DATE_END => '2012-05-01' # Tue
          }
        }
      },
      '2013' =>
      {
        YEAR => 2013,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2013/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-04-25', # Thu
            DATE_END => '2013-04-28' # Sun
          }
        }
      },
      '2014' =>
      {
        YEAR => 2014,
        CITY => 'Salsomaggiore',
        #  https://www.federbridge.it/campionati/2014/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-04-24', # Thu
            DATE_END => '2014-04-27' # Sun
          }
        }
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2015/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-04-30', # Thu
            DATE_END => '2015-05-03' # Sun
          }
        }
      },
      '2016' =>
      {
        YEAR => 2016,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2016/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-04-22', # Fri
            DATE_END => '2016-04-25' # Mon
          }
        }
      },
      '2017' =>
      {
        YEAR => 2017,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2017/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2017-04-22', # Sat
            DATE_END => '2017-04-25' # Tue
          }
        }
      },
      '2018' =>
      {
        YEAR => 2018,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2018/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2018-04-28', # Sat
            DATE_END => '2018-05-01' # Tue
          }
        }
      },
      '2019' =>
      {
        YEAR => 2019,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2019/CXSQLBSG/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2019-04-25', # Thu
            DATE_END => '2019-04-28' # Sun
          }
        }
      },
      '2021' =>
      {
        YEAR => 2021,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2021/CXSQLB/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2021-10-29', # Fri
            DATE_END => '2021-11-01' # Mon
          }
        }
      },
      '2022' =>
      {
        YEAR => 2022,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2022/CXSQLB/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2022-04-22', # Fri
            DATE_END => '2022-04-25' # Mon
          }
        }
      },
      '2023' =>
      {
        YEAR => 2023,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2023/CXSQLBOP/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2023-04-28', # Fri
            DATE_END => '2023-05-01' # Mon
          }
        }
      },
      '2024' =>
      {
        YEAR => 2024,
        CITY => 'Salsomaggiore',
        #  Not yet available

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2024-09-26', # Thu
            DATE_END => '2024-09-29' # Sun
          }
        }
      }
    }
  },

  'Italian Open Trials' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
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
        # https://www.federbridge.it/campionati/2014/SSSQOP/indice.asp
        YEAR => 2014,
        CITY => 'Salsomaggiore',
        CHAPTERS => 
        {
          'C0' =>
          {
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-01-31', # Fri
            DATE_END => '2014-02-01' # Sat
          },
          'C1' =>
          {
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-02-02', # Sun
            DATE_END => '2014-02-02' # Sun
          },

          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-02-13', # Thu
            DATE_END => '2014-02-14' # Fri
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-02-14', # Fri
            DATE_END => '2014-02-16' # Sun
          } 
        }
      }
    }
  },

  'Italian O55 Cup' =>
  {
    GENDER => 'Open',
    AGE => 'O55',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            YEAR => '2004',
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-07', # Mon
            DATE_END => '2004-06-07' # Mon
          },
        }
      },
    }
  },

  'Italian Senior Cup' =>
  {
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-09-11', # Thu
            DATE_END => '2014-09-12' # Fri
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-12', # Fri
            DATE_END => '2014-09-12' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-12', # Fri
            DATE_END => '2014-09-13' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-13', # Sat
            DATE_END => '2014-09-14' # Sun
          }
        }
      },
      '2015' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-08' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-09', # Fri
            DATE_END => '2015-10-09' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-09', # Fri
            DATE_END => '2015-10-10' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-10', # Sat
            DATE_END => '2015-10-11' # Sun
          }
        }
      },
      '2016' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            MOVEMENT => 'Swiss',
            major => 'SEGMENT',
            DATE_START => '2016-09-23', # Fri
            DATE_END => '2016-09-26' # Mon
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-09-26', # Mon
            DATE_END => '2016-09-27' # Tue
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-09-27', # Tue
            DATE_END => '2016-09-27' # Tue
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-09-28', # Wed
            DATE_END => '2016-09-28' # Wed
          }
        }
      },
      '2017' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2017-09-21', # Thu
            DATE_END => '2017-09-21' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2017-09-22', # Fri
            DATE_END => '2017-09-22' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-09-22', # Fri
            DATE_END => '2017-09-23' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-09-23', # Sat
            DATE_END => '2017-09-24' # Sun
          }
        }
      },
      '2018' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2018-09-13', # Thu
            DATE_END => '2018-09-13' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2018-09-13', # Thu
            DATE_END => '2018-09-14' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-09-14', # Fri
            DATE_END => '2018-09-15' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-09-15', # Sat
            DATE_END => '2018-09-16' # Sun
          }
        }
      },
      '2019' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2019-10-10', # Thu
            DATE_END => '2019-10-10' # Thu
          },
          'C1' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2019-10-10', # Thu
            DATE_END => '2019-10-11' # Fri
          },
          'C2' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2019-10-11', # Fri
            DATE_END => '2019-10-11' # Fri
          },
          'C3' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-10-11', # Fri
            DATE_END => '2019-10-12' # Sat
          },
          'C4' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-10-12', # Sat
            DATE_END => '2019-10-13' # Sun
          }
        }
      },
      '2022' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2022-10-12', # Wed
            DATE_END => '2022-10-12' # Wed
          },
          'C1' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2022-10-12', # Wed
            DATE_END => '2022-10-13' # Thu
          },
          'C2' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2022-10-13', # Thu
            DATE_END => '2022-10-13' # Thu
          },
          'C3' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2022-10-13', # Thu
            DATE_END => '2022-10-14' # Fri
          },
          'C4' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2022-10-14', # Fri
            DATE_END => '2022-10-14' # Fri
          }
        }
      },
      '2023' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2023-09-28', # Thu
            DATE_END => '2023-09-28' # Thu
          },
          'C1' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2023-09-28', # Thu
            DATE_END => '2023-09-29' # Fri
          },
          'C2' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2023-09-29', # Fri
            DATE_END => '2023-09-29' # Fri
          },
          'C3' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-09-29', # Fri
            DATE_END => '2023-09-30' # Sat
          },
          'C4' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-09-30', # Sat
            DATE_END => '2023-10-01' # Sun
          }
        }
      }
    }
  },

  'Italian Senior Trials' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2014' =>
      {
        YEAR => 2014,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2014/SSSN/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-03-07', # Fri
            DATE_END => '2014-03-08' # Sat
          },
          'C1' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-03-09', # Sun
            DATE_END => '2014-03-09' # Sun
          },

          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-03', # Thu
            DATE_END => '2014-04-04' # Fri
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-04', # Fri
            DATE_END => '2014-04-06' # Sun
          }
        }
      }
    }
  },

  'Italian U36 Teams' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U36',

    EDITIONS =>
    {
      '2016' =>
      {
        YEAR => 2016,
        CITY => 'Salsomaggiore',
        # https://www.federbridge.it/campionati/2016/CU/indice.asp

        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-03-25', # Fri
            DATE_END => '2016-03-26' # Sat
          }
        }
      }
    }
  },

  'Italian Women Cup' =>
  {
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-05', # Sat
            DATE_END => '2004-06-06' # Sun
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-06', # Sun
            DATE_END => '2004-06-07' # Mon
          }
        }
      },
      '2005' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'SEGMENT',
            DATE_START => '2005-12-10', # Sat
            DATE_END => '2005-12-10' # Sat
          }
        }
      },
      '2010' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-18', # Sat
            DATE_END => '2010-12-19' # Sun
          }
        }
      },
      '2012' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-15', # Sat
            DATE_END => '2012-12-16' # Sun
          }
        }
      },
      '2013A' =>
      {
        MEET => 'Italian Club Championship',
        MEET_TAG => '2013',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-06', # Sun
            DATE_END => '2013-10-06' # Sun
          }
        }
      },
      '2013B' =>
      {
        MEET => 'Italy Cup',
        MEET_TAG => '2013',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-24', # Sun
            DATE_END => '2013-11-24' # Sun
          }
        }
      },
      '2016' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-12-08', # Thu
            DATE_END => '2016-12-08' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-12-09', # Fri
            DATE_END => '2016-12-09' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2016-12-09', # Fri
            DATE_END => '2016-12-10' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2016-12-10', # Sat
            DATE_END => '2016-12-11' # Sun
          }
        }
      },
      '2017' =>
      {
        MEET => 'Italian Club Championship',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2017-05-18', # Thu
            DATE_END => '2017-05-19' # Fri
          },
          'C1' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2017-05-19', # Fri
            DATE_END => '2017-05-20' # Sat
          },
          'C2' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2017-05-20', # Sat
            DATE_END => '2017-05-21' # Sun
          }
        }
      },
      '2018' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2018-11-15', # Thu
            DATE_END => '2018-11-15' # Thu
          },
          'C1' =>
          {
            STAGE => => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2018-11-16', # Fri
            DATE_END => '2018-11-16' # Fri
          },
          'C2' =>
          {
            STAGE => => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2018-11-16', # Fri
            DATE_END => '2018-11-17' # Sat
          },
          'C3' =>
          {
            STAGE => => 'Final',
            major => 'SEGMENT',
            DATE_START => '2018-11-17', # Sat
            DATE_END => '2018-11-18' # Sun
          } 
        }
      },
      '2019' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2019-11-21', # Thu
            DATE_END => '2019-11-21' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2019-11-22', # Fri
            DATE_END => '2019-11-22' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2019-11-22', # Fri
            DATE_END => '2019-11-23' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2019-11-23', # Sat
            DATE_END => '2019-11-24' # Sun
          }
        }
      },
      '2022' =>
      {
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2022-11-17', # Thu
            DATE_END => '2022-11-17' # Thu
          },
          'C1' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2022-11-18', # Fri
            DATE_END => '2022-11-18' # Fri
          },
          'C2' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2022-11-18', # Fri
            DATE_END => '2022-11-19' # Sat
          },
          'C3' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2022-11-19', # Sat
            DATE_END => '2022-11-20' # Sun
          }
        }
      },
      '2023' =>
      {
        MEET => 'Italy Cup',
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2023-12-07', # Thu
            DATE_END => '2023-12-07' # Thu
          },
          'C1' =>
          {
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2023-12-07', # Thu
            DATE_END => '2023-12-08' # Fri
          },
          'C2' =>
          {
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2023-12-08', # Fri
            DATE_END => '2023-12-08' # Fri
          },
          'C3' =>
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2023-12-08', # Fri
            DATE_END => '2023-12-09' # Sat
          },
          'C4' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2023-12-09', # Sat
            DATE_END => '2023-12-10' # Sun
          }
        }
      }
    }
  },

  'Festival della Matematica Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Festival della Matematica',
        CHAPTERS => 
        {
          'C0' =>
          {
            YEAR => 2009,
            DATE_START => '2009-03-22', # Sun
            DATE_END => '2009-03-22' # Sun
          }
        }
      },
    }
  },

  'Milan Trophy' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    CITY => 'Milan',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        YEAR => 2012,
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'ROUND',
            DATE_START => '2012-12-08', # Sat
            DATE_END => '2012-12-09' # Sun
          }
        }
      },
      '2013' =>
      {
        YEAR => 2013,
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-14', # Sat
            DATE_END => '2013-12-15' # Sun
          }
        }
      }
    }
  },

  'Olona International Teams' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    REGION => 'Olona',
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
        YEAR => 2004,
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'ROUND',
            DATE_START => '2004-12-05', # Sun
            DATE_END => '2004-12-08' # Wed
          }
        }
      },
    }
  },

  'Rome Challenger Trophy' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    CITY => 'Rome',
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
        YEAR => 2010,
        CHAPTERS => 
        {
          'C0' =>
          {
            DATE_START => '2010-01-10', # Sun
            DATE_END => '2010-01-10' # Sun
          }
        }
      },
    }
  },

  'Torneo di Rastignano' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    CITY => 'Rastignano',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        YEAR => 2012,
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'ROUND',
            DATE_START => '2012-09-08', # Sat
            DATE_END => '2012-09-08' # Sat
          }
        }
      },
      '2013' =>
      {
        YEAR => 2013,
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2013-09-07', # Sat
            DATE_END => '2013-09-07' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-07', # Sat
            DATE_END => '2013-09-07' # Sat
          }
        }
      },
      '2014' =>
      {
        YEAR => 2014,
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-09-06', # Sat
            DATE_END => '2014-09-06' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-06', # Sat
            DATE_END => '2014-09-06' # Sat
          }
        }
      },
      '2015' =>
      {
        YEAR => 2015,
        CHAPTERS => 
        {
          'C0' =>
          {
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
          },
          'C1' =>
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
          }
        }
      },
    }
  },

  'Torneo di Roma' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    CITY => 'Rome',
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
        YEAR => 2013,
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'ROUND',
            DATE_START => '2013-10-11', # Fri
            DATE_END => '2013-10-13' # Sun
          }
        }
      },
      '2014' =>
      {
        YEAR => 2014,
        CHAPTERS => 
        {
          'C0' =>
          {
            DATE_START => '2014-10-11', # Sat
            DATE_END => '2014-10-12' # Sun
          }
        }
      },
    }
  },

  'Toscana Cup' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    CITY => 'Viareggio',
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
        YEAR => 2005,
        CHAPTERS => 
        {
          'C0' =>
          {
            major => 'SEGMENT',
            DATE_START => '2005-02-09', # Wed
            DATE_END => '2005-02-09' # Wed
          }
        }
      },
    }
  },

  'Viareggio Cup' =>
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    CITY => 'Viareggio',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        YEAR => 2005,
        CHAPTERS => 
        {
          'C0' =>
          {
            DATE_START => '2005-04-08', # Fri
            DATE_END => '2005-04-08' # Fri
          }
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_ITALY, \%TOURNAMENTS_ITALY, 'Italy');
}

1;
