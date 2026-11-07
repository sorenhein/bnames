#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Indonesia;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_INDONESIA =
(
  'Indonesian National Championship Week' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2005' =>
      {
        # 
        YEAR => 2005,
        DATE_START => '2005-04-22', # Fri
        DATE_END => '2005-04-27' # Wed
      },
      '2007' =>
      {
        # 
        YEAR => 2007,
        DATE_START => '2007-05-15', # Tue
        DATE_END => '2007-05-15' # Tue
      },
      '2008' =>
      {
        # 
        YEAR => 2008,
        DATE_START => '2008-05-04', # Sun
        DATE_END => '2008-05-04' # Sun
      },
      '2009' =>
      {
        # 
        YEAR => 2009,
        DATE_START => '2009-05-29', # Fri
        DATE_END => '2009-06-05' # Fri
      },
      '2010' =>
      {
        # 
        YEAR => 2010,
        DATE_START => '2010-04-25', # Sun
        DATE_END => '2010-05-01' # Sat
      },
      '2011' =>
      {
        # http://kejurnas2011.org/hasil/kejurnas/ (Wayback Machine)
        YEAR => 2011,
        DATE_START => '2011-06-05', # Sun
        DATE_END => '2011-06-12' # Sun
      },
      '2012' =>
      {
        # https://bridge.web.id/2012/kejurnas50/
        ORDINAL => 50,
        YEAR => 2012,
        CITY => 'Jakarta',
        DATE_START => '2012-04-14', # Sat
        DATE_END => '2012-04-22' # Sun
      },
      '2013' =>
      {
        # 
        YEAR => 2013,
        DATE_START => '2013-05-17', # Fri
        DATE_END => '2013-05-25' # Sat
      },
      '2014' =>
      {
        # https://bridge.web.id/2014/kejurnas/
        ORDINAL => 52,
        YEAR => 2014,
        CITY => 'Manado',
        DATE_START => '2014-09-14', # Sun
        DATE_END => '2014-09-21' # Sun
      },
      '2015' =>
      {
        # https://bridge.web.id/2015/kejurnas/
        ORDINAL => 53,
        YEAR => 2015,
        CITY => 'Aceh',
        DATE_START => '2015-05-09', # Sat
        DATE_END => '2015-05-16' # Sat
      },
      '2016' =>
      {
        # https://bridge.web.id/2016/kejurnas54/
        ORDINAL => 54,
        YEAR => 2016,
        CITY => 'Lubuklinggau',
        DATE_START => '2016-05-09', # Mon
        DATE_END => '2016-05-17' # Tue
      },
      '2018' =>
      {
        # https://bridge.web.id/2018/kejurnas/
        ORDINAL => 56,
        YEAR => 2018,
        CITY => 'Padang',
        DATE_START => '2018-12-06', # Thu
        DATE_END => '2018-12-15' # Sat
      },
      '2019' =>
      {
        # https://bridge.web.id/2019/kejurnas/antar-prov/
        # https://bridge.web.id/2019/kejurnas/open/
        ORDINAL => 57,
        YEAR => 2019,
        CITY => 'Jakarta',
        DATE_START => '2019-12-05', # Thu
        DATE_END => '2019-12-14' # Sat
      },
      '2022' =>
      {
        # https://bridge.web.id/2022/kejurnas/
        ORDINAL => 58,
        YEAR => 2022,
        CITY => 'Solo',
        DATE_START => '2022-11-25', # Fri
        DATE_END => '2022-12-04' # Sun
      },
    }
  },

  'Indonesian National Games' =>
  {
    # https://en.wikipedia.org/wiki/National_Sports_Week
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2004' =>
      {
        ORDINAL => 16,
        CITY => 'Palembang',
        YEAR => 2004,
        DATE_START => '2004-09-05', # Sun
        DATE_END => '2004-09-14' # Tue
      },
      '2008' =>
      {
        ORDINAL => 17,
        CITY => 'Tarakan',
        YEAR => 2008,
        DATE_START => '2008-07-06', # Sun
        DATE_END => '2008-07-17' # Thu
      },
      '2012' =>
      {
        ORDINAL => 18,
        CITY => 'Pekanbaru',
        YEAR => 2012,
        DATE_START => '2012-09-09', # Sun
        DATE_END => '2012-09-20' # Thu
      },
      '2016' =>
      {
        ORDINAL => 19,
        CITY => 'Bandung',
        YEAR => 2016,
        DATE_START => '2016-09-17', # Sat
        DATE_END => '2016-09-29' # Thu
      },
      '2021' =>
      {
        ORDINAL => 20,
        CITY => 'Jayapura',
        YEAR => 2021,
        DATE_START => '2021-10-02', # Sat
        DATE_END => '2021-10-15' # Fri
      },
      '2024' =>
      {
        ORDINAL => 21,
        CITY => 'Banda Aceh',
        YEAR => 2024,
        DATE_START => '2024-09-09', # Mon
        DATE_END => '2024-09-20' # Fri
      },
    }
  },

  'Indonesian National Pre-Sports Week' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2011' =>
      {
        # https://bridge.web.id/2011/prapon18/
        CITY => 'Pekanbaru',
        YEAR => 2011,
        DATE_START => '2011-09-30', # Fri
        DATE_END => '2011-10-08' # Sat
      },
      '2015' =>
      {
        # https://bridge.web.id/2015/pra-pon/
        CITY => 'Batam',
        YEAR => 2015,
        DATE_START => '2015-09-06', # Sun
        DATE_END => '2015-09-12' # Sat
      },
    }
  },

  'Indonesian Student Championship' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2012' =>
      {
        # https://bridge.web.id/2012/mhs/
        ORDINAL => 9,
        CITY => 'Jakarta',
        YEAR => 2012,
        DATE_START => '2012-05-16', # Wed
        DATE_END => '2012-05-20' # Sun
      },
      '2014' =>
      {
        # https://bridge.web.id/2014/kejurnas-mhs/
        ORDINAL => 12,
        CITY => 'Surabaya',
        YEAR => 2014,
        DATE_START => '2014-12-08', # Mon
        DATE_END => '2014-12-16' # Tue
      },
    }
  },

  'Indonesian University Championship' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2012' =>
      {
        # https://bridge.web.id/2012/mhs/
        CITY => 'Jakarta',
        YEAR => 2012,
        DATE_START => '2012-05-16', # Wed
        DATE_END => '2012-05-20' # Sun
      },
      '2014' =>
      {
        # https://bridge.web.id/2014/kejurnas-mhs/
        CITY => 'Surabaya',
        YEAR => 2014,
        DATE_START => '2014-12-08', # Mon
        DATE_END => '2014-12-16' # Tue
      },
    }
  },
);

