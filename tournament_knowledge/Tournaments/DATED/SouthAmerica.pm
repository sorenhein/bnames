#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::SouthAmerica;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Many links via Wayback Machine
# http://www.confsudbridge.org/Torneos/
# https://csbnews.org/ganadores-de-los-campeonatos-sudamericanos-19482015/


my %MEETS_SOUTHAMERICA =
(
  'South American Team Championship' =>
  {
    ORGANIZATION => 'CSB',
    ZONE => 'South America',
    ORIGIN => 'International',

    EDITIONS => 
    {
      '2004' =>
      {
        CITY => 'Sao Paulo',
        COUNTRY => 'Brazil',
        YEAR => 2004,
        DATE_START => '2004-06-13', # Dates unclear
        DATE_END => '2004-06-13' # Sun
      },
      '2005' =>
      {
        # ttp://www.confsudbridge.org/Torneos/Tor_0001.aspx
        ORDINAL => 55,
        CITY => 'Montevideo',
        COUNTRY => 'Uruguay',
        YEAR => 2005,
        DATE_START => '2005-06-10', # Dates unclear
        DATE_END => '2005-06-12' # Sun
      },
      '2006' =>
      {
        # http://www.confsudbridge.org/Torneos/Tor_0002.aspx
        ORDINAL => 56,
        CITY => 'Cartagena',
        COUNTRY => 'Colombia',
        YEAR => 2006,
        DATE_START => '2006-05-01', # Dates unclear
        DATE_END => '2006-05-04' # Thu
      },
      '2007' =>
      {
        # http://www.confsudbridge.org/Torneos/Tor_0004.aspx
        ORDINAL => 57,
        CITY => 'Quito',
        COUNTRY => 'Ecuador',
        YEAR => 2007,
        DATE_START => '2007-06-07', # Dates unclear
        DATE_END => '2007-06-09' # Sat
      },
      '2008' =>
      {
        # http://www.confsudbridge.org/torneos/sudamericano2008.aspx
        # 58th South American
        ORDINAL => 58,
        CITY => 'Lima',
        COUNTRY => 'Peru',
        YEAR => 2008,
        DATE_START => '2008-06-14', # Sat
        DATE_END => '2008-06-22', # Sun
      },
      '2009' =>
      {
        # http://www.confsudbridge.org/torneos/sudamericano2009.aspx
        ORDINAL => 59,
        CITY => 'Santiago',
        COUNTRY => 'Chile',
        YEAR => 2009,
        DATE_START => '2009-05-16', # Sat
        DATE_END => '2009-05-23' # Sat
      },
      '2010' =>
      {
        # http://www.confsudbridge.org/torneos/mardelplata2010.htm
        # 3rd Transnational
        ORDINAL => 60,
        CITY => 'Mar Del Plata',
        COUNTRY => 'Argentina',
        YEAR => 2010,
        DATE_START => '2010-05-01', # Sat
        DATE_END => '2010-05-08' # Sat
      },
      '2011' =>
      {
        # http://www.confsudbridge.org/torneos/sudampar2011.aspx
        # 61st South American
        ORDINAL => 61,
        CITY => 'Asuncion',
        COUNTRY => 'Paraguay',
        YEAR => 2011,
        DATE_START => '2011-06-11', # Sat
        DATE_END => '2011-06-18' # Sat
      },
      '2012' =>
      {
        # http://www.confsudbridge.org/Torneos/montevideo2012.htm
        # 4th Transnational
        ORDINAL => 62,
        CITY => 'Montevideo',
        COUNTRY => 'Uruguay',
        YEAR => 2012,
        DATE_START => '2012-05-26', # Sat
        DATE_END => '2012-06-02' # Sat
      },
      '2013' =>
      {
        # http://angra2013.csbnews.org/
        # http://www.confsudbridge.org/Torneos/angra2013.htm
        ORDINAL => 63,
        CITY => 'Angra dos Reis',
        COUNTRY => 'Brazil',
        YEAR => 2013,
        DATE_START => '2013-05-25', # Sat
        DATE_END => '2013-06-01' # Sat
      },
      '2014' =>
      {
        # http://santiago2014.csbnews.org/
        ORDINAL => 64,
        CITY => 'Santiago',
        COUNTRY => 'Chile',
        YEAR => 2014,
        DATE_START => '2014-05-17', # Sat
        DATE_END => '2014-05-24' # Sat
      },
      '2015' =>
      {
        # http://buenosaires2015.csbnews.org/
        ORDINAL => 65,
        CITY => 'Buenos Aires',
        COUNTRY => 'Argentina',
        YEAR => 2015,
        DATE_START => '2015-05-09', # Sat
        DATE_END => '2015-05-16' # Sat
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-05-25', # Wed
        DATE_END => '2016-06-04' # Sat
      },
    }
  },

  'South American Trials' =>
  {
    ORGANIZATION => 'CSB',
    ZONE => 'South America',
    ORIGIN => 'International',

    EDITIONS => 
    {
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-04-18', # Sat
        DATE_END => '2009-04-19' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-03-26', # Sat
        DATE_END => '2011-04-03' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-11-08', # Sat
        DATE_END => '2014-11-10' # Mon
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-03-28', # Sat
        DATE_END => '2015-03-29' # Sun
      },
    }
  },
);

