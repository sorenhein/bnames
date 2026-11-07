#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Bulgaria;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_BULGARIA =
(
  'Albena Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Albena',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2008' =>
      {
        # https://www.bridgealbena.org/Albena/results2008.html
        ORDINAL => 32,
        YEAR => 2008,
        DATE_START => '2008-06-17', # Tue
        DATE_END => '2008-06-28' # Sat
      },
      '2009' =>
      {
        # https://www.bridgealbena.org/Albena/results2009.html
        ORDINAL => 33,
        YEAR => 2009,
        DATE_START => '2009-06-16', # Tue
        DATE_END => '2009-06-27' # Sat
      },
      '2010' =>
      {
        # https://www.bridgealbena.org/Albena/results2010.html
        ORDINAL => 34,
        YEAR => 2010,
        DATE_START => '2010-06-22', # Tue
        DATE_END => '2010-07-03' # Sat
      },
      '2011' =>
      {
        # https://www.bridgealbena.org/Albena/results2011.html
        ORDINAL => 35,
        YEAR => 2011,
        DATE_START => '2011-06-21', # Tue
        DATE_END => '2011-07-02' # Sat
      },
      '2012' =>
      {
        # https://www.bridgealbena.org/Albena/results2012.html
        ORDINAL => 36,
        YEAR => 2012,
        DATE_START => '2012-06-19', # Tue
        DATE_END => '2012-06-30' # Sat
      },
      '2013' =>
      {
        # https://www.bridgealbena.org/Albena/results2013.html
        ORDINAL => 37,
        YEAR => 2013,
        DATE_START => '2013-06-18', # Tue
        DATE_END => '2013-06-29' # Sat
      },
      '2014' =>
      {
        # https://www.bridgealbena.org/Albena/results2014.html
        ORDINAL => 38,
        YEAR => 2014,
        DATE_START => '2014-06-24', # Tue
        DATE_END => '2014-07-06' # Sun
      },
      '2015' =>
      {
        # https://www.bridgealbena.org/Albena/results2015.html
        ORDINAL => 39,
        YEAR => 2015,
        DATE_START => '2015-06-24', # Wed
        DATE_END => '2015-07-06' # Mon
      },
      '2016' =>
      {
        # https://www.bridgealbena.org/Albena/results2016.html
        ORDINAL => 40,
        YEAR => 2016,
        DATE_START => '2016-06-28', # Tue
        DATE_END => '2016-07-10' # Sun
      },
      '2017' =>
      {
        # https://www.bridgealbena.org/Albena/results2017.html
        ORDINAL => 41,
        YEAR => 2017,
        DATE_START => '2017-06-27', # Tue
        DATE_END => '2017-07-09' # Sun
      },
      '2018' =>
      {
        # https://www.bridgealbena.org/Albena/results2018.html
        ORDINAL => 42,
        YEAR => 2018,
        DATE_START => '2018-06-27', # Wed
        DATE_END => '2018-07-09' # Mon
      },
      '2019' =>
      {
        # https://www.bridgealbena.org/Albena/results2019.html
        ORDINAL => 43,
        YEAR => 2019,
        DATE_START => '2019-06-25', # Tue
        DATE_END => '2019-07-07' # Sun
      },
      '2020' =>
      {
        # https://www.bridgealbena.org/Albena/results2020.html
        YEAR => 2020,
        DATE_START => '2020-06-23', # Tue
        DATE_END => '2020-07-05' # Sun
      },
      '2021' =>
      {
        # https://www.bridgealbena.org/Albena/results2021.html
        YEAR => 2021,
        DATE_START => '2021-06-25', # Fri
        DATE_END => '2021-07-04' # Sun
      },
      '2022' =>
      {
        # https://www.bridgealbena.org/Albena/results2022.html
        YEAR => 2022,
        DATE_START => '2022-06-24', # Fri
        DATE_END => '2022-07-03' # Sun
      },
      '2023' =>
      {
        # https://www.bridgealbena.org/Albena/results2023.html
        YEAR => 2023,
        DATE_START => '2023-06-30', # Fri
        DATE_END => '2023-07-09' # Sun
      },
      '2024' =>
      {
        # https://www.bridgealbena.org/Albena/results2024.html
        YEAR => 2024,
        DATE_START => '2024-06-28', # Fri
        DATE_END => '2024-07-07' # Sun
      },
    }
  },

  'Cherven Briag Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Cherven Briag',
    COUNTRY => 'Bulgaria',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-06-18', # Sat
        DATE_END => '2011-06-19' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-09-22', # Sat
        DATE_END => '2012-09-23' # Sun
      },
    }
  },

  'Dobrich Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Dobrich',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2009' =>
      {
        ORDINAL => 24,
        YEAR => 2009,
        DATE_START => '2009-04-09', # Thu
        DATE_END => '2009-04-12' # Sun
      },
      '2013' =>
      {
        # https://www.bridge.bg/en/tournaments/1182-28th-International-Bridge-Festival-Dobrich-2013
        ORDINAL => 28,
        YEAR => 2013,
        DATE_START => '2013-04-11', # Thu
        DATE_END => '2013-04-14' # Sun
      },
      '2014' =>
      {
        # https://www.bridge.bg/en/tournaments/1580-29th-International-Bridge-Festival-Dobrich-2014
        ORDINAL => 29,
        YEAR => 2014,
        DATE_START => '2014-04-10', # Thu
        DATE_END => '2014-04-13' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-04-18', # Sat
        DATE_END => '2015-04-19' # Sun
      },
      '2016' =>
      {
        # https://www.bridge.bg/en/tournaments/2552-31-IBF-Dobrich-2016
        ORDINAL => 31,
        YEAR => 2016,
        DATE_START => '2016-04-14', # Thu
        DATE_END => '2016-04-17' # Sun
      },
      '2017' =>
      {
        # https://www.bridge.bg/en/tournaments/2912-32-IBF-Dobrich-2017
        ORDINAL => 32,
        YEAR => 2017,
        DATE_START => '2017-04-06', # Thu
        DATE_END => '2017-04-09' # Sun
      },
      '2018' =>
      {
        # https://www.bridge.bg/en/tournaments/3316-33ti-M%D0%B5jdunarod%D0%B5n-bridj-f%D0%B5stival-Dobrich-2018
        ORDINAL => 33,
        YEAR => 2018,
        DATE_START => '2018-04-12', # Thu
        DATE_END => '2018-04-15' # Sun
      },
      '2019' =>
      {
        # https://www.bridge.bg/en/tournaments/3944-34th-International-Bridge-Festival-Dobrich-2019
        ORDINAL => 34,
        YEAR => 2019,
        DATE_START => '2019-04-12', # Fri
        DATE_END => '2019-04-14' # Sun
      },
      '2020' =>
      {
        # https://www.bridge.bg/en/tournaments/4475-35ti-M%D0%B5jdunarod%D0%B5n-Bridj-F%D0%B5stival-Dobrich-2020
        ORDINAL => 35,
        YEAR => 2020,
        DATE_START => '2020-04-10', # Fri
        DATE_END => '2020-04-12' # Sun
      },
      '2021' =>
      {
        # https://www.bridge.bg/en/tournaments/4887-36ti-M%D0%B5jdunarod%D0%B5n-bridj-f%D0%B5stival-Dobrich
        ORDINAL => 36,
        YEAR => 2021,
        DATE_START => '2021-09-17', # Fri
        DATE_END => '2021-09-19' # Sun
      },
      '2023' =>
      {
        # https://www.bridge.bg/en/tournaments/5905-38i-M%D0%B5jdunarod%D0%B5n-bridj-f%D0%B5stival-Dobrich
        ORDINAL => 38,
        YEAR => 2023,
        DATE_START => '2023-09-29', # Fri
        DATE_END => '2023-10-01' # Sun
      },
    }
  },

  'Lozenets Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Lozenets',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-05-30', # Sat
        DATE_END => '2009-05-31' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-05-29', # Sat
        DATE_END => '2010-05-30' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-06-13', # Sat
        DATE_END => '2015-06-14' # Sun
      },
    }
  },

  'Plovdiv Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Plovdiv',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2009' =>
      {
        # https://bridge.bg/en/tournaments/7-28th-International-Bridge-Festival-Plovdiv-09
        ORDINAL => 28,
        YEAR => 2009,
        DATE_START => '2009-04-30', # Thu
        DATE_END => '2009-05-03' # Sun
      },
      '2010' =>
      {
        # https://www.bridge.bg/en/tournaments/170-29th-International-Bridge-Festival-Plovdiv-10
        ORDINAL => 29,
        YEAR => 2010,
        DATE_START => '2010-04-29', # Thu
        DATE_END => '2010-05-02' # Sun
      },
      '2011' =>
      {
        # https://new.bridge.bg/en/tournaments/541-30-International-Bridge-Festival-Plovdiv-2011
        ORDINAL => 30,
        YEAR => 2011,
        DATE_START => '2011-04-28', # Thu
        DATE_END => '2011-05-01' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-05-05', # Sat
        DATE_END => '2012-05-06' # Sun
      },
      '2013' =>
      {
        # https://www.bridge.bg/en/tournaments/1211-32nd-International-Bridge-Festival-Plovdiv-2013
        ORDINAL => 32,
        YEAR => 2013,
        DATE_START => '2013-04-25', # Thu
        DATE_END => '2013-04-28' # Sun
      },
      '2014' =>
      {
        # https://www.bridge.bg/en/tournaments/1844-33-M%D0%B5jdunarod%D0%B5n-bridj-f%D0%B5stival-Plovdiv-2014
        ORDINAL => 33,
        YEAR => 2014,
        DATE_START => '2014-04-24', # Thu
        DATE_END => '2014-04-27' # Sun
      },
      '2015' =>
      {
        # https://www.bridge.bg/en/tournaments/2210-34-M%D0%B5jdunarod%D0%B5n-bridj-f%D0%B5stival-Plovdiv-2015
        ORDINAL => 34,
        YEAR => 2015,
        DATE_START => '2015-04-29', # Wed
        DATE_END => '2015-05-03' # Sun
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-05-07', # Sat
        DATE_END => '2016-05-08' # Sun
      },
      '2017' =>
      {
        # https://www.bridge.bg/en/tournaments/2919-36-MBF-Plovdiv-2017
        ORDINAL => 36,
        YEAR => 2017,
        DATE_START => '2017-05-04', # Thu
        DATE_END => '2017-05-07' # Sun
      },
      '2019' =>
      {
        # https://bridgescanner.com/event/international-bridge-festival-plovdiv-2019
        # https://www.bridge.bg/en/tournaments/3978-38-M%D0%B5jdunarod%D0%B5n-bridj-f%D0%B5stival-Plovdiv-2019
        ORDINAL => 38,
        YEAR => 2019,
        DATE_START => '2019-03-07', # Thu
        DATE_END => '2019-03-10' # Sun
      },
      '2020' =>
      {
        # https://bridgescanner.com/event/international-bridge-festival-plovdiv-2020
        YEAR => 2020,
        DATE_START => '2020-05-07', # Thu
        DATE_END => '2020-05-10' # Sun
      },
      '2023' =>
      {
        # https://bridgescanner.com/event/international-bridge-festival-plovdiv-2024
        YEAR => 2023,
        DATE_START => '2023-03-02', # Thu
        DATE_END => '2023-03-05' # Sun
      },
      '2024' =>
      {
        # https://bridgescanner.com/event/international-bridge-festival-plovdiv-2024
        YEAR => 2024,
        DATE_START => '2024-02-29', # Thu
        DATE_END => '2024-03-04' # Mon
      },
    }
  },

  'Serdika Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Sofia',
    COUNTRY => 'Bulgaria',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2009' =>
      {
        ORDINAL => 17,
        YEAR => 2009,
        DATE_START => '2009-05-16', # Sat
        DATE_END => '2009-05-17' # Sun
      },
      '2010' =>
      {
        ORDINAL => 18,
        YEAR => 2010,
        DATE_START => '2010-05-15', # Sat
        DATE_END => '2010-05-16' # Sun
      },
      '2011' =>
      {
        # https://bridge.bg/en/tournaments/540-19th-International-Bridge-Festival-Ulpia-Serdica-2011
        ORDINAL => 19,
        YEAR => 2011,
        DATE_START => '2011-05-12', # Thu
        DATE_END => '2011-05-15' # Sun
      },
      '2012' =>
      {
        ORDINAL => 20,
        YEAR => 2012,
        DATE_START => '2012-05-19', # Sat
        DATE_END => '2012-05-20' # Sun
      },
    }
  },

  'Shumen Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Shumen',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-09-21', # Sun
        DATE_END => '2014-09-22' # Mon
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-09-21', # Mon
        DATE_END => '2015-09-22' # Tue
      },
    }
  },

  'Stara Zagora Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Stara Zagora',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-10-17', # Tue
        DATE_END => '2006-10-17' # Tue
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-10-21', # Sun
        DATE_END => '2007-10-22' # Mon
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-10-10', # Sat
        DATE_END => '2009-10-11' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-10-02', # Sat
        DATE_END => '2010-10-03' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-10-08', # Sat
        DATE_END => '2011-10-09' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-10-06', # Sat
        DATE_END => '2012-10-07' # Sun
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-10-05', # Sat
        DATE_END => '2013-10-06' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-10-04', # Sat
        DATE_END => '2014-10-05' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-10-17', # Sat
        DATE_END => '2015-10-18' # Sun
      },
    }
  },

  'Varna Bridge Festival' =>
  {
    ORGANIZATION => 'BuBF',
    CITY => 'Varna',
    COUNTRY => 'Bulgaria',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2012' =>
      {
        # https://www.bridge.bg/en/tournaments/955-
        ORDINAL => 36,
        YEAR => 2012,
        DATE_START => '2012-08-11', # Sat
        DATE_END => '2012-08-18' # Sat
      },
      '2013' =>
      {
        # https://www.bridge.bg/en/tournaments/1321-XXXVIIth-International-Bridge-Tournament-Varna-2013
        ORDINAL => 37,
        YEAR => 2013,
        DATE_START => '2013-08-10', # Sat
        DATE_END => '2013-08-17' # Sat
      },
      '2014' =>
      {
        # https://www.bridge.bg/en/tournaments/1896-XXXVIII-M%D0%B5jdunarod%D0%B5n-bridj-f%D0%B5stival-Varna-2014
        ORDINAL => 38,
        YEAR => 2014,
        DATE_START => '2014-08-09', # Sat
        DATE_END => '2014-08-16' # Sat
      },
      '2015' =>
      {
        # https://www.bridge.bg/en/tournaments/2229-XXXIX-International-Bridge-Festival-Varna-2015
        ORDINAL => 39,
        YEAR => 2015,
        DATE_START => '2015-08-11', # Tue
        DATE_END => '2015-08-16' # Sun
      },
      '2016' =>
      {
        # https://www.bridge.bg/en/tournaments_results/2651-40-ti-M%D0%B5jdunarod%D0%B5n-Bridj-F%D0%B5stival---Varna-2016
        ORDINAL => 40,
        YEAR => 2016,
        DATE_START => '2016-08-15', # Mon
        DATE_END => '2016-08-21' # Sun
      },
      '2017' =>
      {
        # https://www.bridge.bg/en/tournaments/3036-41-MBF-Varna-2017
        ORDINAL => 41,
        YEAR => 2017,
        DATE_START => '2017-08-14', # Mon
        DATE_END => '2017-08-20' # Sun
      },
      '2018' =>
      {
        # https://www.bridge.bg/en/tournaments/3036-41-MBF-Varna-2017
        ORDINAL => 42,
        YEAR => 2018,
        DATE_START => '2018-08-13', # Mon
        DATE_END => '2018-08-19' # Sun
      },
    }
  },
);

