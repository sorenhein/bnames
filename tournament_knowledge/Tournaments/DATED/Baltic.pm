#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Baltic;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_BALTIC =
(
  'Baltic Cup' =>
  {
    ORGANIZATION => 'LiBA',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2010' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2010
        YEAR => 2010,
        CITY => 'Riga',
        COUNTRY => 'Latvia',
        DATE_START => '2010-05-15', # Sat
        DATE_END => '2010-05-16' # Sun
      },
      '2011' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2011
        YEAR => 2011,
        CITY => 'Vilnius',
        COUNTRY => 'Lithuania',
        DATE_START => '2011-04-30', # Sat
        DATE_END => '2011-05-02' # Mon
      },
      '2012' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2012
        YEAR => 2012,
        COUNTRY => 'Estonia',
        DATE_START => '2012-04-21', # Sat
        DATE_END => '2012-04-22' # Sun
      },
      '2013' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2013
        YEAR => 2013,
        CITY => 'Riga',
        COUNTRY => 'Latvia',
        DATE_START => '2013-05-11', # Sat
        DATE_END => '2013-05-12' # Sun
      },
      '2014' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2014
        YEAR => 2014,
        CITY => 'Pärnu',
        COUNTRY => 'Estonia',
        DATE_START => '2014-04-26', # Sat
        DATE_END => '2014-04-27' # Sun
      },
      '2015' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2015
        YEAR => 2015,
        COUNTRY => 'Finland',
        DATE_START => '2015-04-25', # Sat
        DATE_END => '2015-04-26' # Sun
      },
      '2016' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2016
        YEAR => 2016,
        CITY => 'Vilnius',
        COUNTRY => 'Lithuania',
        DATE_START => '2016-04-23', # Sat
        DATE_END => '2016-04-24' # Sun
      },
      '2017' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2017
        YEAR => 2017,
        COUNTRY => 'Estonia',
        DATE_START => '2017-04-22', # Sat
        DATE_END => '2017-04-23' # Sun
      },
      '2018' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2018
        YEAR => 2018,
        CITY => 'Riga',
        COUNTRY => 'Latvia',
        DATE_START => '2018-04-21', # Sat
        DATE_END => '2018-04-22' # Sun
      },
      '2019' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2019
        YEAR => 2019,
        CITY => 'Vilnius',
        COUNTRY => 'Lithuania',
        DATE_START => '2019-04-27', # Sat
        DATE_END => '2019-04-28' # Sun
      },
      '2020' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2020
        YEAR => 2020,
        CITY => 'Online',
        DATE_START => '2020-06-29', # Mon
        DATE_END => '2020-07-04' # Sat
      },
      '2021' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2021
        YEAR => 2021,
        CITY => 'Online',
        DATE_START => '2021-05-17', # Mon
        DATE_END => '2021-05-22' # Sat
      },
      '2022' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2022
        YEAR => 2022,
        CITY => 'Tallinn',
        COUNTRY => 'Estonia',
        DATE_START => '2022-04-20', # Wed
        DATE_END => '2022-04-21' # Thu
      },
      '2023' =>
      {
        # https://bridgescanner.com/event/baltic-cup-2023
        YEAR => 2023,
        CITY => 'Vilnius',
        COUNTRY => 'Lithuania',
        DATE_START => '2023-09-20', # Wed
        DATE_END => '2023-09-21' # Thu
      },
    }
  },

  'Riga Invites to Jurmala' =>
  {
    # https://www.rigainvites.lv/results.php
    ORGANIZATION => 'LaBF',
    ZONE => 'Europe',
    CITY => 'Riga',
    COUNTRY => 'Latvia',

    EDITIONS =>
    {
      '2009' =>
      {
        ORDINAL => 3,
        YEAR => 2009,
        DATE_START => '2009-08-19', # Wed
        DATE_END => '2009-08-23' # Sun
      },
      '2010' =>
      {
        ORDINAL => 4,
        YEAR => 2010,
        DATE_START => '2010-08-18', # Wed
        DATE_END => '2010-08-22' # Sun
      },
      '2011' =>
      {
        ORDINAL => 5,
        YEAR => 2011,
        DATE_START => '2011-08-17', # Wed
        DATE_END => '2011-08-21' # Sun
      },
      '2012' =>
      {
        ORDINAL => 6,
        YEAR => 2012,
        DATE_START => '2012-08-29', # Wed
        DATE_END => '2012-09-01' # Sat
      },
      '2013' =>
      {
        ORDINAL => 7,
        YEAR => 2013,
        DATE_START => '2013-08-21', # Wed
        DATE_END => '2013-08-25' # Sun
      },
      '2014' =>
      {
        ORDINAL => 8,
        YEAR => 2014,
        DATE_START => '2014-08-13', # Wed
        DATE_END => '2014-08-17' # Sun
      },
      '2015' =>
      {
        ORDINAL => 9,
        YEAR => 2015,
        DATE_START => '2015-08-19', # Wed
        DATE_END => '2015-08-23' # Sun
      },
      '2016' =>
      {
        ORDINAL => 10,
        YEAR => 2016,
        DATE_START => '2016-08-17', # Wed
        DATE_END => '2016-08-21' # Sun
      },
      '2017' =>
      {
        ORDINAL => 11,
        YEAR => 2017,
        DATE_START => '2017-08-09', # Wed
        DATE_END => '2017-08-13' # Sun
      },
      '2018' =>
      {
        ORDINAL => 12,
        YEAR => 2018,
        DATE_START => '2018-08-15', # Wed
        DATE_END => '2018-08-19' # Sun
      },
      '2019' =>
      {
        ORDINAL => 13,
        YEAR => 2019,
        DATE_START => '2019-08-14', # Wed
        DATE_END => '2019-08-18' # Sun
      },
      '2020' =>
      {
        ORDINAL => 14,
        YEAR => 2020,
        DATE_START => '2020-08-12', # Wed
        DATE_END => '2020-08-16' # Sun
      },
      '2021' =>
      {
        ORDINAL => 15,
        YEAR => 2021,
        DATE_START => '2021-08-11', # Wed
        DATE_END => '2021-08-15' # Sun
      },
      '2022' =>
      {
        ORDINAL => 16,
        YEAR => 2022,
        DATE_START => '2022-08-10', # Wed
        DATE_END => '2022-08-14' # Sun
      },
      '2023' =>
      {
        ORDINAL => 17,
        YEAR => 2023,
        DATE_START => '2023-09-06', # Wed
        DATE_END => '2023-09-10' # Sun
      },
      '2024' =>
      {
        ORDINAL => 18,
        YEAR => 2024,
        DATE_START => '2024-08-21', # Wed
        DATE_END => '2024-08-25' # Sun
      },
    }
  },

  'Tallinn Bridge Festival' =>
  {
    # https://old.bridge.ee/festival/results.php
    ORGANIZATION => 'EstBL',
    ZONE => 'Europe',
    CITY => 'Tallinn',
    COUNTRY => 'Estonia',

    EDITIONS =>
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-05-29', # Sat
        DATE_END => '2004-05-29' # Sat
      },
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-05-26', # Thu
        DATE_END => '2005-05-31' # Tue
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-05-26', # Fri
        DATE_END => '2006-05-26' # Fri
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-05-30', # Wed
        DATE_END => '2007-05-31' # Thu
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-06-03', # Tue
        DATE_END => '2008-06-03' # Tue
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-05-28', # Thu
        DATE_END => '2009-05-31' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-05-26', # Wed
        DATE_END => '2010-05-30' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-05-27', # Fri
        DATE_END => '2011-05-29' # Sun
      },
      '2012' =>
      {
        # https://old.bridge.ee/festival/5SFG_fest12.htm
        ORDINAL => 45,
        YEAR => 2012,
        DATE_START => '2012-09-27', # Thu
        DATE_END => '2012-09-30' # Sun
      },
      '2013' =>
      {
        # https://old.bridge.ee/festival/fest13.htm
        ORDINAL => 46,
        YEAR => 2013,
        DATE_START => '2013-05-22', # Wed
        DATE_END => '2013-05-26' # Sun
      },
      '2014' =>
      {
        # https://old.bridge.ee/festival/fest14.htm
        ORDINAL => 47,
        YEAR => 2014,
        DATE_START => '2014-05-21', # Wed
        DATE_END => '2014-05-25' # Sun
      },
      '2015' =>
      {
        # https://old.bridge.ee/festival/fest15.htm
        ORDINAL => 48,
        YEAR => 2015,
        DATE_START => '2015-05-27', # Wed
        DATE_END => '2015-05-31' # Sun
      },
      '2016' =>
      {
        ORDINAL => 49,
        YEAR => 2016,
        DATE_START => '2016-05-25', # Wed
        DATE_END => '2016-05-29' # Sun
      },
      '2017' =>
      {
        ORDINAL => 50,
        YEAR => 2017,
        DATE_START => '2017-05-25', # Thu
        DATE_END => '2017-05-29' # Mon
      },
      '2018' =>
      {
        ORDINAL => 51,
        YEAR => 2018,
        DATE_START => '2018-04-24', # Tue
        DATE_END => '2018-04-28' # Sat
      },
      '2019' =>
      {
        ORDINAL => 52,
        YEAR => 2019,
        DATE_START => '2019-05-02', # Thu
        DATE_END => '2019-05-05' # Sun
      },
      '2022' =>
      {
        ORDINAL => 53,
        YEAR => 2022,
        DATE_START => '2022-04-20', # Wed
        DATE_END => '2022-04-24' # Sun
      },
      '2023' =>
      {
        ORDINAL => 54,
        YEAR => 2023,
        DATE_START => '2023-05-25', # Thu
        DATE_END => '2023-05-28' # Sun
      },
      '2024' =>
      {
        ORDINAL => 55,
        YEAR => 2024,
        DATE_START => '2024-05-16', # Thu
        DATE_END => '2024-05-19' # Sun
      },
    }
  },

  'Vilnius Cup' =>
  {
    ORGANIZATION => 'LiBA',
    ZONE => 'Europe',
    CITY => 'Vilnius',
    COUNTRY => 'Lithuania',

    EDITIONS =>
    {
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-09-29', # Thu
        DATE_END => '2005-10-02' # Sun
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-09-28', # Thu
        DATE_END => '2006-10-01' # Sun
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-09-13', # Thu
        DATE_END => '2007-09-16' # Sun
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-10-01', # Thu
        DATE_END => '2009-10-04' # Sun
      },
      '2010' =>
      {
        ORDINAL => 37,
        YEAR => 2010,
        DATE_START => '2010-09-16', # Thu
        DATE_END => '2010-09-19' # Sun
      },
      '2011' =>
      {
        ORDINAL => 38,
        YEAR => 2011,
        DATE_START => '2011-09-29', # Thu
        DATE_END => '2011-10-02' # Sun
      },
      '2012' =>
      {
        ORDINAL => 39,
        YEAR => 2012,
        DATE_START => '2012-10-25', # Thu
        DATE_END => '2012-10-28' # Sun
      },
      '2013' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2013
        ORDINAL => 40,
        YEAR => 2013,
        DATE_START => '2013-08-29', # Thu
        DATE_END => '2013-09-01' # Sun
      },
      '2014' =>
      {
        ORDINAL => 41,
        YEAR => 2014,
        DATE_START => '2014-09-18', # Thu
        DATE_END => '2014-09-21' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-09-04', # Fri
        DATE_END => '2015-09-06' # Sun
      },
      # https://wyniki.pzbs.pl/2016/vilnius/16vilqleaderb.html
      '2017' =>
      {
        YEAR => 2017,
        DATE_START => '2017-09-15', # Fri
        DATE_END => '2017-09-17' # Sun
      },
      '2018' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2018
        YEAR => 2018,
        DATE_START => '2018-10-17', # Wed
        DATE_END => '2018-10-21' # Sun
      },
      '2019' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2019
        YEAR => 2019,
        DATE_START => '2019-10-11', # Fri
        DATE_END => '2019-10-15' # Tue
      },
      '2020' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2020
        YEAR => 2020,
        DATE_START => '2020-10-23', # Fri
        DATE_END => '2020-10-25' # Sun
      },
      '2021' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2021
        YEAR => 2021,
        DATE_START => '2021-10-01', # Fri
        DATE_END => '2021-10-03' # Sun
      },
      '2022' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2022
        YEAR => 2022,
        DATE_START => '2022-09-23', # Fri
        DATE_END => '2022-09-25' # Sun
      },
      '2023' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2023
        YEAR => 2023,
        DATE_START => '2023-09-22', # Fri
        DATE_END => '2023-09-24' # Sun
      },
      '2024' =>
      {
        # https://bridgescanner.com/event/vilnius-cup-2024
        YEAR => 2024,
        DATE_START => '2024-09-27', # Fri
        DATE_END => '2024-09-29' # Sun
      },
    }
  }
);

