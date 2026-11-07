#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::World;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_WORLD =
(
  'FISU World University Championships' => 
  {
    # https://www.fisu.net/results/?related-sport=bridge
    ORGANIZATION => 'FISU',
    ZONE => 'World',
    AGE => 'U31',
    
    EDITIONS => 
    {
      '2006' =>
      {
        # https://www.fisu.net/events/2006-fisu-world-university-championships-bridge/?utm_source=results
        YEAR => 2006,
        CITY => 'Tianjin',
        COUNTRY => 'China',
        DATE_START => '2006-10-21', # Sat
        DATE_END => '2006-10-26' # Thu
      },
      '2008' =>
      {
        # https://www.fisu.net/events/2008-fisu-world-university-championships-bridge/?utm_source=results
        YEAR => 2008,
        CITY => 'Lodz',
        COUNTRY => 'Poland',
        DATE_START => '2008-09-03', # Wed
        DATE_END => '2008-09-08' # Mon
      },
      '2010' =>
      {
        # https://www.fisu.net/events/2010-fisu-world-university-championships-bridge/?utm_source=results
        YEAR => 2010,
        CITY => 'Kaohsiung',
        COUNTRY => 'Chinese Taipei',
        DATE_START => '2010-08-02', # Mon
        DATE_END => '2010-08-09' # Mon
      },
      '2012' =>
      {
        # https://www.fisu.net/events/2012-fisu-world-university-championships-bridge/?utm_source=results
        YEAR => 2012,
        CITY => 'Reims',
        COUNTRY => 'France',
        DATE_START => '2012-07-10', # Tue
        DATE_END => '2012-07-15' # Sun
      },
      '2014' =>
      {
        # https://www.fisu.net/events/2014-fisu-world-university-championships-bridge/?utm_source=results
        YEAR => 2014,
        CITY => 'Opatija',
        COUNTRY => 'Croatia',
        DATE_START => '2014-11-01', # Sat
        DATE_END => '2014-11-06' # Thu
      },
      '2016' =>
      {
        # https://www.fisu.net/events/2016-fisu-world-university-championships-bridge/?utm_source=results
        YEAR => 2016,
        CITY => 'Lodz',
        COUNTRY => 'Poland',
        DATE_START => '2016-08-23', # Tue
        DATE_END => '2016-08-28' # Sun
      },
      '2018' =>
      {
        # https://www.fisu.net/events/2018-fisu-world-university-championships-bridge/?utm_source=results
        YEAR => 2018,
        CITY => 'Xuzhou',
        COUNTRY => 'China',
        DATE_START => '2018-10-25', # Thu
        DATE_END => '2018-10-28' # Sun
      },
      '2020' =>
      {
        # https://www.fisu.net/events/2020-fisu-world-university-championships-mind-sports/?utm_source=results
        YEAR => 2020,
        CITY => 'Bydgoszcz',
        COUNTRY => 'Poland',
        DATE_START => '2020-10-26', # Mon
        DATE_END => '2020-10-30' # Fri
      },
      '2022' =>
      {
        # https://www.fisu.net/events/2022-fisu-world-university-championships-mind-sports/?utm_source=results
        YEAR => 2022,
        CITY => 'Antwerpen',
        COUNTRY => 'Belgium',
        DATE_START => '2022-09-12', # Mon
        DATE_END => '2022-09-17' # Sat
      },
      '2024' =>
      {
        # https://www.fisu.net/events/2024-fisu-world-university-championships-mind-sports/?utm_source=results
        YEAR => 2024,
        CITY => 'Entebbe',
        COUNTRY => 'Uganda',
        DATE_START => '2024-06-25', # Tue
        DATE_END => '2024-06-30' # Sun
      },
    }
  },

  'IMSA Elite Mind Games' => 
  {
    ORGANIZATION => 'CCBA',
    ZONE => 'World',
    COUNTRY => 'China',
    
    EDITIONS => 
    {
      '2016' =>
      {
        # http://db.worldbridge.org/Repository/tourn/HuaiAn.16/microSite/results.htm
        ORDINAL => 1,
        YEAR => 2016,
        CITY => 'Huai An',
        DATE_START => '2016-02-26', # Fri
        DATE_END => '2016-03-03' # Thu
      },
      '2017' =>
      {
        # http://db.worldbridge.org/Repository/tourn/HuaiAn.17/microSite/results.htm
        ORDINAL => 2,
        YEAR => 2017,
        CITY => 'Huai An',
        DATE_START => '2017-12-09', # Sat
        DATE_END => '2017-12-15' # Fri
      },
    }
  },

  'World Olympiad' =>
  {
    ORGANIZATION => 'WBF',
    ZONE => 'World',

    EDITIONS => 
    {
      '1996' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Rhodes.96/rhodes.htm
        ORDINAL => 10,
        YEAR => 1996,
        CITY => 'Rhodes',
        COUNTRY => 'Greece',
        DATE_START => '1996-10-19', # Sat
        DATE_END => '1996-11-02' # Sat
      },
      '2000' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Maastricht.00/default.htm
        ORDINAL => 11,
        YEAR => 2000,
        CITY => 'Maastricht',
        COUNTRY => 'Netherlands',
        DATE_START => '2000-08-26', # Sat
        DATE_END => '2000-09-09' # Sat
      },
      '2004' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Istanbul.04/Results.htm
        ORDINAL => 12,
        YEAR => 2004,
        CITY => 'Istanbul',
        COUNTRY => 'Turkey',
        DATE_START => '2004-10-23', # Sat
        DATE_END => '2004-11-06' # Sat
      },
    }
  },

  'World Series' =>
  {
    ORGANIZATION => 'WBF',
    ZONE => 'World',

    EDITIONS => 
    {
      '1998' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Lille.98/Lille.htm#table
        YEAR => 1998,
        CITY => 'Lille',
        COUNTRY => 'France',
        DATE_START => '1998-08-21', # Fri
        DATE_END => '1998-09-04' # Fri
      },
      '2002' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Montreal.02/Results.htm
        YEAR => 2002,
        CITY => 'Montreal',
        COUNTRY => 'Canada',
        DATE_START => '2002-08-16', # Fri
        DATE_END => '2002-08-31' # Sat
      },
      '2006' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Verona.06/Results.htm
        YEAR => 2006,
        CITY => 'Verona',
        COUNTRY => 'Italy',
        DATE_START => '2006-06-09', # Fri
        DATE_END => '2006-06-24' # Sat
      },
      '2010' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Philadelphia.10/Results.asp
        YEAR => 2010,
        CITY => 'Philadelphia',
        COUNTRY => 'USA',
        DATE_START => '2010-10-01', # Fri
        DATE_END => '2010-10-16' # Sat
      },
      '2014' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Sanya.14/microSite/results.htm
        YEAR => 2014,
        CITY => 'Sanya',
        COUNTRY => 'China',
        DATE_START => '2014-10-10', # Fri
        DATE_END => '2014-10-25' # Sat
      },
      '2016' =>
      {
        # http://db.worldbridge.org/Repository/tourn/wroclaw.16/microSite/results.htm
        YEAR => 2016,
        CITY => 'Wroclaw',
        COUNTRY => 'Poland',
        DATE_START => '2016-09-03', # Sat
        DATE_END => '2016-09-17' # Sat
      },
      '2022' =>
      {
        # http://db.worldbridge.org/Repository/tourn/wroclaw.22/microSite/Results.htm
        YEAR => 2022,
        CITY => 'Wroclaw',
        COUNTRY => 'Poland',
        DATE_START => '2022-08-19', # Fri
        DATE_END => '2022-09-03' # Sat
      },
    },
  },

  'World Mind Games' =>
  {
    ORGANIZATION => 'IMSA',
    ZONE => 'World',

    EDITIONS => 
    {
      '2008' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Beijing.08/Beijing.htm
        YEAR => 2008,
        CITY => 'Beijing',
        COUNTRY => 'China',
        DATE_START => '2008-10-03', # Fri
        DATE_END => '2008-10-18' # Sat
      },
      '2011' =>
      {
        # No link
        YEAR => 2011,
        CITY => 'Beijing',
        COUNTRY => 'China',
        DATE_START => '2011-12-09', # Fri
        DATE_END => '2011-12-16' # Fri
      },
      '2012A' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Lille.12/microSite/Lille.htm
        YEAR => 2012,
        CITY => 'Lille',
        COUNTRY => 'France',
        DATE_START => '2012-08-09', # Thu
        DATE_END => '2012-08-23' # Thu
      },
      '2012B' =>
      {
        # No link
        YEAR => 2012,
        CITY => 'Beijing',
        COUNTRY => 'China',
        DATE_START => '2012-12-13', # Thu
        DATE_END => '2012-12-19' # Wed
      },
      '2013' =>
      {
        # No link
        YEAR => 2013,
        CITY => 'Beijing',
        COUNTRY => 'China',
        DATE_START => '2013-12-12', # Thu
        DATE_END => '2013-12-18' # Wed
      },
      '2014' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Beijing.14/microSite/results.htm
        YEAR => 2014,
        CITY => 'Beijing',
        COUNTRY => 'China',
        DATE_START => '2014-12-11', # Thu
        DATE_END => '2014-12-17' # Wed
      },
    }
  },

  'World Team Championships' =>
  {
    ORGANIZATION => 'WBF',
    ZONE => 'World',

    EDITIONS => 
    {
      '1995' =>
      {
        YEAR => 1995,
        CITY => 'Beijing',
        COUNTRY => 'China',
        DATE_START => '1995-10-08', # Sun
        DATE_END => '1995-10-10' # Tue
      },
      '1997' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Tunisia.97/hammamet.htm
        YEAR => 1997,
        CITY => 'Hammamet',
        COUNTRY => 'Tunisia',
        DATE_START => '1997-10-19', # Sun
        DATE_END => '1997-11-01' # Sat
      },
      '2000' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Bermuda.00/default.htm
        YEAR => 2000,
        CITY => 'Southampton',
        COUNTRY => 'Bermuda',
        DATE_START => '2000-01-08', # Sat
        DATE_END => '2000-01-21' # Fri
      },
      '2001' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Paris.01/Paris.htm
        YEAR => 2001,
        CITY => 'Paris',
        COUNTRY => 'France',
        DATE_START => '2001-10-21', # Sun
        DATE_END => '2001-11-03' # Sat
      },
      '2003' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Montecarlo.03/Monaco.htm
        YEAR => 2003,
        CITY => 'Monte Carlo',
        COUNTRY => 'Monaco',
        DATE_START => '2003-11-02', # Sun
        DATE_END => '2003-11-15' # Sat
      },
      '2005' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Estoril.05/Estoril.htm
        YEAR => 2005,
        CITY => 'Estoril',
        COUNTRY => 'Portugal',
        DATE_START => '2005-10-22', # Sat
        DATE_END => '2005-11-05' # Sat
      },
      '2007' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Shanghai.07/Shanghai.htm
        YEAR => 2007,
        CITY => 'Shanghai',
        COUNTRY => 'China',
        DATE_START => '2007-09-29', # Sat
        DATE_END => '2007-10-13' # Sat
      },
      '2009' =>
      {
        # http://db.worldbridge.org/Repository/tourn/SaoPaulo.09/SaoPaulo.htm
        YEAR => 2009,
        CITY => 'São Paulo',
        COUNTRY => 'Brazil',
        DATE_START => '2009-08-29', # Sat
        DATE_END => '2009-09-12' # Sat
      },
      '2011' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Veldhoven.11/Veldhoven.htm
        YEAR => 2011,
        CITY => 'Veldhoven',
        COUNTRY => 'Netherlands',
        DATE_START => '2011-10-15', # Sat
        DATE_END => '2011-10-29' # Sat
      },
      '2013' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Bali.13/microSite/results.htm
        YEAR => 2013,
        CITY => 'Bali',
        COUNTRY => 'Indonesia',
        DATE_START => '2013-09-16', # Mon
        DATE_END => '2013-09-29' # Sun
      },
      '2015' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Chennai.15/microSite/results.htm
        YEAR => 2015,
        CITY => 'Chennai',
        COUNTRY => 'India',
        DATE_START => '2015-09-26', # Sat
        DATE_END => '2015-10-10' # Sat
      },
      '2017' =>
      {
        # http://db.worldbridge.org/Repository/tourn/lyon.17/microSite/results.htm
        YEAR => 2017,
        CITY => 'Lyon',
        COUNTRY => 'France',
        DATE_START => '2017-08-12', # Sat
        DATE_END => '2017-08-26' # Sat
      },
      '2019' =>
      {
        # http://db.worldbridge.org/Repository/tourn/wuhan.19/microSite/Results.htm
        YEAR => 2019,
        CITY => 'Wuhan',
        COUNTRY => 'China',
        DATE_START => '2019-09-14', # Sat
        DATE_END => '2019-09-28' # Sat
      },
      '2022' =>
      {
        # http://db.worldbridge.org/Repository/tourn/salsomaggiore.22/microSite/Results.htm
        YEAR => 2022,
        CITY => 'Salsomaggiore',
        COUNTRY => 'Italy',
        DATE_START => '2022-03-27', # Sun
        DATE_END => '2022-04-09' # Sat
      },
      '2023' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Marrakech.23/microSite/Results.htm
        YEAR => 2023,
        CITY => 'Marrakech',
        COUNTRY => 'Morocco',
        DATE_START => '2023-08-20', # Sun
        DATE_END => '2023-09-02' # Sat
      },
    }
  },

  'World Youth Championships' =>
  {
    ORGANIZATION => 'WBF',
    ZONE => 'World',

    EDITIONS => 
    {
      '2001' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Mangaratiba.01/Mangaratiba.htm
        ORDINAL => 8,
        YEAR => 2001,
        CITY => 'Rio de Janeiro',
        COUNTRY => 'Brazil',
        DATE_START => '2001-08-06', # Mon
        DATE_END => '2001-08-15' # Wed
      },
      '2003' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Paris.03/Paris.htm
        ORDINAL => 9,
        YEAR => 2003,
        CITY => 'Paris',
        COUNTRY => 'France',
        DATE_START => '2003-08-18', # Mon
        DATE_END => '2003-08-28' # Thu
      },
      '2005' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Sydney.05/Sydney.htm
        ORDINAL => 10,
        YEAR => 2005,
        CITY => 'Sydney',
        COUNTRY => 'Australia',
        DATE_START => '2005-08-07', # Sun
        DATE_END => '2005-08-17' # Wed
      },
      '2006' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Bangkok.06/Bangkok.htm
        ORDINAL => 11,
        YEAR => 2006,
        CITY => 'Bangkok',
        COUNTRY => 'Thailand',
        DATE_START => '2006-07-29', # Sat
        DATE_END => '2006-08-08' # Tue
      },
      '2012' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Taicang.12/microSite/Taicang.htm
        ORDINAL => 14,
        YEAR => 2012,
        CITY => 'Taicang',
        COUNTRY => 'China',
        DATE_START => '2012-07-25', # Wed
        DATE_END => '2012-08-04' # Sat
      },
      '2014' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Istanbul.14/microSite/results.htm
        ORDINAL => 15,
        YEAR => 2014,
        CITY => 'Istanbul',
        COUNTRY => 'Turkey',
        DATE_START => '2014-08-13', # Wed
        DATE_END => '2014-08-23' # Sat
      },
      '2016' =>
      {
        # http://db.worldbridge.org/Repository/tourn/salsomaggiore.16/microSite/results.htm
        ORDINAL => 16,
        YEAR => 2016,
        CITY => 'Salsomaggiore',
        COUNTRY => 'Italy',
        DATE_START => '2016-08-03', # Wed
        DATE_END => '2016-08-13' # Sat
      },
      '2018' =>
      {
        # http://db.worldbridge.org/repository/tourn/suzhou.18/microsite/Results.htm
        ORDINAL => 17,
        YEAR => 2018,
        CITY => 'Wujiang',
        COUNTRY => 'China',
        DATE_START => '2018-08-08', # Wed
        DATE_END => '2018-08-18' # Sat
      },
      '2023' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Veldhoven.23/microSite/Results.htm
        ORDINAL => 18,
        YEAR => 2023,
        CITY => 'Veldhoven',
        COUNTRY => 'Netherlands',
        DATE_START => '2023-07-31', # Mon
        DATE_END => '2023-08-07' # Mon
      },
    }
  },

  'World Youth Open Championships' =>
  {
    ORGANIZATION => 'WBF',
    ZONE => 'World',

    EDITIONS => 
    {
      '2009' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Istanbul.09/Istanbul.htm
        ORDINAL => 1,
        YEAR => 2009,
        CITY => 'Istanbul',
        COUNTRY => 'Turkey',
        DATE_START => '2009-08-15', # Sat
        DATE_END => '2009-08-23' # Sun
      },
      '2011' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Opatija.11/Opatija11.htm
        ORDINAL => 2,
        YEAR => 2011,
        CITY => 'Opatija',
        COUNTRY => 'Croatia',
        DATE_START => '2011-08-22', # Mon
        DATE_END => '2011-08-30' # Tue
      },
      '2013' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Atlanta.13/microSite/results.htm
        ORDINAL => 3,
        YEAR => 2013,
        CITY => 'Atlanta',
        COUNTRY => 'USA',
        DATE_START => '2013-08-03', # Sat
        DATE_END => '2013-08-11' # Sun
      },
      '2015' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Opatija.15/microSite/results.htm
        ORDINAL => 4,
        YEAR => 2015,
        CITY => 'Opatija',
        COUNTRY => 'Croatia',
        DATE_START => '2015-08-20', # Thu
        DATE_END => '2015-08-29' # Sat
      },
      '2017' =>
      {
        # http://db.worldbridge.org/Repository/tourn/lyonyouth.17/microSite/results.htm
        ORDINAL => 5,
        YEAR => 2017,
        CITY => 'Lyon',
        COUNTRY => 'France',
        DATE_START => '2017-08-15', # Tue
        DATE_END => '2017-08-24' # Thu
      },
      '2019' =>
      {
        # http://db.worldbridge.org/Repository/tourn/opatija.19/microSite/Results.htm
        ORDINAL => 6,
        YEAR => 2019,
        CITY => 'Opatija',
        COUNTRY => 'Croatia',
        DATE_START => '2019-08-20', # Tue
        DATE_END => '2019-08-29' # Thu
      },
      '2022' =>
      {
        # http://db.worldbridge.org/Repository/tourn/salsoyouth.22/microSite/Results.htm
        ORDINAL => 7,
        YEAR => 2022,
        CITY => 'Salsomaggiore',
        COUNTRY => 'Italy',
        DATE_START => '2022-10-08', # Sat
        DATE_END => '2022-10-10' # Mon
      },
    }
  },
);