my %TOURNAMENTS_BULGARIA =
(
  'Albena Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Albena Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-06-28', # Thu
            DATE_END => '2012-06-30' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Albena Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-07-04', # Fri
            DATE_END => '2014-07-06' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Albena Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-07-03', # Sun
            DATE_END => '2016-07-10' # Sun
          } 
        }
      },
    }
  },

  'Asenovgrad Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
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
            major => 'ROUND',
            DATE_START => '2015-05-30', # Sat
            DATE_END => '2015-05-31' # Sun
          },
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
            DATE_START => '2016-05-28', # Sat
            DATE_END => '2016-05-29' # Sun
          },
        }
      },
    }
  },

  'Bulgarian Open Pairs' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CITY => 'Chepelare',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-11-12', # Sat
            DATE_END => '2011-11-13' # Sun
          } 
        }
      },
      '2013' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-01-26', # Sat
            DATE_END => '2013-01-27' # Sun
          } 
        }
      },
      '2014' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-26' # Sun
          } 
        }
      },
    }
  },

  'Bulgarian Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-13', # Fri
            DATE_END => '2009-03-15' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-27', # Fri
            DATE_END => '2009-03-27' # Fri
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-28', # Sat
            DATE_END => '2009-03-29' # Sun
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
            DATE_START => '2013-02-07', # Thu
            DATE_END => '2013-02-10' # Sun
          },
        }
      },
      '2014' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-02-06', # Thu
            DATE_END => '2014-02-09' # Sun
          },
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
            DATE_START => '2015-01-29', # Thu
            DATE_END => '2015-02-01' # Sun
          },
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
            DATE_START => '2016-02-04', # Thu
            DATE_END => '2016-02-07' # Sun
          },
        }
      },
    }
  },

  'Bulgarian Open Trials' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
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
            DATE_START => '2009-05-22', # Fri
            DATE_END => '2009-05-22' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-23', # Sat
            DATE_END => '2009-05-23' # Sat
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-24', # Sun
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-04-11', # Sun
            DATE_END => '2010-04-11' # Sun
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
            DATE_START => '2011-03-26', # Sat
            DATE_END => '2011-03-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-27', # Sun
            DATE_END => '2011-03-27' # Sun
          } 
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
            DATE_START => '2014-03-15', # Sat
            DATE_END => '2014-03-16' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-04', # Fri
            DATE_END => '2014-04-05' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-05', # Sat
            DATE_END => '2014-04-06' # Sun
          } 
        }
      },
    }
  },

  'Bulgarian Women Trials' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-03-13', # Sun
            DATE_END => '2011-03-13' # Sun
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
            DATE_START => '2012-03-18', # Sun
            DATE_END => '2012-03-18' # Sun
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
            major => 'SEGMENT',
            DATE_START => '2014-04-05', # Sat
            DATE_END => '2014-04-05' # Sat
          } 
        }
      },
    }
  },

  'Cherven Briag Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    CITY => 'Cherven Briag',
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
        MEET => 'Cherven Briag Festival',
        ORDINAL => 2,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-06-18', # Sat
            DATE_END => '2011-06-19' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Cherven Briag Festival',
        ORDINAL => 3,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-09-22', # Sat
            DATE_END => '2012-09-23' # Sun
          } 
        }
      },
    }
  },

  'Dobrich Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
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
        MEET => 'Dobrich Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-04-12', # Sun
            DATE_END => '2009-04-12' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Dobrich Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-04-13', # Sat
            DATE_END => '2013-04-14' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Dobrich Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-04-12', # Sat
            DATE_END => '2014-04-13' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Dobrich Bridge Festival',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-04-18', # Sat
            DATE_END => '2015-04-19' # Sun
          } 
        }
      },
    }
  },

  'Haskovski Mineralni Bani Open Pairs' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    CITY => 'Haskovski Mineralni Bani',
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
            DATE_START => '2009-06-05', # Fri
            DATE_END => '2009-06-05' # Fri
          } 
        }
      },
    }
  },

  'Haskovski Mineralni Bani Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    CITY => 'Haskovski Mineralni Bani',
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
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-06-06', # Sat
            DATE_END => '2009-06-07' # Sun
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
            DATE_START => '2012-06-09', # Sat
            DATE_END => '2012-06-10' # Sun
          } 
        }
      },
    }
  },

  'Karlovo Open Pairs' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    CITY => 'Karlovo',
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
            MOVEMENT => 'Swiss',
            major => 'SESSION',
            DATE_START => '2009-02-27', # Fri
            DATE_END => '2009-02-27' # Fri
          } 
        }
      },
    }
  },

  'Karlovo Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    CITY => 'Karlovo',
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
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-03-01', # Sun
            DATE_END => '2009-03-01' # Sun
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
            DATE_START => '2016-02-19', # Fri
            DATE_END => '2016-02-21' # Sun
          } 
        }
      },
    }
  },

  'Lozenets Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Lozenets Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-05-30', # Sat
            DATE_END => '2009-05-31' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Lozenets Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-05-29', # Sat
            DATE_END => '2010-05-30' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Lozenets Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-06-13', # Sat
            DATE_END => '2015-06-14' # Sun
          } 
        }
      },
    }
  },

  'Pleven Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
    CITY => 'Pleven',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2012-11-03', # Sat
            DATE_END => '2012-11-04' # Sun
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
            DATE_START => '2013-11-02', # Sat
            DATE_END => '2013-11-03' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://www.bridge.bg/en/tournaments/2117-XXV-Bridj-turnir-Gabi
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2014-11-22', # Sat
            DATE_END => '2014-11-23' # Sun
          } 
        }
      },
    }
  },

  'Plovdiv Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Plovdiv Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-04-30', # Fri
            DATE_END => '2010-05-02' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Plovdiv Bridge Festival',
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
        MEET => 'Plovdiv Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-04-27', # Sat
            DATE_END => '2013-04-28' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Plovdiv Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-02', # Sat
            DATE_END => '2015-05-03' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Plovdiv Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-05-07', # Sat
            DATE_END => '2016-05-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-05-08', # Sun
            DATE_END => '2016-05-08' # Sun
          } 
        }
      },
    }
  },

  'Serdika Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Serdika Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            MOVEMENT => 'Danish',
            major => 'ROUND',
            DATE_START => '2009-05-16', # Sat
            DATE_END => '2009-05-17' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Serdika Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-05-15', # Sat
            DATE_END => '2010-05-16' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Serdika Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-15' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Serdika Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-05-19', # Sat
            DATE_END => '2012-05-20' # Sun
          } 
        }
      },
    }
  },

  'Shumen Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Shumen Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-09-21', # Sun
            DATE_END => '2014-09-22' # Mon
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Shumen Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-21', # Mon
            DATE_END => '2015-09-22' # Tue
          } 
        }
      },
    }
  },

  'Stara Zagora Open Teams' =>
  {
    ORGANIZATION => 'BuBF',
    COUNTRY => 'Bulgaria',
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
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            DATE_START => '2006-10-17', # Tue
            DATE_END => '2006-10-17' # Tue
          },
        }
      },
      '2007' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-10-21', # Sun
            DATE_END => '2007-10-21' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-10-10', # Sat
            DATE_END => '2009-10-11' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            DATE_START => '2009-10-11', # Sun
            DATE_END => '2009-10-11' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            DATE_START => '2009-10-11', # Sun
            DATE_END => '2009-10-11' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-10-02', # Sat
            DATE_END => '2010-10-03' # Sun
          },
        }
      },
      '2011' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-10-08', # Sat
            DATE_END => '2011-10-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            DATE_START => '2011-10-09', # Sun
            DATE_END => '2011-10-09' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-10-09', # Sun
            DATE_END => '2011-10-09' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-10-06', # Sat
            DATE_END => '2012-10-07' # Sun
          },
        }
      },
      '2013' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            DATE_START => '2013-10-05', # Sat
            DATE_END => '2013-10-06' # Sun
          },
        }
      },
      '2014' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-10-04', # Sat
            DATE_END => '2014-10-05' # Sun
          },
        }
      },
      '2015' =>
      {
        MEET => 'Stara Zagora Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-10-17', # Sat
            DATE_END => '2015-10-18' # Sun
          },
        }
      },
    }
  },

  'Varna Intercity Teams' =>
  {
    ORIGIN => 'Intercity',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Varna Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            DATE_START => '2013-08-12', # Mon
            DATE_END => '2013-08-12' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-08-12', # Mon
            DATE_END => '2013-08-12' # Mon
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Varna Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            DATE_START => '2014-08-11', # Mon
            DATE_END => '2014-08-11' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            DATE_START => '2014-08-11', # Mon
            DATE_END => '2014-08-11' # Mon
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Varna Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            DATE_START => '2016-08-17', # Wed
            DATE_END => '2016-08-17' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            DATE_START => '2016-08-17', # Wed
            DATE_END => '2016-08-17' # Wed
          } 
        }
      },
    }
  },

  'Varna Titan Open Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Varna Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-08-16', # Fri
            DATE_END => '2013-08-17' # Sat
          },
        }
      },
      '2014' =>
      {
        MEET => 'Varna Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-08-15', # Fri
            DATE_END => '2014-08-16' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Varna Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-08-15', # Sat
            DATE_END => '2015-08-16' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Varna Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-08-20', # Sat
            DATE_END => '2016-08-21' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_BULGARIA, \%TOURNAMENTS_BULGARIA, 'Bulgaria');
}

1;