my %TOURNAMENTS_BALTIC =
(
  'Baltic Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Baltic Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-04-30', # Sat
            DATE_END => '2011-04-30' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-04-30', # Sat
            DATE_END => '2011-05-01' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-04-30', # Sat
            DATE_END => '2011-05-01' # Sun
          } 
        }
      },
      '2012' =>
      {
        # This is not Baltic Cup, but something like
        # Baltic Teams Cup.
        # http://bridge.ee/BL/BTC12.htm
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-05-26', # Sat
            DATE_END => '2012-05-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-27', # Sun
            DATE_END => '2012-05-27' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-27', # Sun
            DATE_END => '2012-05-27' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Baltic Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-12', # Sun
            DATE_END => '2013-05-12' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-12', # Sun
            DATE_END => '2013-05-12' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Baltic Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-04-26', # Sat
            DATE_END => '2014-04-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            DATE_START => '2014-04-27', # Sun
            DATE_END => '2014-04-27' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-27', # Sun
            DATE_END => '2014-04-27' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Baltic Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-04-25', # Sat
            DATE_END => '2015-04-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-26', # Sun
            DATE_END => '2015-04-26' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-26', # Sun
            DATE_END => '2015-04-26' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Baltic Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-04-24', # Sun
            DATE_END => '2016-04-24' # Sun
          } 
        }
      },
    }
  },

  'Estonian Open Pair Trials' =>
  {
    ORGANIZATION => 'LaBF',
    ORIGIN => 'National',
    ZONE => 'Europe',
    COUNTRY => 'Estonia',
    FORM => 'Pairs',
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
            DATE_START => '2013-09-07', # Sat
            DATE_END => '2013-09-08' # Sun
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
            DATE_START => '2015-08-29', # Sat
            DATE_END => '2015-08-30' # Sun
          } 
        }
      },
    }
  },

  'Estonian Open Teams' =>
  {
    ORGANIZATION => 'EstBL',
    COUNTRY => 'Estonia',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-04-03', # Tue
            DATE_END => '2007-04-03' # Tue
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
            major => 'ROUND',
            DATE_START => '2010-04-10', # Sat
            DATE_END => '2010-04-11' # Sun
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
            DATE_START => '2011-04-02', # Sat
            DATE_END => '2011-04-03' # Sun
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
            DATE_START => '2012-03-31', # Sat
            DATE_END => '2012-04-01' # Sun
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
            DATE_START => '2013-04-06', # Sat
            DATE_END => '2013-04-07' # Sun
          } 
        }
      },
    }
  },

  'Estonian-Latvian Open Team Trials' =>
  {
    ORIGIN => 'International',
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
            DATE_START => '2009-08-29', # Sat
            DATE_END => '2009-08-30' # Sun
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
            DATE_END => '2011-08-28' # Sun
          } 
        }
      },
    }
  },

  'Fortuna Cup' =>
  {
    ORGANIZATION => 'EstBL',
    ORIGIN => 'National',
    CITY => 'Tallinn',
    COUNTRY => 'Estonia',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'MP',
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
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'MP',
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
      '2011' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-05-28', # Sat
            DATE_END => '2011-05-29' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-05-27', # Fri
            DATE_END => '2016-05-27' # Fri
          } 
        }
      },
    }
  },

  'Latvia Invites' =>
  {
    ORGANIZATION => 'LaBF',
    ZONE => 'Europe',
    COUNTRY => 'Latvia',
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
            DATE_START => '2014-05-31', # Sat
            DATE_END => '2014-06-01' # Sun
          } 
        }
      },
    }
  },

  'Lithuanian Open Teams' =>
  {
    ORGANIZATION => 'LiBA',
    COUNTRY => 'Lithuania',
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
            DATE_START => '2009-04-25', # Sat
            DATE_END => '2009-04-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-04-26', # Sun
            DATE_END => '2009-04-26' # Sun
          } 
        }
      },
    }
  },

  'Riga Invitational Pairs' =>
  {
    ORIGIN => 'Invitational',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-08-19', # Wed
            DATE_END => '2009-08-19' # Wed
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-08-18', # Wed
            DATE_END => '2010-08-18' # Wed
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-08-17', # Wed
            DATE_END => '2011-08-17' # Wed
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-08-29', # Wed
            DATE_END => '2012-08-31' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-08-21', # Wed
            DATE_END => '2013-08-25' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-08-14', # Thu
            DATE_END => '2014-08-14' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-08-19', # Wed
            DATE_END => '2015-08-19' # Wed
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-08-17', # Wed
            DATE_END => '2016-08-17' # Wed
          } 
        }
      },
    }
  },

  'Riga Open Teams' =>
  {
    ORIGIN => 'Transnational',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            DATE_START => '2009-08-21', # Fri
            DATE_END => '2009-08-21' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            DATE_START => '2009-08-21', # Fri
            DATE_END => '2009-08-21' # Fri
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            DATE_START => '2010-08-20', # Fri
            DATE_END => '2010-08-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            DATE_START => '2010-08-20', # Fri
            DATE_END => '2010-08-20' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            DATE_START => '2011-08-19', # Fri
            DATE_END => '2011-08-19' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-08-19', # Fri
            DATE_END => '2011-08-19' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            DATE_START => '2012-08-31', # Fri
            DATE_END => '2012-08-31' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-08-31', # Fri
            DATE_END => '2012-08-31' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            DATE_START => '2013-08-23', # Fri
            DATE_END => '2013-08-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-08-23', # Fri
            DATE_END => '2013-08-23' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            DATE_START => '2014-08-15', # Fri
            DATE_END => '2014-08-15' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            DATE_START => '2014-08-15', # Fri
            DATE_END => '2014-08-15' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            DATE_START => '2015-08-21', # Fri
            DATE_END => '2015-08-21' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            DATE_START => '2015-08-21', # Fri
            DATE_END => '2015-08-21' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Riga Invites to Jurmala',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            DATE_START => '2016-08-19', # Fri
            DATE_END => '2016-08-19' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            DATE_START => '2016-08-19', # Fri
            DATE_END => '2016-08-19' # Fri
          } 
        }
      },
    }
  },

  'Tallinn Invitational Pairs' =>
  {
    ORGANIZATION => 'EstBL',
    ORIGIN => 'Invitational',
    CITY => 'Tallinn',
    COUNTRY => 'Estonia',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            DATE_START => '2005-05-26', # Thu
            DATE_END => '2005-05-26' # Thu
          },
        }
      },
      '2009' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-05-28', # Thu
            DATE_END => '2009-05-28' # Thu
          },
        }
      },
      '2010' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-05-27', # Thu
            DATE_END => '2010-05-27' # Thu
          },
        }
      },
      '2012' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-27', # Thu
            DATE_END => '2012-09-27' # Thu
          },
        }
      },
      '2014' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-05-22', # Thu
            DATE_END => '2014-05-22' # Thu
          },
        }
      },
      '2015' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-05-28', # Thu
            DATE_END => '2015-05-29' # Fri
          },
        }
      },
      '2016' =>
      {
        MEET => 'Tallinn Bridge Festival',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            DATE_START => '2016-05-26', # Thu
            DATE_END => '2016-05-26' # Thu
          },
        }
      },
    }
  },

  'Towns Cup' =>
  {
    ORGANIZATION => 'EstBL',
    ORIGIN => 'National',
    CITY => 'Tallinn',
    COUNTRY => 'Estonia',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            DATE_START => '2004-05-29', # Sat
            DATE_END => '2004-05-29' # Sat
          },
        }
      },
      '2005' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            DATE_START => '2005-05-31', # Tue
            DATE_END => '2005-05-31' # Tue
          },
        }
      },
      '2006' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            DATE_START => '2006-05-26', # Fri
            DATE_END => '2006-05-26' # Fri
          },
        }
      },
      '2007' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-05-30', # Wed
            DATE_END => '2007-05-30' # Wed
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'HALF',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
          },
        }
      },
      '2008' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-06-03', # Tue
            DATE_END => '2008-06-03' # Tue
          },
        }
      },
      '2009' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-05-29', # Fri
            DATE_END => '2009-05-30' # Sat
          },
        }
      },
      '2010' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-05-28', # Fri
            DATE_END => '2010-05-29' # Sat
          },
        }
      },
      '2011' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-27', # Fri
            DATE_END => '2011-05-27' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-28', # Sat
            DATE_END => '2011-05-28' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-28', # Fri
            DATE_END => '2012-09-30' # Sun
          },
        }
      },
      '2013' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            DATE_START => '2013-05-23', # Thu
            DATE_END => '2013-05-25' # Sat
          },
        }
      },
      '2014' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-05-22', # Thu
            DATE_END => '2014-05-24' # Sat
          },
        }
      },
      '2015' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-05-29', # Fri
            DATE_END => '2015-05-29' # Fri
          },
        }
      },
      '2016' =>
      {
        MEET => 'Tallinn Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            DATE_START => '2016-05-26', # Thu
            DATE_END => '2016-05-27' # Fri
          },
        }
      },
    }
  },

  'Vilnius BAM Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010A' =>
      {
        MEET => 'Vilnius Cup',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-16', # Thu
            DATE_END => '2010-09-16' # Thu
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'Vilnius Cup',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-17', # Fri
            DATE_END => '2010-09-18' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-29', # Thu
            DATE_END => '2011-10-01' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-08-29', # Thu
            DATE_END => '2013-08-31' # Sat
          } 
        }
      },
    }
  },

  'Vilnius Club Pairs' =>
  {
    ORGANIZATION => 'LiBA',
    ORIGIN => 'Interclub',
    CITY => 'Vilnius',
    COUNTRY => 'Lithuania',
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-14' # Sat
          } 
        }
      },
    }
  },

  'Vilnius IMP Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009A' =>
      {
        MEET => 'Vilnius Cup',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-10-01', # Thu
            DATE_END => '2009-10-01' # Thu
          } 
        }
      },
      '2009B' =>
      {
        MEET => 'Vilnius Cup',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-10-03', # Sat
            DATE_END => '2009-10-04' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-09-29', # Thu
            DATE_END => '2011-09-29' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-10-01', # Sat
            DATE_END => '2011-10-01' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-10-25', # Thu
            DATE_END => '2012-10-27' # Sat
          } 
        }
      },
    }
  },

  'Vilnius Open Pairs' =>
  {
    ORIGIN => 'Invitational',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-10-01', # Sat
            DATE_END => '2011-10-01' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-10-25', # Thu
            DATE_END => '2012-10-27' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-08-29', # Thu
            DATE_END => '2013-08-31' # Sat
          } 
        }
      },
    }
  },

  'Vilnius Open Teams' =>
  {
    ORIGIN => 'Transnational',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-10-02', # Sun
            DATE_END => '2005-10-02' # Sun
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-10-01', # Sun
            DATE_END => '2006-10-01' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-09-16', # Sun
            DATE_END => '2007-09-16' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-10-01', # Thu
            DATE_END => '2009-10-04' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-17', # Fri
            DATE_END => '2010-09-17' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-09-19', # Sun
            DATE_END => '2010-09-19' # Sun
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-09-19', # Sun
            DATE_END => '2010-09-19' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-30', # Fri
            DATE_END => '2011-09-30' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-02', # Sun
            DATE_END => '2011-10-02' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-02', # Sun
            DATE_END => '2011-10-02' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-10-26', # Fri
            DATE_END => '2012-10-26' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-28', # Sun
            DATE_END => '2012-10-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-10-28', # Sun
            DATE_END => '2012-10-28' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-08-30', # Fri
            DATE_END => '2013-08-30' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-01', # Sun
            DATE_END => '2013-09-01' # Sun
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-01', # Sun
            DATE_END => '2013-09-01' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-09-19', # Fri
            DATE_END => '2014-09-21' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Vilnius Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'ROUND',
            DATE_START => '2015-09-04', # Fri
            DATE_END => '2015-09-04' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'ROUND',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-09-06', # Sun
            DATE_END => '2015-09-06' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_BALTIC, \%TOURNAMENTS_BALTIC, 'Baltic');
}

1;