my %TOURNAMENTS_WORLD =
(
  'Bermuda Bowl' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1995' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1995,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1995-10-08', # Sun
            DATE_END => '1995-10-10' # Tue
          },
        }
      },
      '1997' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1997,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '1997-10-20', # Mon
            DATE_END => '1997-10-25' # Sat
          },
          'C1' => 
          {
            # No counter data.
            YEAR => 1997,
            STAGE => 'Quarterfinal',
            DATE_START => '1997-10-26', # Sun
            DATE_END => '1997-10-27' # Mon
          },
          'C2' => 
          {
            # No counter data.
            YEAR => 1997,
            STAGE => 'Semifinal',
            DATE_START => '1997-10-28', # Tue
            DATE_END => '1997-10-29' # Wed
          },
          'C3' => 
          {
            YEAR => 1997,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '1997-10-30', # Thu
            DATE_END => '1997-10-30' # Thu
          },
          'C4' => 
          {
            YEAR => 1997,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1997-10-30', # Thu
            DATE_END => '1997-11-01' # Sat
          } 
        }
      },
      '2000' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2000,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2000-01-08', # Sat
            DATE_END => '2000-01-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2000,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2000-01-15', # Sat
            DATE_END => '2000-01-16' # Sun
          },
          'C2' => 
          {
            YEAR => 2000,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2000-01-17', # Mon
            DATE_END => '2000-01-18' # Tue
          },
          'C3' => 
          {
            YEAR => 2000,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2000-01-19', # Wed
            DATE_END => '2000-01-19' # Wed
          },
          'C4' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2000-01-19', # Wed
            DATE_END => '2000-01-21' # Fri
          } 
        }
      },
      '2001' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2001,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2001-10-22', # Mon
            DATE_END => '2001-10-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2001,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2001-10-28', # Sun
            DATE_END => '2001-10-29' # Mon
          },
          'C2' => 
          {
            YEAR => 2001,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2001-10-30', # Tue
            DATE_END => '2001-10-31' # Wed
          },
          'C3' => 
          {
            YEAR => 2001,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2001-11-01', # Thu
            DATE_END => '2001-11-01' # Thu
          },
          'C4' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-11-01', # Thu
            DATE_END => '2001-11-03' # Sat
          } 
        }
      },
      '2005' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2005-10-23', # Sun
            DATE_END => '2005-10-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-10-30', # Sun
            DATE_END => '2005-10-31' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-11-01', # Tue
            DATE_END => '2005-11-02' # Wed
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2005-11-03', # Thu
            DATE_END => '2005-11-03' # Thu
          },
          'C4' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-11-03', # Thu
            DATE_END => '2005-11-05' # Sat
          } 
        }
      },
      '2007' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-09-30', # Sun
            DATE_END => '2007-10-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-07', # Sun
            DATE_END => '2007-10-08' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-09', # Tue
            DATE_END => '2007-10-10' # Wed
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2007-10-11', # Thu
            DATE_END => '2007-10-11' # Thu
          },
          'C4' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-10-11', # Thu
            DATE_END => '2007-10-13' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-08-30', # Sun
            DATE_END => '2009-09-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-06', # Sun
            DATE_END => '2009-09-07' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-08', # Tue
            DATE_END => '2009-09-09' # Wed
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-09-10', # Thu
            DATE_END => '2009-09-11' # Fri
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-10', # Thu
            DATE_END => '2009-09-12' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-10-16', # Sun
            DATE_END => '2011-10-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-23', # Sun
            DATE_END => '2011-10-24' # Mon
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-25', # Tue
            DATE_END => '2011-10-26' # Wed
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-28' # Fri
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-29' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-09-17', # Tue
            DATE_END => '2013-09-23' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-24', # Tue
            DATE_END => '2013-09-25' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-26', # Thu
            DATE_END => '2013-09-27' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-29' # Sun
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-29' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-09-27', # Sun
            DATE_END => '2015-10-03' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-04', # Sun
            DATE_END => '2015-10-05' # Mon
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-06', # Tue
            DATE_END => '2015-10-07' # Wed
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-09' # Fri
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-10' # Sat
          } 
        }
      },
    }
  },

  'Damiani Trophy' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2005-08-08', # Mon
            DATE_END => '2005-08-15' # Mon
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2005-08-15', # Mon
            DATE_END => '2005-08-16' # Tue
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2005-08-16', # Tue
            DATE_END => '2005-08-16' # Tue
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2005-08-16', # Tue
            DATE_END => '2005-08-17' # Wed
          } 
        }
      },
      '2006' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-07-30', # Sun
            DATE_END => '2006-08-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-08-08', # Tue
            DATE_END => '2006-08-08' # Tue
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-08-08', # Tue
            DATE_END => '2006-08-08' # Tue
          } 
        }
      },
      '2010' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-10-13', # Wed
            DATE_END => '2010-10-13' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-10-14', # Thu
            DATE_END => '2010-10-14' # Thu
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-15', # Fri
            DATE_END => '2010-10-16' # Sat
          },
        }
      },
      '2012' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-07-26', # Thu
            DATE_END => '2012-07-31' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-01', # Wed
            DATE_END => '2012-08-01' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-02', # Thu
            DATE_END => '2012-08-02' # Thu
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-03', # Fri
            DATE_END => '2012-08-04' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-08-04', # Thu
            DATE_END => '2016-08-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-10', # Wed
            DATE_END => '2016-08-10' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-11', # Thu
            DATE_END => '2016-08-11' # Thu
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2016-08-12', # Fri
            DATE_END => '2016-08-12' # Fri
          },
          'C4' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-08-12', # Fri
            DATE_END => '2016-08-13' # Sat
          } 
        }
      },
    }
  },


  "d'Orsi" => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2005-10-23', # Sun
            DATE_END => '2005-10-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-10-30', # Sun
            DATE_END => '2005-10-31' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-11-01', # Tue
            DATE_END => '2005-11-02' # Wed
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2005-11-03', # Thu
            DATE_END => '2005-11-04' # Fri
          },
          'C4' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-11-03', # Thu
            DATE_END => '2005-11-04' # Fri
          } 
        }
      },
      '2007' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-09-30', # Sun
            DATE_END => '2007-10-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-07', # Sun
            DATE_END => '2007-10-08' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-09', # Tue
            DATE_END => '2007-10-10' # Wed
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2007-10-11', # Thu
            DATE_END => '2007-10-11' # Thu
          },
          'C4' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-10-11', # Thu
            DATE_END => '2007-10-12' # Fri
          } 
        }
      },
      '2009' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-08-30', # Sun
            DATE_END => '2009-09-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-06', # Sun
            DATE_END => '2009-09-07' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-08', # Tue
            DATE_END => '2009-09-09' # Wed
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-09-10', # Thu
            DATE_END => '2009-09-11' # Fri
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-10', # Thu
            DATE_END => '2009-09-11' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-10-16', # Sun
            DATE_END => '2011-10-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-23', # Sun
            DATE_END => '2011-10-24' # Mon
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-25', # Tue
            DATE_END => '2011-10-26' # Wed
          },
          'C3' => 
          {
            # No counter data.
            YEAR => 2011,
            STAGE => 'Playoff',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-28' # Fri
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-28' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-09-17', # Tue
            DATE_END => '2013-09-23' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-24', # Tue
            DATE_END => '2013-09-25' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-26', # Thu
            DATE_END => '2013-09-27' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-29' # Sun
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-29' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-09-27', # Sun
            DATE_END => '2015-10-03' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-04', # Sun
            DATE_END => '2015-10-05' # Mon
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-06', # Tue
            DATE_END => '2015-10-07' # Wed
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-09' # Fri
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-09' # Fri
          } 
        }
      },
    }
  },

  'Huayuan Cup' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          },
        }
      },
      '2011' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-05', # Mon
            DATE_END => '2011-09-07' # Wed
          },
        }
      },
      '2013' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-10-14', # Mon
            DATE_END => '2013-10-16' # Wed
          },
        }
      },
      '2015' =>
      {
        CITY => 'Beijing',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-11-09', # Mon
            DATE_END => '2015-11-11' # Wed
          },
        }
      },
    }
  },


  'IMSA Elite Open Individual' => 
  {
    ORIGIN => 'International',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'IMSA Elite Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-03-02', # Wed
            DATE_END => '2016-03-03' # Thu
          },
        }
      },
    }
  },

  'IMSA Elite Open Pairs' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'IMSA Elite Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            DATE_START => '2016-02-29', # Mon
            DATE_END => '2016-03-03' # Thu
          },
        }
      },
    }
  },

  'IMSA Elite Open Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'IMSA Elite Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-02-26', # Fri
            DATE_END => '2016-02-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-02-28', # Sun
            DATE_END => '2016-02-28' # Sun
          },
        }
      },
    }
  },

  'IMSA Elite Women Individual' => 
  {
    ORIGIN => 'International',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'IMSA Elite Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            DATE_START => '2016-03-02', # Wed
            DATE_END => '2016-03-03' # Thu
          },
        }
      },
    }
  },

  'IMSA Elite Women Pairs' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'IMSA Elite Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            DATE_START => '2016-02-29', # Mon
            DATE_END => '2016-03-03' # Thu
          },
        }
      },
    }
  },

  'IMSA Elite Women Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'IMSA Elite Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-02-26', # Fri
            DATE_END => '2016-02-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2016-02-28', # Sun
            DATE_END => '2016-02-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-02-28', # Sun
            DATE_END => '2016-02-28' # Sun
          },
        }
      },
    }
  },

  'IOC Grand Prix' => 
  {
    ORGANIZATION => 'IOC',
    ZONE => 'World',
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1998' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            DATE_START => '1998-09-11', # Fri
            DATE_END => '1998-09-11' # Fri
          },
        }
      },
      '2002' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Salt%20Lake.02/Results.htm
        CITY => 'Salt Lake City',
        COUNTRY => 'USA',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2002,
            STAGE => 'Round-robin',
            DATE_START => '2002-02-02', # Sat
            DATE_END => '2002-02-02' # Sat
          },
          'C1' => 
          {
            YEAR => 2002,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2002-02-04', # Mon
            DATE_END => '2002-02-05' # Tue
          },
          'C2' => 
          {
            YEAR => 2002,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2002-02-06', # Wed
            DATE_END => '2002-02-06' # Wed
          },
        }
      },
    }
  },

  'McConnell Cup' => 
  {
    ORGANIZATION => 'WBF',
    ZONE => 'World',
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-06-21', # Wed
            DATE_END => '2006-06-21' # Wed
          },
        }
      },
      '2010' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-12', # Tue
            DATE_END => '2010-10-12' # Tue
          },
        }
      },
      '2014' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-22', # Wed
            DATE_END => '2014-10-22' # Wed
          },
        }
      },
    }
  },

  'Oly-Star Cup' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            major => 'ROUND',
            DATE_START => '2011-07-12', # Tue
            DATE_END => '2011-07-21' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-07-21', # Thu
            DATE_END => '2011-07-22' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2011-07-22', # Fri
            DATE_END => '2011-07-24' # Sun
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-07-22', # Fri
            DATE_END => '2011-07-24' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-06-06', # Wed
            DATE_END => '2012-06-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-08', # Fri
            DATE_END => '2012-06-09' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-09', # Sat
            DATE_END => '2012-06-10' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-07-10', # Wed
            DATE_END => '2013-07-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-12', # Fri
            DATE_END => '2013-07-13' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-13', # Sat
            DATE_END => '2013-07-14' # Sun
          },
        }
      },
    }
  },

  'APBF Women Elite Tournament' => 
  {
    ORIGIN => 'International',
    ORGANIZATION => 'APBF',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            DATE_START => '2006-10-18', # Wed
            DATE_END => '2006-10-19' # Thu
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-10-20', # Fri
            DATE_END => '2006-10-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2006-10-21', # Sat
            DATE_END => '2006-10-21' # Sat
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-10-21', # Sat
            DATE_END => '2006-10-21' # Sat
          },
        }
      },
    }
  },

  'Rona Cup' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-13', # Wed
            DATE_END => '2010-10-13' # Wed
          },
        }
      },
      '2012' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-07-25', # Wed
            DATE_END => '2012-08-04' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-08-14', # Thu
            DATE_END => '2014-08-18' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-20', # Wed
            DATE_END => '2014-08-20' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-21', # Thu
            DATE_END => '2014-08-21' # Thu
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2014-08-22', # Fri
            DATE_END => '2014-08-23' # Sat
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-08-22', # Fri
            DATE_END => '2014-08-23' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-08-04', # Thu
            DATE_END => '2016-08-08' # Mon
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-10', # Wed
            DATE_END => '2016-08-10' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-11', # Thu
            DATE_END => '2016-08-11' # Thu
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-08-12', # Fri
            DATE_END => '2016-08-13' # Sat
          }
        }
      },
    }
  },


  'Rosenblum Cup' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1998' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1998,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '1998-08-24', # Mon
            DATE_END => '1998-08-26' # Wed
          },
          'C1' => 
          {
            YEAR => 1998,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '1998-08-27', # Thu
            DATE_END => '1998-08-27' # Thu
          },
          'C2' => 
          {
            YEAR => 1998,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '1998-08-28', # Fri
            DATE_END => '1998-08-28' # Fri
          },
          'C3' => 
          {
            YEAR => 1998,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '1998-08-29', # Sat
            DATE_END => '1998-08-29' # Sat
          },
          'C4' => 
          {
            YEAR => 1998,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '1998-08-30', # Sun
            DATE_END => '1998-08-30' # Sun
          },
          'C5' => 
          {
            YEAR => 1998,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '1998-08-31', # Mon
            DATE_END => '1998-08-31' # Mon
          },
          'C6' => 
          {
            YEAR => 1998,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1998-09-01', # Tue
            DATE_END => '1998-09-01' # Tue
          },
        }
      },
      '2002' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2002,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2002-08-20', # Tue
            DATE_END => '2002-08-22' # Thu
          },
          'C1' => 
          {
            YEAR => 2002,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2002-08-23', # Fri
            DATE_END => '2002-08-23' # Fri
          },
          'C2' => 
          {
            YEAR => 2002,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2002-08-24', # Sat
            DATE_END => '2002-08-24' # Sat
          },
          'C3' => 
          {
            YEAR => 2002,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2002-08-25', # Sun
            DATE_END => '2002-08-25' # Sun
          },
          'C4' => 
          {
            YEAR => 2002,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2002-08-26', # Mon
            DATE_END => '2002-08-26' # Mon
          },
          'C5' => 
          {
            YEAR => 2002,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2002-08-27', # Tue
            DATE_END => '2002-08-27' # Tue
          },
          'C6' => 
          {
            YEAR => 2002,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2002-08-28', # Wed
            DATE_END => '2002-08-28' # Wed
          },
        }
      },
      '2006' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-06-13', # Tue
            DATE_END => '2006-06-15' # Thu
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2006-06-16', # Fri
            DATE_END => '2006-06-16' # Fri
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2006-06-17', # Sat
            DATE_END => '2006-06-17' # Sat
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2006-06-18', # Sun
            DATE_END => '2006-06-18' # Sun
          },
          'C4' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-06-19', # Mon
            DATE_END => '2006-06-19' # Mon
          },
          'C5' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-06-20', # Tue
            DATE_END => '2006-06-20' # Tue
          },
          'C6' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-06-21', # Wed
            DATE_END => '2006-06-21' # Wed
          },
        }
      },
      '2010' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-10-05', # Tue
            DATE_END => '2010-10-07' # Thu
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2010-10-08', # Fri
            DATE_END => '2010-10-08' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2010-10-09', # Sat
            DATE_END => '2010-10-09' # Sat
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-10-10', # Sun
            DATE_END => '2010-10-10' # Sun
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-10-11', # Mon
            DATE_END => '2010-10-11' # Mon
          },
          'C5' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-10-12', # Tue
            DATE_END => '2010-10-12' # Tue
          },
          'C6' => 
          {
            YEAR => 2010,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2010-10-13', # Wed
            DATE_END => '2010-10-13' # Wed
          },
          'C7' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-13', # Wed
            DATE_END => '2010-10-13' # Wed
          },
        }
      },
      '2014' =>
      {
        
        MEET => 'World Series',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-10-18', # Sat
            DATE_END => '2014-10-18' # Sat
          },
          'C1' => 
          {
            # Confusing to call this a semifinal
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-19', # Sun
            DATE_END => '2014-10-19' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-10-20', # Mon
            DATE_END => '2014-10-20' # Mon
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-10-20', # Mon
            DATE_END => '2014-10-21' # Tue
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-21', # Tue
            DATE_END => '2014-10-22' # Wed
          },
          'C5' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-22', # Wed
            DATE_END => '2014-10-22' # Wed
          },
        }
      }
    }
  },

  'Tianjin Binhai Cup' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Men',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-09-11', # Sun
            DATE_END => '2011-09-14' # Wed
          },
        }
      },
    }
  },

  'Venice Cup' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '1997' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1997,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '1997-10-20', # Mon
            DATE_END => '1997-10-25' # Sat
          },
          'C1' => 
          {
            YEAR => 1997,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '1997-10-26', # Sun
            DATE_END => '1997-10-27' # Mon
          },
          'C2' => 
          {
            # No counter data.
            YEAR => 1997,
            STAGE => 'Semifinal',
            DATE_START => '1997-10-28', # Tue
            DATE_END => '1997-10-29' # Wed
          },
          'C3' => 
          {
            YEAR => 1997,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '1997-10-30', # Thu
            DATE_END => '1997-10-30' # Thu
          },
          'C4' => 
          {
            YEAR => 1997,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1997-10-30', # Thu
            DATE_END => '1997-10-31' # Fri
          } 
        }
      },
      '2000' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2000,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2000-01-08', # Sat
            DATE_END => '2000-01-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2000,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2000-01-15', # Sat
            DATE_END => '2000-01-16' # Sun
          },
          'C2' => 
          {
            YEAR => 2000,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2000-01-17', # Mon
            DATE_END => '2000-01-18' # Tue
          },
          'C3' => 
          {
            YEAR => 2000,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2000-01-19', # Wed
            DATE_END => '2000-01-19' # Wed
          },
          'C4' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2000-01-19', # Wed
            DATE_END => '2000-01-20' # Thu
          } 
        }
      },
      '2005' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2005-10-23', # Sun
            DATE_END => '2005-10-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-10-30', # Sun
            DATE_END => '2005-10-31' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-11-01', # Tue
            DATE_END => '2005-11-02' # Wed
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2005-11-03', # Thu
            DATE_END => '2005-11-04' # Fri
          },
          'C4' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-11-03', # Thu
            DATE_END => '2005-11-04' # Fri
          } 
        }
      },
      '2007' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-09-30', # Sun
            DATE_END => '2007-10-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-07', # Sun
            DATE_END => '2007-10-08' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-09', # Tue
            DATE_END => '2007-10-10' # Wed
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2007-10-11', # Thu
            DATE_END => '2007-10-11' # Thu
          },
          'C4' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-10-11', # Thu
            DATE_END => '2007-10-12' # Fri
          } 
        }
      },
      '2009' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-08-30', # Sun
            DATE_END => '2009-09-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-06', # Sun
            DATE_END => '2009-09-07' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-08', # Tue
            DATE_END => '2009-09-09' # Wed
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-09-10', # Thu
            DATE_END => '2009-09-11' # Fri
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-10', # Thu
            DATE_END => '2009-09-11' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-10-16', # Sun
            DATE_END => '2011-10-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-23', # Sun
            DATE_END => '2011-10-24' # Mon
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-25', # Tue
            DATE_END => '2011-10-26' # Wed
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-28' # Fri
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-28' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-09-17', # Tue
            DATE_END => '2013-09-23' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-24', # Tue
            DATE_END => '2013-09-25' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-26', # Thu
            DATE_END => '2013-09-27' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-29' # Sun
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-29' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-09-27', # Sun
            DATE_END => '2015-10-03' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-04', # Sun
            DATE_END => '2015-10-05' # Mon
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-06', # Tue
            DATE_END => '2015-10-07' # Wed
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-09' # Fri
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-09' # Fri
          } 
        }
      },
    }
  },

  'World Kids Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Kids',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-08-14', # Thu
            DATE_END => '2014-08-18' # Mon
          } 
        }
      },
      '2016' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-08-04', # Thu
            DATE_END => '2016-08-13' # Sat
          } 
        }
      },
    }
  },

  'World Masters Individual' => 
  {
    ORIGIN => 'International',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2000' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Athens.00/Athens.htm
        ORDINAL => 5,
        CITY => 'Athens',
        COUNTRY => 'Greece',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            major => 'SESSION',
            DATE_START => '2000-04-13', # Thu
            DATE_END => '2000-04-15' # Sat
          },
        }
      },
      '2004' =>
      {
        # http://db.worldbridge.org/Repository/tourn/Verona.04/Results.htm
        ORDINAL => 6,
        CITY => 'Verona',
        COUNTRY => 'Italy',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'SESSION',
            DATE_START => '2004-09-08', # Wed
            DATE_END => '2004-09-10' # Fri
          },
        }
      },
    }
  },

  'World Mixed Pairs' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'TABLE',
            DATE_START => '2014-10-13', # Mon
            DATE_END => '2014-10-17' # Fri
          },
        }
      }
    }
  },

  'World Mixed Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-10-11', # Sat
            DATE_END => '2014-10-11' # Sat
          },
          'C1' => 
          {
            # Confusing to call this a semifinal
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-12', # Sun
            DATE_END => '2014-10-12' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-10-13', # Mon
            DATE_END => '2014-10-13' # Mon
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-10-13', # Mon
            DATE_END => '2014-10-13' # Mon
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-14', # Tue
            DATE_END => '2014-10-14' # Tue
          },
          'C5' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-14', # Tue
            DATE_END => '2014-10-14' # Tue
          },
          'C6' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-10-15', # Wed
            DATE_END => '2014-10-15' # Wed
          },
        }
      }
    }
  },

  'World Open Pairs' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2006-06-22', # Thu
            DATE_END => '2006-06-24' # Sat
          },
        }
      },
      '2010' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-14', # Thu
            DATE_END => '2010-10-16' # Sat
          },
        }
      },
      '2014' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'TABLE',
            DATE_START => '2014-10-24', # Fri
            DATE_END => '2014-10-25' # Sat
          },
        }
      }
    }
  },

  'World Top Tournament' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',
    SPONSOR => 'Cap Gemini',

    EDITIONS =>
    {
      '1997' =>
      {
        ORDINAL => 11,
        CITY => 'The Hague',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1997,
            DATE_START => '1997-01-16', # Thu
            DATE_END => '1997-01-19' # Sun
          },
        }
      },
      '1998' =>
      {
        ORDINAL => 12,
        CITY => 'The Hague',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            DATE_START => '1998-01-15', # Thu
            DATE_END => '1998-01-18' # Sun
          },
        }
      },
      '1999' =>
      {
        ORDINAL => 13,
        CITY => 'The Hague',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1999,
            DATE_START => '1999-01-14', # Thu
            DATE_END => '1999-01-17' # Sun
          },
        }
      },
      '2000' =>
      {
        ORDINAL => 14,
        CITY => 'The Hague',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            DATE_START => '2000-03-23', # Thu
            DATE_END => '2000-03-26' # Sun
          },
        }
      },
    }
  },

  'World Transnational Mixed Teams' => 
  {
    ORIGIN => 'Transnational',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'World Olympiad',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-02', # Tue
            DATE_END => '2004-11-06' # Sat
          } 
        }
      },
      '2008' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-10-16', # Thu
            DATE_END => '2008-10-16' # Thu
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-10-17', # Fri
            DATE_END => '2008-10-17' # Fri
          },
        }
      },
      '2012' =>
      {
        MEET => 'World Mind Games',
        MEET_TAG => '2012A',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2012-08-22', # Wed
            DATE_END => '2012-08-23' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-22', # Wed
            DATE_END => '2012-08-23' # Thu
          } 
        }
      },
    }
  },

  'World Transnational Open Teams' => 
  {
    ORIGIN => 'Transnational',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-10-12', # Fri
            DATE_END => '2007-10-13' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-09-07', # Mon
            DATE_END => '2009-09-10' # Thu
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-10', # Thu
            DATE_END => '2009-09-10' # Thu
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-11', # Fri
            DATE_END => '2009-09-11' # Fri
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-11', # Fri
            DATE_END => '2009-09-12' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-10-24', # Mon
            DATE_END => '2011-10-27' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-27' # Thu
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-27', # Thu
            DATE_END => '2011-10-28' # Fri
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-28', # Fri
            DATE_END => '2011-10-28' # Fri
          },
          'C5' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-28', # Fri
            DATE_END => '2011-10-29' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-09-24', # Tue
            DATE_END => '2013-09-26' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-27', # Fri
            DATE_END => '2013-09-27' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-28' # Sat
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-09-29', # Sun
            DATE_END => '2013-09-29' # Sun
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-29', # Sun
            DATE_END => '2013-09-29' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Team Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-10-04', # Sun
            DATE_END => '2015-10-06' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-10-07', # Wed
            DATE_END => '2015-10-07' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-08', # Thu
            DATE_END => '2015-10-08' # Thu
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-09', # Fri
            DATE_END => '2015-10-09' # Fri
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-10-10', # Sat
            DATE_END => '2015-10-10' # Sat
          },
          'C5' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-10', # Sat
            DATE_END => '2015-10-10' # Sat
          } 
        }
      },
    }
  },

  'World Open Girl Pairs' =>
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-08-04', # Sun
            DATE_END => '2013-08-06' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-08-21', # Fri
            DATE_END => '2015-08-23' # Sun
          } 
        }
      },
    }
  },

  'World Open Girl Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-08-24', # Mon
            DATE_END => '2015-08-24' # Mon
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-26', # Wed
            DATE_END => '2015-08-26' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-27', # Thu
            DATE_END => '2015-08-27' # Thu
          } 
        }
      },
    }
  },

  'World Open Junior IMP Pairs' =>
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-08-20', # Thu
            DATE_END => '2009-08-23' # Sun
          } 
        }
      },
    }
  },

  'World Open Junior Pairs' =>
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2009-08-20', # Thu
            DATE_END => '2009-08-23' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2011-08-28', # Sun
            DATE_END => '2011-08-30' # Tue
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-08-04', # Sun
            DATE_END => '2013-08-06' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-08-21', # Fri
            DATE_END => '2015-08-23' # Sun
          } 
        }
      },
    }
  },

  'World Open Junior Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-08-15', # Sat
            DATE_END => '2009-08-17' # Mon
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-18', # Tue
            DATE_END => '2009-08-18' # Tue
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-18', # Tue
            DATE_END => '2009-08-18' # Tue
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-08-19', # Wed
            DATE_END => '2009-08-19' # Wed
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-19', # Wed
            DATE_END => '2009-08-19' # Wed
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2011-08-22', # Mon
            DATE_END => '2011-08-23' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-24', # Wed
            DATE_END => '2011-08-24' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-25', # Thu
            DATE_END => '2011-08-25' # Thu
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2011-08-26', # Fri
            DATE_END => '2011-08-26' # Fri
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-08-26', # Fri
            DATE_END => '2011-08-26' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-08-06', # Tue
            DATE_END => '2013-08-08' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-08', # Thu
            DATE_END => '2013-08-08' # Thu
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-08-09', # Fri
            DATE_END => '2013-08-09' # Fri
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-09', # Fri
            DATE_END => '2013-08-09' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-08-14', # Thu
            DATE_END => '2014-08-19' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-20', # Wed
            DATE_END => '2014-08-20' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-21', # Thu
            DATE_END => '2014-08-21' # Thu
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2014-08-22', # Fri
            DATE_END => '2014-08-22' # Fri
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-08-22', # Fri
            DATE_END => '2014-08-23' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-08-24', # Mon
            DATE_END => '2015-08-25' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-26', # Wed
            DATE_END => '2015-08-26' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-27', # Thu
            DATE_END => '2015-08-27' # Thu
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-08-28', # Fri
            DATE_END => '2015-08-28' # Fri
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-28', # Fri
            DATE_END => '2015-08-28' # Fri
          } 
        }
      },
    }
  },

  'World Open School Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Schools',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-08-03', # Thu
            DATE_END => '2006-08-04' # Fri
          },
        }
      },
    }
  },

  'World Olympiad Open Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1996' =>
      {
        MEET => 'World Olympiad',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1996,
            DATE_START => '1996-10-31', # Thu
            DATE_END => '1996-11-02' # Sat
          },
        }
      },
      '2000' =>
      {
        MEET => 'World Olympiad',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            DATE_START => '2000-08-26', # Sat
            DATE_END => '2000-09-09' # Sat
          },
        }
      },
      '2004' =>
      {
        MEET => 'World Olympiad',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2004-10-23', # Sat
            DATE_END => '2004-10-29' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2004-10-30', # Sat
            DATE_END => '2004-10-31' # Sun
          },
          'C2' => 
          {
            YEAR => 2004,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2004-11-01', # Mon
            DATE_END => '2004-11-02' # Tue
          },
          'C3' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-11-03', # Wed
            DATE_END => '2004-11-04' # Thu
          },
          'C4' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-05', # Fri
            DATE_END => '2004-11-06' # Sat
          },
        }
      },
    }
  },

  'World Olympiad Women Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '1996' =>
      {
        MEET => 'World Olympiad',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1996,
            DATE_START => '1996-10-31', # Thu
            DATE_END => '1996-11-02' # Sat
          },
        }
      },
      '2000' =>
      {
        MEET => 'World Olympiad',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            DATE_START => '2000-08-26', # Sat
            DATE_END => '2000-09-09' # Sat
          },
        }
      },
      '2004' =>
      {
        MEET => 'World Olympiad',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2004-10-24', # Sun
            DATE_END => '2004-10-29' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2004-10-30', # Sat
            DATE_END => '2004-10-30' # Sat
          },
          'C2' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-11-02', # Tue
            DATE_END => '2004-11-03' # Wed
          },
          'C3' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-04', # Thu
            DATE_END => '2004-11-05' # Fri
          },
        }
      },
    }
  },

  'World Open Youngster Pairs' =>
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-08-04', # Sun
            DATE_END => '2013-08-06' # Tue
          } 
        }
      },
    }
  },

  'World Open Youngster Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-08-06', # Tue
            DATE_END => '2013-08-06' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-09', # Fri
            DATE_END => '2013-08-09' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-08-24', # Mon
            DATE_END => '2015-08-25' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-26', # Wed
            DATE_END => '2015-08-26' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-27', # Thu
            DATE_END => '2015-08-27' # Thu
          } 
        }
      },
    }
  },

  'World Open Youth BAM Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-08-24', # Wed
            DATE_END => '2011-08-27' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-08-08', # Thu
            DATE_END => '2013-08-11' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'World Youth Open Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-08-26', # Wed
            DATE_END => '2015-08-29' # Sat
          } 
        }
      },
    }
  },

  'World University Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U31',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'FISU World University Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-10-26', # Thu
            DATE_END => '2006-10-26' # Thu
          } 
        }
      },
      '2008' =>
      {
        MEET => 'FISU World University Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-09-08', # Mon
            DATE_END => '2008-09-08' # Mon
          } 
        }
      },
      '2010' =>
      {
        MEET => 'FISU World University Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-08-03', # Tue
            DATE_END => '2010-08-09' # Mon
          } 
        }
      },
      '2012' =>
      {
        MEET => 'FISU World University Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-07-10', # Tue
            DATE_END => '2012-07-15' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'FISU World University Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-11-01', # Sat
            DATE_END => '2014-11-06' # Thu
          } 
        }
      },
      '2016' =>
      {
        MEET => 'FISU World University Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-08-23', # Tue
            DATE_END => '2016-08-28' # Sun
          } 
        }
      },
    }
  },

  'World Youngster Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-08-03', # Thu
            DATE_END => '2006-08-08' # Tue
          } 
        }
      },
      '2010' =>
      {
        MEET => 'World Series',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-10-14', # Thu
            DATE_END => '2010-10-14' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-07-27', # Fri
            DATE_END => '2012-07-31' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-01', # Wed
            DATE_END => '2012-08-01' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-02', # Thu
            DATE_END => '2012-08-02' # Thu
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2012-08-03', # Fri
            DATE_END => '2012-08-03' # Fri
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-03', # Fri
            DATE_END => '2012-08-04' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-08-14', # Thu
            DATE_END => '2014-08-18' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-20', # Wed
            DATE_END => '2014-08-20' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-20', # Wed
            DATE_END => '2014-08-21' # Thu
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2014-08-22', # Fri
            DATE_END => '2014-08-23' # Sat
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-08-22', # Fri
            DATE_END => '2014-08-23' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'World Youth Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-08-04', # Thu
            DATE_END => '2016-08-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-10', # Wed
            DATE_END => '2016-08-10' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-11', # Thu
            DATE_END => '2016-08-11' # Thu
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2016-08-12', # Fri
            DATE_END => '2016-08-12' # Fri
          },
          'C4' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-08-12', # Fri
            DATE_END => '2016-08-13' # Sat
          },
        }
      },
    }
  },

  'WMG Men Individual' => 
  {
    ORIGIN => 'International',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Men',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-12-14', # Wed
            DATE_END => '2011-12-16' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'World Mind Games',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-12-17', # Mon
            DATE_END => '2012-12-18' # Tue
          } 
        }
      },
    }
  },

  'WMG Men Pairs' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Men',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-12-12', # Mon
            DATE_END => '2011-12-15' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'World Mind Games',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-12-16', # Sun
            DATE_END => '2012-12-19' # Wed
          } 
        }
      },
    }
  },

  'WMG Men Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Men',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-12-09', # Fri
            DATE_END => '2011-12-13' # Tue
          },
        }
      },
      '2012' =>
      {
        MEET => 'World Mind Games',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2012-12-13', # Thu
            DATE_END => '2012-12-15' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-13', # Thu
            DATE_END => '2012-12-15' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-12-12', # Thu
            DATE_END => '2013-12-13' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-14', # Sat
            DATE_END => '2013-12-14' # Sat
          } 
        }
      },
    }
  },

  'WMG Open Individual' => 
  {
    ORIGIN => 'International',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-12-16', # Mon
            DATE_END => '2013-12-18' # Wed
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-12-16', # Tue
            DATE_END => '2014-12-17' # Wed
          } 
        }
      },
    }
  },

  'WMG Open Pairs' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-12-13', # Tue
            DATE_END => '2011-12-14' # Wed
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-12-15', # Sun
            DATE_END => '2013-12-18' # Wed
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2014-12-14', # Sun
            DATE_END => '2014-12-17' # Wed
          } 
        }
      },
    }
  },

  'WMG Open Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2008-10-04', # Sat
            DATE_END => '2008-10-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-11', # Sat
            DATE_END => '2008-10-13' # Mon
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-14', # Tue
            DATE_END => '2008-10-15' # Wed
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-16', # Thu
            DATE_END => '2008-10-16' # Thu
          },
          'C4' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-16', # Thu
            DATE_END => '2008-10-17' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-11' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-11', # Sun
            DATE_END => '2011-12-12' # Mon
          } 
        }
      },
      '2012A' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-08-10', # Fri
            DATE_END => '2012-08-14' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-08-15', # Wed
            DATE_END => '2012-08-16' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-17', # Fri
            DATE_END => '2012-08-18' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-19', # Sun
            DATE_END => '2012-08-20' # Mon
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2012-08-21', # Tue
            DATE_END => '2012-08-22' # Wed
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-21', # Tue
            DATE_END => '2012-08-23' # Thu
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-12-13', # Thu
            DATE_END => '2012-12-14' # Fri
          },
        }
      },
      '2014' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-12-11', # Thu
            DATE_END => '2014-12-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          } 
        }
      },
    }
  },

  'WMG Senior Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-10-04', # Sat
            DATE_END => '2008-10-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2008-10-11', # Sat
            DATE_END => '2008-10-11' # Sat
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-11', # Sat
            DATE_END => '2008-10-13' # Mon
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-14', # Tue
            DATE_END => '2008-10-15' # Wed
          },
          'C4' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-10-16', # Thu
            DATE_END => '2008-10-17' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'World Mind Games',
        MEET_TAG => '2012A',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-08-11', # Sat
            DATE_END => '2012-08-14' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-08-15', # Wed
            DATE_END => '2012-08-16' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-17', # Fri
            DATE_END => '2012-08-18' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-19', # Sun
            DATE_END => '2012-08-20' # Mon
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2012-08-21', # Tue
            DATE_END => '2012-08-22' # Wed
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-21', # Tue
            DATE_END => '2012-08-22' # Wed
          } 
        }
      },
    }
  },

  'WMG U21 Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-10-06', # Mon
            DATE_END => '2008-10-07' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-10-12', # Sun
            DATE_END => '2008-10-12' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-10-13', # Mon
            DATE_END => '2008-10-13' # Mon
          } 
        }
      },
    }
  },

  'WMG U26 Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-10-04', # Sat
            DATE_END => '2008-10-07' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-10-08', # Wed
            DATE_END => '2008-10-11' # Sat
          } 
        }
      },
    }
  },

  'WMG U28 Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U28',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-10-04', # Sat
            DATE_END => '2008-10-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-10-11', # Sat
            DATE_END => '2008-10-11' # Sat
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-10-11', # Sat
            DATE_END => '2008-10-12' # Sun
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-10-13', # Mon
            DATE_END => '2008-10-13' # Mon
          } 
        }
      },
    }
  },

  'WMG Women Individual' => 
  {
    ORIGIN => 'International',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-12-14', # Wed
            DATE_END => '2011-12-16' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'World Mind Games',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-12-18', # Tue
            DATE_END => '2012-12-19' # Wed
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-12-17', # Tue
            DATE_END => '2013-12-18' # Wed
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-12-16', # Tue
            DATE_END => '2014-12-17' # Wed
          } 
        }
      },
    }
  },

  'WMG Women Pairs' => 
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-12-12', # Mon
            DATE_END => '2011-12-15' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'World Mind Games',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-12-16', # Sun
            DATE_END => '2012-12-19' # Wed
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-12-15', # Sun
            DATE_END => '2013-12-18' # Wed
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-12-14', # Sun
            DATE_END => '2014-12-17' # Wed
          } 
        }
      },
    }
  },

  'WMG Women Teams' => 
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2008-10-04', # Sat
            DATE_END => '2008-10-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-11', # Sat
            DATE_END => '2008-10-13' # Mon
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-14', # Tue
            DATE_END => '2008-10-15' # Wed
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-16', # Thu
            DATE_END => '2008-10-16' # Thu
          },
          'C4' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2008-10-16', # Thu
            DATE_END => '2008-10-17' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-13' # Tue
          } 
        }
      },
      '2012A' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-08-11', # Sat
            DATE_END => '2012-08-14' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-08-15', # Wed
            DATE_END => '2012-08-16' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-17', # Fri
            DATE_END => '2012-08-18' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-08-19', # Sun
            DATE_END => '2012-08-20' # Mon
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2012-08-21', # Tue
            DATE_END => '2012-08-22' # Wed
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-08-21', # Tue
            DATE_END => '2012-08-22' # Wed
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-12-13', # Thu
            DATE_END => '2012-12-15' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-12-12', # Thu
            DATE_END => '2013-12-13' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-12-14', # Sat
            DATE_END => '2013-12-14' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-14', # Sat
            DATE_END => '2013-12-14' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'World Mind Games',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-12-11', # Thu
            DATE_END => '2014-12-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_WORLD, \%TOURNAMENTS_WORLD, 'World');
}

1;
