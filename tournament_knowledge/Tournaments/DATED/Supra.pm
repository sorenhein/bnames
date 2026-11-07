#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Supra;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# https://en.wikipedia.org/wiki/List_of_bridge_competitions_and_awards

my %MEETS_SUPRA =
(
  'Buffett Cup' =>
  {
    ORIGIN => 'International',

    EDITIONS =>
    {
      '2006' =>
      {
        CITY => 'Dublin',
        COUNTRY => 'Ireland',
        YEAR => 2006,
        DATE_START => '2006-09-18', # Mon
        DATE_END => '2006-09-21' # Thu
      },
      '2010' =>
      {
        CITY => 'Cardiff',
        COUNTRY => 'Wales',
        YEAR => 2010,
        DATE_START => '2010-09-13', # Mon
        DATE_END => '2010-09-16' # Thu
      },
      '2012' =>
      {
        CITY => 'Omaha',
        COUNTRY => 'USA',
        YEAR => 2012,
        DATE_START => '2012-09-10', # Mon
        DATE_END => '2012-09-13' # Thu
      },
    }
  },

  'Cavendish Invitational' =>
  {
    ORIGIN => 'Invitational',

    EDITIONS =>
    {
      '1997' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 1997,
        DATE_START => '1997-05-10', # Sat
        DATE_END => '1997-05-14' # Wed
      },
      '1998' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 1998,
        DATE_START => '1998-05-08', # Fri
        DATE_END => '1998-05-12' # Tue
      },
      '1999' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 1999,
        DATE_START => '1999-05-06', # Thu
        DATE_END => '1999-05-10' # Mon
      },
      '2000' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2000,
        DATE_START => '2000-05-10', # Wed
        DATE_END => '2000-05-14' # Sun
      },
      '2001' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2001,
        DATE_START => '2001-05-09', # Wed
        DATE_END => '2001-05-13' # Sun
      },
      '2003' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2003,
        DATE_START => '2003-05-07', # Wed
        DATE_END => '2003-05-11' # Sun
      },
      '2004' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2004,
        DATE_START => '2004-05-05', # Wed
        DATE_END => '2004-05-09' # Sun
      },
      '2005' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2005,
        DATE_START => '2005-05-04', # Wed
        DATE_END => '2005-05-08' # Sun
      },
      '2006' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2006,
        DATE_START => '2006-05-10', # Wed
        DATE_END => '2006-05-14' # Sun
      },
      '2007' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2007,
        DATE_START => '2007-05-09', # Wed
        DATE_END => '2007-05-13' # Sun
      },
      '2008' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2008,
        DATE_START => '2008-05-07', # Wed
        DATE_END => '2008-05-11' # Sun
      },
      '2009' =>
      {
        ORDINAL => 35,
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2009,
        DATE_START => '2009-05-06', # Wed
        DATE_END => '2009-05-10' # Sun
      },
      '2010' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2010,
        DATE_START => '2010-05-05', # Wed
        DATE_END => '2010-05-09' # Sun
      },
      '2011' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2011,
        DATE_START => '2011-05-04', # Wed
        DATE_END => '2011-05-08' # Sun
      },
      '2012A' =>
      {
        CITY => 'Las Vegas',
        COUNTRY => 'USA',
        YEAR => 2012,
        DATE_START => '2012-05-02', # Wed
        DATE_END => '2012-05-05' # Sat
      },
      '2012B' =>
      {
        CITY => 'Monte Carlo',
        COUNTRY => 'Monaco',
        YEAR => 2012,
        DATE_START => '2012-10-15', # Mon
        DATE_END => '2012-10-19' # Fri
      },
      '2013' =>
      {
        CITY => 'Monte Carlo',
        COUNTRY => 'Monaco',
        YEAR => 2013,
        DATE_START => '2013-10-21', # Mon
        DATE_END => '2013-10-25' # Fri
      },
      '2014' =>
      {
        CITY => 'Monte Carlo',
        COUNTRY => 'Monaco',
        YEAR => 2014,
        DATE_START => '2014-09-01', # Mon
        DATE_END => '2014-09-06' # Sat
      },
      '2015' =>
      {
        CITY => 'Monte Carlo',
        COUNTRY => 'Monaco',
        YEAR => 2015,
        DATE_START => '2015-10-19', # Mon
        DATE_END => '2015-10-23' # Fri
      },
    }
  },

  'Channel Trophy' =>
  {
    # https://www.ebu.co.uk/internationals/junior-channel-trophy
    ORIGIN => 'International',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2007' =>
      {
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        YEAR => 2007,
        DATE_START => '2007-12-21', # Fri
        DATE_END => '2007-12-23' # Sun
      },
      '2008' =>
      {
        CITY => 'London',
        COUNTRY => 'England',
        YEAR => 2008,
        DATE_START => '2008-12-19', # Fri
        DATE_END => '2008-12-21' # Sun
      },
      '2011' =>
      {
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        YEAR => 2011,
        DATE_START => '2011-12-16', # Fri
        DATE_END => '2011-12-18' # Sun
      },
      '2012' =>
      {
        CITY => 'London',
        COUNTRY => 'England',
        YEAR => 2012,
        DATE_START => '2012-12-21', # Fri
        DATE_END => '2012-12-23' # Sun
      },
      '2015' =>
      {
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        YEAR => 2015,
        DATE_START => '2015-12-18', # Fri
        DATE_END => '2015-12-20' # Sun
      },
      '2016' =>
      {
        CITY => 'London',
        COUNTRY => 'England',
        YEAR => 2016,
        DATE_START => '2016-12-16', # Fri
        DATE_END => '2016-12-18' # Sun
      },
      '2018' =>
      {
        CITY => 'Lille',
        COUNTRY => 'France',
        YEAR => 2018,
        DATE_START => '2018-12-14', # Fri
        DATE_END => '2018-12-16' # Sun
      },
      '2019' =>
      {
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        YEAR => 2019,
        DATE_START => '2019-12-20', # Fri
        DATE_END => '2019-12-22' # Sun
      },
      '2021' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2021
        CITY => 'Leuven',
        COUNTRY => 'Belgium',
        YEAR => 2021,
        DATE_START => '2021-12-17', # Fri
        DATE_END => '2021-12-19' # Sun
      },
      '2022' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2022
        CITY => 'Lille',
        COUNTRY => 'France',
        YEAR => 2022,
        DATE_START => '2022-12-16', # Fri
        DATE_END => '2022-12-18' # Sun
      },
      '2023' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2023
        YEAR => 2023,
        DATE_START => '2023-12-15', # Fri
        DATE_END => '2023-12-17' # Sun
      },
      '2024' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2024
        CITY => 'London',
        COUNTRY => 'England',
        YEAR => 2024,
        DATE_START => '2024-12-13', # Fri
        DATE_END => '2024-12-15' # Sun
      },
    }
  },

  'Neighbor Challenge' =>
  {
    EDITIONS =>
    {
      '2013' =>
      {
         YEAR => 2013,
         DATE_START => '2013-04-27', # Sat
         DATE_END => '2013-04-28' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-04-25', # Fri
        DATE_END => '2014-04-27' # Sun
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

my %TOURNAMENTS_SUPRA =
(
  'Buffett Cup Individual' =>
  {
    ORIGIN => 'International',
    FORM => 'Individual',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Buffett Cup',
        SCORING => 'BAM',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-09-21', # Thu
            DATE_END => '2006-09-21' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Buffett Cup',
        SCORING => 'BAM',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-15', # Wed
            DATE_END => '2010-09-16' # Thu
          } 
        }
      },
    }
  },

  'Buffett Cup Pairs' =>
  {
    ORIGIN => 'International',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Buffett Cup',
        SCORING => 'BAM',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-09-18', # Mon
            DATE_END => '2006-09-18' # Mon
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Buffett Cup',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-09-13', # Mon
            DATE_END => '2010-09-13' # Mon
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Buffett Cup',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            minor => 'TABLE',
            DATE_START => '2012-09-10', # Mon
            DATE_END => '2012-09-10' # Mon
          } 
        }
      },
    }
  },

  'Buffett Cup Teams' =>
  {
    ORIGIN => 'International',
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Buffett Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-09-20', # Wed
            DATE_END => '2006-09-20' # Wed
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Buffett Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-14', # Tue
            DATE_END => '2010-09-15' # Wed
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Buffett Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2012-09-11', # Tue
            DATE_END => '2012-09-13' # Thu
          } 
        }
      },
    }
  },

  'Cavendish Open Pairs' =>
  {
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1997' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1997,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '1997-05-14', # Wed
            DATE_END => '1997-05-14' # Wed
          } 
        }
      },
      '1998' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            major => 'SESSION',
            DATE_START => '1998-05-08', # Fri
            DATE_END => '1998-05-08' # Fri
          } 
        }
      },
      '1999' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1999,
            STAGE => 'Qualifying',
            major => 'SESSION',
            DATE_START => '1999-05-10', # Mon
            DATE_END => '1999-05-10' # Mon
          },
          'C1' => 
          {
            YEAR => 1999,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1999-05-10', # Mon
            DATE_END => '1999-05-10' # Mon
          } 
        }
      },
      '2000' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            major => 'SESSION',
            DATE_START => '2000-05-13', # Sat
            DATE_END => '2000-05-14' # Sun
          } 
        }
      },
      '2001' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2001,
            major => 'ROUND',
            DATE_START => '2001-05-09', # Wed
            DATE_END => '2001-05-13' # Sun
          } 
        }
      },
      '2004' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-05-05', # Wed
            DATE_END => '2004-05-09' # Sun
          } 
        }
      },
      '2005' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2005-05-07', # Sat
            DATE_END => '2005-05-08' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-05-09', # Wed
            DATE_END => '2007-05-13' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-05-07', # Wed
            DATE_END => '2008-05-11' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-05-08', # Fri
            DATE_END => '2009-05-10' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2010-05-07', # Fri
            DATE_END => '2010-05-09' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-06', # Fri
            DATE_END => '2011-05-08' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Cavendish Invitational',
        MEET_TAG => '2012B',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'SESSION',
            DATE_START => '2012-10-17', # Wed
            DATE_END => '2012-10-18' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-10-18', # Thu
            DATE_END => '2012-10-18' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-10-23', # Wed
            DATE_END => '2013-10-24' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-10-25', # Fri
            DATE_END => '2013-10-25' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-09-03', # Wed
            DATE_END => '2014-09-04' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2014-09-05', # Fri
            DATE_END => '2014-09-05' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'SESSION',
            DATE_START => '2015-10-21', # Wed
            DATE_END => '2015-10-22' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-10-23', # Fri
            DATE_END => '2015-10-23' # Fri
          } 
        }
      },
    }
  },

  'Cavendish Teams' =>
  {
    # https://greatbridgelinks.com/gbltour/tournaments-archive/
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2000' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            DATE_START => '2000-05-10', # Wed
            DATE_END => '2000-05-14' # Sun
          } 
        }
      },
      '2001' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2001,
            major => 'ROUND',
            DATE_START => '2001-05-09', # Wed
            DATE_END => '2001-05-13' # Sun
          } 
        }
      },
      '2003' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2003,
            DATE_START => '2003-05-07', # Wed
            DATE_END => '2003-05-11' # Sun
          } 
        }
      },
      '2004' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'MATCH',
            DATE_START => '2004-05-05', # Wed
            DATE_END => '2004-05-09' # Sun
          } 
        }
      },
      '2005' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'MATCH',
            DATE_START => '2005-05-04', # Wed
            DATE_END => '2005-05-08' # Sun
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-05-10', # Wed
            DATE_END => '2006-05-14' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-05-09', # Wed
            DATE_END => '2007-05-13' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-05-07', # Wed
            DATE_END => '2008-05-11' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-05-06', # Wed
            DATE_END => '2009-05-10' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2010-05-05', # Wed
            DATE_END => '2010-05-06' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-04', # Wed
            DATE_END => '2011-05-05' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Cavendish Invitational',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-10-15', # Mon
            DATE_END => '2012-10-16' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-10-16', # Tue
            DATE_END => '2012-10-16' # Tue
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-10-21', # Mon
            DATE_END => '2013-10-22' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-10-22', # Tue
            DATE_END => '2013-10-22' # Tue
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-22', # Tue
            DATE_END => '2013-10-22' # Tue
          } 
        }
      },
      '2014A' =>
      {
        MEET => 'Cavendish Invitational',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-09-01', # Mon
            DATE_END => '2014-09-02' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-02', # Tue
            DATE_END => '2014-09-02' # Tue
          } 
        }
      },
      '2014B' =>
      {
        MEET => 'Cavendish Invitational',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-09-06', # Sat
            DATE_END => '2014-09-06' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-10-19', # Mon
            DATE_END => '2015-10-20' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Consolation',
            major => 'ROUND',
            DATE_START => '2015-10-20', # Tue
            DATE_END => '2015-10-20' # Tue
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-20', # Tue
            DATE_END => '2015-10-20' # Tue
          } 
        }
      },
    }
  },

  'Cavendish Women Pairs' =>
  {
    FORM => 'Pairs',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Cavendish Invitational',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-10-23', # Wed
            DATE_END => '2013-10-24' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-10-25', # Fri
            DATE_END => '2013-10-25' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-09-03', # Wed
            DATE_END => '2014-09-04' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2014-09-05', # Fri
            DATE_END => '2014-09-05' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Cavendish Invitational',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'SESSION',
            DATE_START => '2015-10-21', # Wed
            DATE_END => '2015-10-22' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-10-23', # Fri
            DATE_END => '2015-10-23' # Fri
          } 
        }
      },
    }
  },

  'Channel Girls Trophy' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-12-21', # Fri
            DATE_END => '2007-12-23' # Sun
          } 
        }
      },
    }
  },

  'Channel Juniors Trophy' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-12-21', # Fri
            DATE_END => '2007-12-23' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'London',
        COUNTRY => 'England',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            minor => 'MATCH',
            DATE_START => '2008-12-19', # Fri
            DATE_END => '2008-12-21' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2011-12-16', # Fri
            DATE_END => '2011-12-18' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'London',
        COUNTRY => 'England',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            DATE_START => '2012-12-21', # Fri
            DATE_END => '2012-12-23' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            minor => 'SET',
            DATE_START => '2015-12-18', # Fri
            DATE_END => '2015-12-20' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'London',
        COUNTRY => 'England',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-12-16', # Fri
            DATE_END => '2016-12-18' # Sun
          } 
        }
      },
      '2018' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'Lille',
        COUNTRY => 'France',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-12-14', # Fri
            DATE_END => '2018-12-16' # Sun
          } 
        }
      },
      '2019' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-12-20', # Fri
            DATE_END => '2019-12-22' # Sun
          } 
        }
      },
      '2021' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2021
        MEET => 'Channel Trophy',
        CITY => 'Leuven',
        COUNTRY => 'Belgium',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-12-17', # Fri
            DATE_END => '2021-12-19' # Sun
          } 
        }
      },
      '2022' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2022
        MEET => 'Channel Trophy',
        CITY => 'Lille',
        COUNTRY => 'France',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-12-16', # Fri
            DATE_END => '2022-12-18' # Sun
          } 
        }
      },
      '2023' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2023
        MEET => 'Channel Trophy',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-12-15', # Fri
            DATE_END => '2023-12-17' # Sun
          } 
        }
      },
      '2024' =>
      {
        # https://bridgescanner.com/event/channel-trophy-2024
        MEET => 'Channel Trophy',
        CITY => 'London',
        COUNTRY => 'England',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-12-13', # Fri
            DATE_END => '2024-12-15' # Sun
          } 
        }
      },
    }
  },

  'Channel Schools Trophy' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    AGE => 'Schools',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Channel Trophy',
        CITY => 'Utrecht',
        COUNTRY => 'Netherlands',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2007-12-21', # Fri
            DATE_END => '2007-12-23' # Sun
          } 
        }
      },
    }
  },

  'Computer World Championship' =>
  {
    # https://bridgebotchampionship.com/home/world-computer-bridge-championship/
    ORIGIN => 'Transnational',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        ORDINAL => 9,
        CITY => 'Estoril',
        COUNTRY => 'Portugal',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-11-09', # Wed
            DATE_END => '2005-11-11' # Fri
          } 
        }
      },
      '2007' =>
      {
        ORDINAL => 11,
        CITY => 'Shanghai',
        COUNTRY => 'China',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-10-31', # Wed
            DATE_END => '2007-10-31' # Wed
          } 
        }
      },
      '2008' =>
      {
        ORDINAL => 12,
        CITY => 'Las Vegas',
        COUNTRY => 'USA',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-07-25', # Fri
            DATE_END => '2008-07-25' # Fri
          } 
        }
      },
    }
  },

  'Neighbor Challenge IMP Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Neighbor Challenge',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-04-25', # Fri
            DATE_END => '2014-04-27' # Sun
          } 
        }
      },
    }
  },

  'Neighbor Challenge Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Neighbor Challenge',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-04-27', # Sat
            DATE_END => '2013-04-28' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Neighbor Challenge',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-04-25', # Fri
            DATE_END => '2014-04-27' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Neighbor Challenge',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-03-28', # Sat
            DATE_END => '2015-03-29' # Sun
          } 
        }
      },
    }
  },

  'Neighbor Challenge Women Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Neighbor Challenge',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-04-25', # Fri
            DATE_END => '2014-04-27' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Neighbor Challenge',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            DATE_START => '2015-03-28', # Sat
            DATE_END => '2015-03-29' # Sun
          } 
        }
      },
    }
  },

  'NYSA Euroregion Nations Cup' =>
  {
    ORIGIN => 'Transnational',
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
            DATE_START => '2013-10-03', # Thu
            DATE_END => '2013-10-03' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-10-03', # Thu
            DATE_END => '2013-10-03' # Thu
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
            major => 'MATCH',
            DATE_START => '2014-09-24', # Wed
            DATE_END => '2014-09-24' # Wed
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            DATE_START => '2014-09-25', # Thu
            DATE_END => '2014-09-25' # Thu
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            DATE_START => '2014-09-25', # Thu
            DATE_END => '2014-09-25' # Thu
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-09-17', # Thu
            DATE_END => '2015-09-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            DATE_START => '2015-09-17', # Thu
            DATE_END => '2015-09-17' # Thu
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            DATE_START => '2015-09-17', # Thu
            DATE_END => '2015-09-17' # Thu
          } 
        }
      },
    }
  },

  'Paris Youth Open Teams' =>
  {
    CITY => 'Paris',
    COUNTRY => 'France',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

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
            major => 'ROUND',
            DATE_START => '2013-11-01', # Fri
            DATE_END => '2013-11-03' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-04', # Mon
            DATE_END => '2013-11-04' # Mon
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-05', # Tue
            DATE_END => '2013-11-05' # Tue
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
            major => 'ROUND',
            DATE_START => '2015-10-28', # Wed
            DATE_END => '2015-10-29' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-31', # Sat
            DATE_END => '2015-10-31' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-31', # Sat
            DATE_END => '2015-11-01' # Sun
          } 
        }
      },
    }
  },

  'Stern-Cornell Trophy' =>
  {
    ORIGIN => 'International',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U25',

    EDITIONS =>
    {
      '2015' =>
      {
        # https://www.abf.com.au/2015-australian-youth-championships-2/
        CITY => 'Canberra',
        COUNTRY => 'Australia',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-01-17', # Sat
            DATE_END => '2015-01-17' # Sat
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_SUPRA, \%TOURNAMENTS_SUPRA, 'Supra');
}

1;