my %TOURNAMENTS_SOUTHAMERICA =
(
  'South American Junior Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2006A' =>
      {
        MEET => 'South American Team Championship',
        MEET_TAG => '2006',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-05-01', # Mon
            DATE_END => '2006-05-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-05-02', # Tue
            DATE_END => '2006-05-02' # Tue
          },
        }
      },
      '2006B' =>
      {
        MEET => 'South American Team Championship',
        MEET_TAG => '2006',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-05-03', # Wed
            DATE_END => '2006-05-03' # Wed
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            DATE_START => '2006-05-04', # Thu
            DATE_END => '2006-05-04' # Thu
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-25', # Wed
            DATE_END => '2016-05-26' # Thu
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-26', # Thu
            DATE_END => '2016-05-27' # Fri
          } 
        }
      },
    }
  },

  'South American Open Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'SESSION',
            DATE_START => '2012-05-26', # Sat
            DATE_END => '2012-05-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-05-28', # Mon
            DATE_END => '2012-05-29' # Tue
          } 
        }
      },
      '2014' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2014-05-19', # Mon
            DATE_END => '2014-05-20' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'TABLE',
            DATE_START => '2015-05-11', # Mon
            DATE_END => '2015-05-16' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-05-25', # Wed
            DATE_END => '2016-06-04' # Sat
          } 
        }
      },
    }
  },

  'South American Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-13', # Sun
            DATE_END => '2004-06-13' # Sun
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-06-13', # Sun
            DATE_END => '2004-06-13' # Sun
          } 
        }
      },
      '2005' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-06-10', # Fri
            DATE_END => '2005-06-12' # Sun
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-06-12', # Sun
            DATE_END => '2005-06-12' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-06-07', # Thu
            DATE_END => '2007-06-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-06-09', # Sat
            DATE_END => '2007-06-09' # Sat
          } 
        }
      },
      '2008' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-06-21', # Sat
            DATE_END => '2008-06-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-06-21', # Sat
            DATE_END => '2008-06-22' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-21', # Thu
            DATE_END => '2009-05-22' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-22', # Fri
            DATE_END => '2009-05-23' # Sat
          } 
        }
      },
      '2010' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-05-07', # Fri
            DATE_END => '2010-05-07' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-05-07', # Fri
            DATE_END => '2010-05-08' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-06-16', # Thu
            DATE_END => '2011-06-17' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-06-17', # Fri
            DATE_END => '2011-06-18' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-05-29', # Tue
            DATE_END => '2012-05-31' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-01', # Fri
            DATE_END => '2012-06-01' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-01', # Fri
            DATE_END => '2012-06-02' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-05-27', # Mon
            DATE_END => '2013-05-28' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-05-29', # Wed
            DATE_END => '2013-05-30' # Thu
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-30', # Thu
            DATE_END => '2013-05-31' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-01' # Sat
          },
        }
      },
      '2014' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-05-19', # Mon
            DATE_END => '2014-05-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-05-23', # Fri
            DATE_END => '2014-05-23' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-24', # Sat
            DATE_END => '2014-05-24' # Sat
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-07', # Sat
            DATE_END => '2015-03-08' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-11', # Mon
            DATE_END => '2015-05-14' # Thu
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-05-14', # Thu
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
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-05-30', # Mon
            DATE_END => '2016-06-01' # Wed
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-06-02', # Thu
            DATE_END => '2016-06-02' # Thu
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-06-03', # Fri
            DATE_END => '2016-06-03' # Fri
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-06-04', # Sat
            DATE_END => '2016-06-04' # Sat
          } 
        }
      },
    }
  },

  'South American Open Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'South American Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-04-18', # Sat
            DATE_END => '2009-04-19' # Sun
          } 
        }
      },
    }
  },

  'South American Senior Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2007' =>
      {
        # http://www.confsudbridge.org/Torneos/Tor_0003.aspx
        ORGANIZATION => 'CSB',
        ZONE => 'South America',
        ORIGIN => 'International',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            CITY => 'Rio de Janeiro',
            COUNTRY => 'Brazil',
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-06' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-11', # Mon
            DATE_END => '2015-05-13' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-16', # Sat
            DATE_END => '2015-05-16' # Sat
          } 
        }
      },
    }
  },

  'South American Senior Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'South American Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-03-26', # Sat
            DATE_END => '2011-03-27' # Sun
          } 
        }
      },
    }
  },

  'South American Women Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-06-10', # Fri
            DATE_END => '2005-06-10' # Fri
          } 
        }
      },
      '2009' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-21', # Thu
            DATE_END => '2009-05-23' # Sat
          } 
        }
      },
      '2010' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-05-07', # Fri
            DATE_END => '2010-05-07' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-05-08', # Sat
            DATE_END => '2010-05-08' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-06-16', # Thu
            DATE_END => '2011-06-16' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
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
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-24', # Sat
            DATE_END => '2014-05-24' # Sat
          } 
        }
      },
      '2015' =>
      {
        CHAPTERS =>
        {
          # Could be Trials
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-08', # Sun
            DATE_END => '2015-03-09' # Mon
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-11', # Mon
            DATE_END => '2015-05-13' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2015-05-15', # Fri
            DATE_END => '2015-05-15' # Fri
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-05-16', # Sat
            DATE_END => '2015-05-16' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'South American Team Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-05-25', # Wed
            DATE_END => '2016-06-04' # Sat
          } 
        }
      },
    }
  },

  'South American Women Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'South American Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-01', # Fri
            DATE_END => '2011-04-03' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'South American Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-11-08', # Sat
            DATE_END => '2014-11-10' # Mon
          } 
        }
      },
      '2015' =>
      {
        MEET => 'South American Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-28', # Sat
            DATE_END => '2015-03-29' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_SOUTHAMERICA, \%TOURNAMENTS_SOUTHAMERICA, 
    'South America');
}

1;