my %TOURNAMENTS_INDONESIA =
(
  'Alex Nurdin Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CITY => 'Palembang',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-09-08', # Thu
            DATE_END => '2011-09-11' # Sun
          },
        }
      },
    }
  },

  'Electric Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-11-25', # Sun
            DATE_END => '2007-11-25' # Sun
          },
        }
      },
    }
  },

  'FTBC Tanjungpura University' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    CITY => 'Pontianak',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U31',

    EDITIONS =>
    {
      '2015' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-03-13', # Fri
            DATE_END => '2015-03-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            DATE_START => '2015-03-13', # Fri
            DATE_END => '2015-03-14' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-14', # Sat
            DATE_END => '2015-03-14' # Sat
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-15', # Sun
            DATE_END => '2015-03-15' # Sun
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
            major => 'SESSION',
            DATE_START => '2016-03-16', # Wed
            DATE_END => '2016-03-16' # Wed
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-03-18', # Fri
            DATE_END => '2016-03-19' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            DATE_START => '2016-03-19', # Sat
            DATE_END => '2016-03-19' # Sat
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            DATE_START => '2016-03-19', # Sat
            DATE_END => '2016-03-19' # Sat
          },
        }
      },
    }
  },

  'Gabrial UI Bastaman Cup' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-08-12', # Tue
            DATE_END => '2008-08-12' # Tue
          },
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2009-11-20', # Fri
            DATE_END => '2009-11-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-11-21', # Sat
            DATE_END => '2009-11-22' # Sun
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-07-22', # Thu
            DATE_END => '2010-07-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2010-07-24', # Sat
            DATE_END => '2010-07-25' # Sun
          },
        }
      }
    }
  },

  'Geologi Cup' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    SPONSOR => 'Telkom Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          } 
        }
      },
      '2009' =>
      {
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2009-12-18', # Fri
            DATE_END => '2009-12-18' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-12-19', # Sat
            DATE_END => '2009-12-20' # Sun
          } 
        }
      },
      '2010' =>
      {
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-12-10', # Fri
            DATE_END => '2010-12-10' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2010-12-11', # Sat
            DATE_END => '2010-12-12' # Sun
          } 
        }
      },
      '2011' =>
      {
        #  https://bridge.web.id/geologi/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-12-16', # Fri
            DATE_END => '2011-12-18' # Sun
          } 
        }
      },
      '2012' =>
      {
        # https://bridge.web.id/geologi/2012/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-08-03', # Fri
            DATE_END => '2012-08-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-08-04', # Sat
            DATE_END => '2012-08-05' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://bridge.web.id/geologi/2013/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2013-07-26', # Fri
            DATE_END => '2013-07-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-07-27', # Sat
            DATE_END => '2013-07-28' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://bridge.web.id/geologi/2014/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-07-11', # Fri
            DATE_END => '2014-07-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-07-12', # Sat
            DATE_END => '2014-07-13' # Sun
          } 
        }
      },
    }
  },

  'IBWI Women Cup' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Women',
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
            DATE_START => '2010-06-12', # Sat
            DATE_END => '2010-06-13' # Sun
          },
        }
      },
    }
  },

  'Indonesian Inter-City Championship' =>
  {
    ORIGIN => 'Intercity',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-05-29', # Fri
            DATE_END => '2009-05-31' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-31', # Sun
            DATE_END => '2009-05-31' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-01', # Mon
            DATE_END => '2009-06-01' # Mon
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-06-05', # Sun
            DATE_END => '2011-06-07' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-06-08', # Wed
            DATE_END => '2011-06-08' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-06-10', # Fri
            DATE_END => '2011-06-10' # Fri
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-06-11', # Sat
            DATE_END => '2011-06-12' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-05-17', # Fri
            DATE_END => '2013-05-21' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-21', # Tue
            DATE_END => '2013-05-22' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-22', # Wed
            DATE_END => '2013-05-22' # Wed
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-05-13', # Wed
            DATE_END => '2015-05-13' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-13', # Wed
            DATE_END => '2015-05-13' # Wed
          } 
        }
      },
    }
  },

  'Indonesian Inter-Club Championship' =>
  {
    ORIGIN => 'Interclub',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Qualifying',
            major => 'ROUND',
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
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2009-06-01', # Mon
            DATE_END => '2009-06-02' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2009-06-02', # Tue
            DATE_END => '2009-06-03' # Wed
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-06-03', # Wed
            DATE_END => '2009-06-05' # Fri
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-04-25', # Sun
            DATE_END => '2010-04-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2010-04-25', # Sun
            DATE_END => '2010-04-26' # Mon
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            DATE_START => '2010-04-26', # Mon
            DATE_END => '2010-04-26' # Mon
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            DATE_START => '2010-04-26', # Mon
            DATE_END => '2010-04-27' # Tue
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-04-27', # Tue
            DATE_END => '2010-04-27' # Tue
          },
          'C5' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-04-27', # Tue
            DATE_END => '2010-04-27' # Tue
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2012-04-17', # Tue
            DATE_END => '2012-04-19' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-19', # Thu
            DATE_END => '2012-04-19' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-20', # Fri
            DATE_END => '2012-04-20' # Fri
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-20', # Fri
            DATE_END => '2012-04-21' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2014-09-17', # Wed
            DATE_END => '2014-09-18' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2014-09-19', # Fri
            DATE_END => '2014-09-19' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2014-09-19', # Fri
            DATE_END => '2014-09-19' # Fri
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-20', # Sat
            DATE_END => '2014-09-20' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-05-14', # Thu
            DATE_END => '2015-05-14' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-05-15', # Fri
            DATE_END => '2015-05-15' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-05-15', # Fri
            DATE_END => '2015-05-15' # Fri
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-16', # Sat
            DATE_END => '2015-05-16' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2016-05-13', # Fri
            DATE_END => '2016-05-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-16', # Mon
            DATE_END => '2016-05-16' # Mon
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-16', # Mon
            DATE_END => '2016-05-16' # Mon
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-17', # Tue
            DATE_END => '2016-05-17' # Tue
          } 
        }
      },
    }
  },

  'Indonesian Inter-Province Championship' =>
  {
    ORIGIN => 'Interprovince',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-04-28', # Wed
            DATE_END => '2010-04-29' # Thu
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-04-30', # Fri
            DATE_END => '2010-04-30' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-04-30', # Fri
            DATE_END => '2010-05-01' # Sat
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-05-01', # Sat
            DATE_END => '2010-05-01' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-04-14', # Sat
            DATE_END => '2012-04-16' # Mon
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-14', # Sat
            DATE_END => '2012-04-16' # Mon
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-17', # Tue
            DATE_END => '2012-04-17' # Tue
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2014-09-14', # Sun
            DATE_END => '2014-09-15' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2014-09-16', # Tue
            DATE_END => '2014-09-16' # Tue
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2014-09-16', # Tue
            DATE_END => '2014-09-17' # Wed
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-10', # Sun
            DATE_END => '2015-05-12' # Tue
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-05-10', # Tue
            DATE_END => '2016-05-11' # Wed
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-11', # Wed
            DATE_END => '2016-05-12' # Thu
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-11', # Wed
            DATE_END => '2016-05-12' # Thu
          } 
        }
      },
    }
  },

  'Indonesian Invitational Teams' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-03-16', # Sat
            DATE_END => '2013-03-17' # Sun
          } 
        }
      },
    }
  },

  'Indonesian Junior League Online' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2015' =>
      {
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SECTION',
            DATE_START => '2015-12-18', # Fri
            DATE_END => '2015-12-18' # Fri
          }
        }
      },
    }
  },

  'Indonesian Men Pairs' =>
  {
    ORIGIN => 'National',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Men',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012A' =>
      {
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
      '2012B' =>
      {
        MEET => 'Indonesian National Games',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-12', # Wed
            DATE_END => '2012-09-13' # Thu
          },
        }
      },
      '2015' =>
      {
        MEET => 'Indonesian National Pre-Sports Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-07', # Mon
            DATE_END => '2015-09-11' # Fri
          },
        }
      },
    }
  },

  'Indonesian Men Teams' =>
  {
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Men',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Indonesian National Games',
        ORDINAL => 16,

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2004-09-09', # Thu
            DATE_END => '2004-09-10' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-09-13', # Mon
            DATE_END => '2004-09-13' # Mon
          },
          'C2' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-09-14', # Tue
            DATE_END => '2004-09-14' # Tue
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Indonesian National Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Bronze',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          },
        }
      },
      '2012' =>
      {
        MEET => 'Indonesian National Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-14', # Fri
            DATE_END => '2012-09-19' # Wed
          },
        }
      },
      '2015' =>
      {
        MEET => 'Indonesian National Pre-Sports Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-07', # Mon
            DATE_END => '2015-09-11' # Fri
          },
        }
      },
    }
  },

  'Indonesian Mixed Pairs' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012A' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-03', # Mon
            DATE_END => '2012-09-03' # Mon
          },
        }
      },
      '2012B' =>
      {
        MEET => 'Indonesian National Games',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-10', # Mon
            DATE_END => '2012-09-11' # Tue
          },
        }
      },
    }
  },

  'Indonesian Mixed Pair Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        # https://bridge.web.id/2016/seleknas2/
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2016-03-14', # Mon
            DATE_END => '2016-03-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2016-03-18', # Fri
            DATE_END => '2016-03-18' # Fri
          } 
        }
      },
    }
  },

  'Indonesian Mixed Teams' =>
  {
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Indonesian National Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-09-05', # Sun
            DATE_END => '2004-09-05' # Sun
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-09-05', # Sun
            DATE_END => '2004-09-05' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Indonesian National Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-06-08', # Wed
            DATE_END => '2011-06-09' # Thu
          } 
        }
      },
    }
  },

  'Indonesian Open Pair Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
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
            SCORING => 'IMP',
            major => 'ROUND',
            DATE_START => '2006-11-27', # Mon
            DATE_END => '2006-11-27' # Mon
          } 
        }
      },
      '2016' =>
      {
        # https://bridge.web.id/2016/seleknas2/
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            SCORING => 'MP',
            STAGE => 'Semifinal',
            major => 'SESSION',
            DATE_START => '2016-03-09', # Wed
            DATE_END => '2016-03-11' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            SCORING => 'MP',
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-03-11', # Fri
            DATE_END => '2016-03-13' # Sun
          } 
        }
      },
    }
  },

  'Indonesian Open Teams' =>
  {
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-04-22', # Fri
            DATE_END => '2005-04-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-04-27', # Wed
            DATE_END => '2005-04-27' # Wed
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
          }
        }
      },
      '2011' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-06-09', # Thu
            DATE_END => '2011-06-09' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Indonesian National Championship Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-05-23', # Thu
            DATE_END => '2013-05-23' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-24', # Fri
            DATE_END => '2013-05-24' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-24', # Fri
            DATE_END => '2013-05-24' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-25', # Sat
            DATE_END => '2013-05-25' # Sat
          } 
        }
      },
    }
  },

  'Indonesian Open Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            DATE_START => '2007-07-26', # Thu
            DATE_END => '2007-07-26' # Thu
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            DATE_START => '2007-07-27', # Fri
            DATE_END => '2007-07-27' # Fri
          } 
        }
      },
    }
  },

  'Indonesian Premier League' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            DATE_START => '2009-03-27', # Fri
            DATE_END => '2009-03-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-04-18', # Sat
            DATE_END => '2009-04-19' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-02', # Sat
            DATE_END => '2009-05-03' # Sun
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-08', # Fri
            DATE_END => '2009-05-10' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-01-29', # Fri
            DATE_END => '2010-01-31' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-02-19', # Fri
            DATE_END => '2010-02-21' # Sun
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-02-26', # Fri
            DATE_END => '2010-02-28' # Sun
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-20', # Sat
            DATE_END => '2010-03-21' # Sun
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-04-09', # Fri
            DATE_END => '2010-04-11' # Sun
          },
          'C5' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-04-09', # Fri
            DATE_END => '2010-04-11' # Sun
          },
          'C6' => 
          {
            YEAR => 2010,
            DATE_START => '2010-04-16', # Fri
            DATE_END => '2010-04-18' # Sun
          },
        }
      },
    }
  },

  'Indonesian Pre-Sports Open Teams' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Indonesian National Pre-Sports Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-30', # Fri
            DATE_END => '2011-10-05' # Wed
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indonesian National Pre-Sports Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-07', # Mon
            DATE_END => '2015-09-10' # Thu
          } 
        }
      },
    }
  },

  'Indonesian U16 Pair Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U16',

    EDITIONS =>
    {
      '2016' =>
      {
        # https://bridge.web.id/2016/seleknas2/
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-03-19', # Sat
            DATE_END => '2016-03-21' # Mon
          } 
        }
      },
    }
  },

  'Indonesian U18 Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U18',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Indonesian Student Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-17', # Thu
            DATE_END => '2012-05-17' # Thu
          } 
        }
      },
    }
  },

  'Indonesian U21 Pair Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2016-01-30', # Sat
            DATE_END => '2016-02-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SESSION',
            DATE_START => '2016-02-01', # Mon
            DATE_END => '2016-02-03' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-02-04', # Thu
            DATE_END => '2016-02-05' # Fri
          } 
        }
      },
    }
  },

  'Indonesian U21 Teams' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Indonesian Student Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-17', # Thu
            DATE_END => '2012-05-18' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-18', # Fri
            DATE_END => '2012-05-18' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-18', # Fri
            DATE_END => '2012-05-19' # Sat
          } 
        }
      },
      '2014' =>
      {
        # https://bridge.web.id/2014/kejurnas-mhs/
        CITY => 'Surabaya',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-12-12', # Fri
            DATE_END => '2014-12-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-15', # Mon
            DATE_END => '2014-12-15' # Mon
          } 
        }
      },
      '2015' =>
      {
        # https://bridge.web.id/2015/kejurnas-mhs/
        CITY => 'Semarang',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-11-03', # Tue
            DATE_END => '2015-11-04' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-04', # Wed
            DATE_END => '2015-11-04' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-04', # Wed
            DATE_END => '2015-11-05' # Thu
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-11-05', # Thu
            DATE_END => '2015-11-05' # Thu
          } 
        }
      },
    }
  },

  'Indonesian U26 Pair Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2016-01-30', # Sat
            DATE_END => '2016-02-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SESSION',
            DATE_START => '2016-02-01', # Mon
            DATE_END => '2016-02-03' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-02-04', # Thu
            DATE_END => '2016-02-05' # Fri
          } 
        }
      },
    }
  },

  'Indonesian U26 Teams' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Indonesian University Championship',
        ORDINAL => 14,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-17', # Thu
            DATE_END => '2012-05-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-18', # Fri
            DATE_END => '2012-05-18' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-19', # Sat
            DATE_END => '2012-05-19' # Sat
          } 
        }
      },
      '2014' =>
      {
        # https://bridge.web.id/2014/kejurnas-mhs/
        ORDINAL => 16,
        CITY => 'Surabaya',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-12-12', # Fri
            DATE_END => '2014-12-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-15', # Mon
            DATE_END => '2014-12-15' # Mon
          } 
        }
      },
      '2015' =>
      {
        # https://bridge.web.id/2015/kejurnas-mhs/
        CITY => 'Semarang',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-11-03', # Tue
            DATE_END => '2015-11-04' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-04', # Wed
            DATE_END => '2015-11-04' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-04', # Wed
            DATE_END => '2015-11-05' # Thu
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-11-05', # Thu
            DATE_END => '2015-11-05' # Thu
          } 
        }
      },
    }
  },

  'Indonesian U26 Women Pair Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2016-01-23', # Sat
            DATE_END => '2016-01-25' # Mon
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SESSION',
            DATE_START => '2016-01-25', # Mon
            DATE_END => '2016-01-27' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-01-27', # Wed
            DATE_END => '2016-01-29' # Fri
          } 
        }
      },
    }
  },

  'Indonesian U31 Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U31',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Indonesian University Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-16', # Wed
            DATE_END => '2012-05-19' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indonesian University Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-12-09', # Tue
            DATE_END => '2014-12-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-10', # Wed
            DATE_END => '2014-12-10' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-10', # Wed
            DATE_END => '2014-12-11' # Thu
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-11', # Thu
            DATE_END => '2014-12-11' # Thu
          } 
        }
      },
    }
  },

  'Indonesian U31 Women Teams' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U31',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Indonesian University Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-05-16', # Wed
            DATE_END => '2012-05-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2012-05-17', # Thu
            DATE_END => '2012-05-17' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-05-19', # Sat
            DATE_END => '2012-05-19' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indonesian University Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-09', # Tue
            DATE_END => '2014-12-11' # Thu
          } 
        }
      },
    }
  },

  'Indonesian Women Pairs' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012A' =>
      {
        MEET => 'Indonesian National Games',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-12', # Wed
            DATE_END => '2012-09-13' # Thu
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Indonesian National Games',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-15', # Sat
            DATE_END => '2012-09-16' # Sun
          } 
        }
      },
    }
  },

  'Indonesian Women Pair Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        # Link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-03-06', # Sun
            DATE_END => '2016-03-08' # Tue
          } 
        }
      },
    }
  },

  'Indonesian Women Teams' =>
  {
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Indonesian National Games',
        ORDINAL => 16,

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2004-09-09', # Thu
            DATE_END => '2004-09-09' # Thu
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Indonesian National Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Indonesian National Pre-Sports Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-10-05', # Wed
            DATE_END => '2011-10-05' # Wed
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
            DATE_START => '2012-09-14', # Fri
            DATE_END => '2012-09-18' # Tue
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Indonesian National Championship Week',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-10', # Sun
            DATE_END => '2015-05-10' # Sun
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Indonesian National Pre-Sports Week',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-10', # Thu
            DATE_END => '2015-09-10' # Thu
          } 
        }
      },
    }
  },

  'Indonesian Women Trials' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-07-26', # Thu
            DATE_END => '2007-07-26' # Thu
          } 
        }
      },
    }
  },

  "Kepri Governor's Cup" =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        ORDINAL => 2,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            major => 'SEGMENT',
            DATE_START => '2005-09-15', # Thu
            DATE_END => '2005-09-15' # Thu
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-09-16', # Fri
            DATE_END => '2005-09-16' # Fri
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-09-17', # Sat
            DATE_END => '2005-09-17' # Sat
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-09-18', # Sun
            DATE_END => '2005-09-18' # Sun
          },
        }
      },
      '2007' =>
      {
        ORDINAL => 4,
        CHAPTERS =>
        {
          # TODO Maybe one is Governor, one isn't?
          'C0' => 
          {
            YEAR => 2007,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-08-12', # Sun
            DATE_END => '2007-08-12' # Sun
          },
          'C2' => 
          {
            YEAR => 2007,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2007-08-27', # Mon
            DATE_END => '2007-08-27' # Mon
          } 
        }
      },
      '2008' =>
      {
        ORDINAL => 5,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2008-08-28', # Thu
            DATE_END => '2008-08-28' # Thu
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2008-08-28', # Thu
            DATE_END => '2008-08-28' # Thu
          } 
        }
      },
      '2009' =>
      {
        ORDINAL => 6,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2009-07-30', # Thu
            DATE_END => '2009-07-31' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-01', # Sat
            DATE_END => '2009-08-02' # Sun
          } 
        }
      },
      '2010' =>
      {
        ORDINAL => 7,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-11-05', # Fri
            DATE_END => '2010-11-05' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-11-06', # Sat
            DATE_END => '2010-11-07' # Sun
          } 
        }
      },
      '2011' =>
      {
        # https://bridge.web.id/2011/batam/
        ORDINAL => 8,
        CITY => 'Riau',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2011-07-21', # Thu
            DATE_END => '2011-07-22' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-07-23', # Sat
            DATE_END => '2011-07-24' # Sun
          } 
        }
      },
      '2012' =>
      {
        # https://bridge.web.id/2012/kepri-cup/
        ORDINAL => 9,
        CITY => 'Batam',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-11-23', # Fri
            DATE_END => '2012-11-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-24', # Sat
            DATE_END => '2012-11-25' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://bridge.web.id/2013/kepri-cup/
        ORDINAL => 10,
        CITY => 'Batam',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            major => 'SEGMENT',
            DATE_START => '2013-11-08', # Fri
            DATE_END => '2013-11-09' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-09', # Sat
            DATE_END => '2013-11-10' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://bridge.web.id/2014/kepri/
        ORDINAL => 11,
        CITY => 'Batam',

        CHAPTERS =>
        {
          # TODO Maybe one is Governor, one isn't?
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-08-28', # Thu
            DATE_END => '2014-08-30' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-08-30', # Sat
            DATE_END => '2014-08-31' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-09-20', # Sat
            DATE_END => '2014-09-21' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://bridge.web.id/2015/kepri/
        ORDINAL => 12,
        CITY => 'Batam',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-09-03', # Thu
            DATE_END => '2015-09-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-06' # Sun
          } 
        }
      },
      '2016' =>
      {
        ORDINAL => 13,
        CITY => 'Batam',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2016-08-19', # Fri
            DATE_END => '2016-08-20' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2016-08-20', # Sat
            DATE_END => '2016-08-21' # Sun
          } 
        }
      },
      '2017' =>
      {
        # https://bridge.web.id/2017/kepri/
        ORDINAL => 14,
        CITY => 'Batam',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-09-08', # Fri
            DATE_END => '2017-09-20' # Wed
          } 
        }
      },
      '2018' =>
      {
        # https://bridge.web.id/2018/kepri/
        ORDINAL => 15,
        CITY => 'Batam',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-07-13', # Fri
            DATE_END => '2018-07-15' # Sun
          } 
        }
      },
      '2019' =>
      {
        # https://bridge.web.id/2019/kepri/
        ORDINAL => 16,
        CITY => 'Batam',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-08-23', # Fri
            DATE_END => '2019-08-25' # Sun
          } 
        }
      },
    }
  },

  'Menpora-Pertamina Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-10-23', # Fri
            DATE_END => '2015-10-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-10-24', # Sat
            DATE_END => '2015-10-25' # Sun
          },
        }
      },
    }
  },

  'Pahlawan Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-12-14', # Sun
            DATE_END => '2014-12-14' # Sun
          },
        }
      },
    }
  },

  'Pertamina Field Tambun Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-12-03', # Fri
            DATE_END => '2010-12-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-04', # Sat
            DATE_END => '2010-12-05' # Sun
          },
        }
      },
      '2012' =>
      {
        # https://bridge.web.id/2012/pertamina/
        CITY => 'Bekasi',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-07-14', # Sat
            DATE_END => '2012-07-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-07-14', # Sat
            DATE_END => '2012-07-15' # Sun
          },
        }
      },
    }
  },

  'PLN Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        # https://bridge.web.id/2012/pln/
        CITY => 'Jakarta',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-10-18', # Thu
            DATE_END => '2012-10-21' # Sun
          },
        }
      },
      '2013' =>
      {
        # https://bridge.web.id/2013/pln/
        CITY => 'Jakarta',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-10-18', # Fri
            DATE_END => '2013-10-20' # Sun
          },
        }
      },
      '2015' =>
      {
        # https://bridge.web.id/2015/pln/
        CITY => 'Jakarta',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-10-16', # Fri
            DATE_END => '2015-10-17' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-10-17', # Sat
            DATE_END => '2015-10-18' # Sun
          },
        }
      },
    }
  },

  'PT Timah Invitational Teams' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            major => 'ROUND',
            DATE_START => '2011-05-04', # Wed
            DATE_END => '2011-05-08' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-05-27', # Fri
            DATE_END => '2011-05-29' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-15', # Thu
            DATE_END => '2011-09-18' # Sun
          } 
        }
      },
    }
  },

  'Rector University of Brawijaya Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    CITY => 'Malang',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            major => 'SESSION',
            DATE_START => '2013-06-08', # Sat
            DATE_END => '2013-06-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-06-09', # Sun
            DATE_END => '2013-06-09' # Sun
          },
        }
      },
    }
  },

  'Sarundajang Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        # Could be another similar tournament?
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-01-13', # Tue
            DATE_END => '2015-01-14' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-01-14', # Wed
            DATE_END => '2015-01-15' # Thu
          },
        }
      },
      '2015' =>
      {
        # https://bridge.web.id/2015/sarundajang/
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-08-26', # Wed
            DATE_END => '2015-08-28' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Knock-out',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2015-08-29', # Sat
            DATE_END => '2015-08-30' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-31', # Mon
            DATE_END => '2015-08-31' # Mon
          },
        }
      },
    }
  },

  'Semen Padang Cup' => 
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    CITY => 'Padang',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-07-05', # Thu
            DATE_END => '2012-07-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-07', # Sat
            DATE_END => '2012-07-08' # Sun
          },
        }
      },
    }
  },

  'Telkom Indonesia Open' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    SPONSOR => 'Telkom Indonesia',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        # https://bridge.web.id/telkom/2010/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-06-25', # Fri
            DATE_END => '2010-06-25' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2010-06-26', # Sat
            DATE_END => '2010-06-27' # Sun
          } 
        }
      },
      '2011' =>
      {
        # https://bridge.web.id/telkom/2011/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2011-07-08', # Fri
            DATE_END => '2011-07-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-07-09', # Sat
            DATE_END => '2011-07-10' # Sun
          } 
        }
      },
      '2012' =>
      {
        # https://bridge.web.id/telkom/2012/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-03-23', # Fri
            DATE_END => '2012-03-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-25' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://bridge.web.id/telkom/2013/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2013-04-19', # Fri
            DATE_END => '2013-04-20' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-04-20', # Sat
            DATE_END => '2013-04-21' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://bridge.web.id/telkom/2014/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-05-30', # Fri
            DATE_END => '2014-05-31' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-05-31', # Sat
            DATE_END => '2014-06-01' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://bridge.web.id/telkom/2015/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-11-27', # Fri
            DATE_END => '2015-11-28' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-11-28', # Sat
            DATE_END => '2015-11-29' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://bridge.web.id/telkom/2016/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-12-02', # Fri
            DATE_END => '2016-12-04' # Sun
          } 
        }
      },
      '2017' =>
      {
        # https://bridge.web.id/telkom/2017/
        CITY => 'Bandung',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-11-24', # Fri
            DATE_END => '2017-11-26' # Sun
          } 
        }
      },
      '2018' =>
      {
        # https://bridge.web.id/telkom/2018/
        CITY => 'Jakarta',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-11-15', # Thu
            DATE_END => '2018-11-17' # Sat
          } 
        }
      },
      '2019' =>
      {
        # https://bridge.web.id/telkom/2019/
        CITY => 'Jakarta',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-11-15', # Fri
            DATE_END => '2019-11-17' # Sun
          } 
        }
      },
      '2022' =>
      {
        # https://bridge.web.id/telkom/2022/
        CITY => 'Jakarta',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-10-28', # Fri
            DATE_END => '2022-10-30' # Sun
          } 
        }
      },
    }
  },

  'West Java Open Teams' =>
  {
    ORGANIZATION => 'GABSI',
    COUNTRY => 'Indonesia',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010A' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-07-07', # Wed
            DATE_END => '2010-07-07' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-07-08', # Thu
            DATE_END => '2010-07-08' # Thu
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-07-08', # Thu
            DATE_END => '2010-07-09' # Fri
          },
        }
      },
      '2010B' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-11-29', # Mon
            DATE_END => '2010-11-29' # Mon
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-11-16', # Sun
            DATE_END => '2014-11-16' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-17', # Mon
            DATE_END => '2014-11-17' # Mon
          },
        }
      },
    }
  },
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_INDONESIA, \%TOURNAMENTS_INDONESIA, 'Indonesia');
}

1;
