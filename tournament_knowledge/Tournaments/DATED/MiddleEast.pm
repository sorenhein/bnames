#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::MiddleEast;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_MIDDLEEAST =
(
  'BFAME Championship' =>
  {
    # https://www.bridgewebs.com/cgi-bin/bwop/bw.cgi?club=bfame&pid=display_page2
    ORGANIZATION => 'BFAME',
    ORIGIN => 'International',
    ZONE => 'Middle East',

    EDITIONS => 
    {
      '2001' =>
      {
        ORDINAL => 11,
        CITY => 'Manama',
        COUNTRY => 'Bahrain',
        YEAR => 2001,
        DATE_START => '2001-05-23', # Wed
        DATE_END => '2001-06-02' # Sat
      },
      '2003' =>
      {
        ORDINAL => 12,
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        YEAR => 2003,
        DATE_START => '2003-08-01', # Fri
        DATE_END => '2003-08-09' # Sat
      },
      '2005' =>
      {
        ORDINAL => 13,
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        YEAR => 2005,
        DATE_START => '2005-08-01', # Mon
        DATE_END => '2005-08-09' # Tue
      },
      '2007' =>
      {
        ORDINAL => 14,
        CITY => 'Karachi',
        COUNTRY => 'Pakistan',
        YEAR => 2007,
        DATE_START => '2007-05-12', # Sat
        DATE_END => '2007-05-20' # Sun
      },
      '2009' =>
      {
        ORDINAL => 15,
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        YEAR => 2009,
        DATE_START => '2009-06-26', # Fri
        DATE_END => '2009-07-04' # Sat
      },
      '2011' =>
      {
        ORDINAL => 16,
        CITY => 'Chennai',
        COUNTRY => 'India',
        YEAR => 2011,
        DATE_START => '2011-05-25', # Wed
        DATE_END => '2011-06-01' # Wed
      },
      '2013' =>
      {
        ORDINAL => 17,
        CITY => 'Ahmedabad',
        COUNTRY => 'India',
        YEAR => 2013,
        DATE_START => '2013-06-04', # Tue
        DATE_END => '2013-06-11' # Tue
      },
      '2015' =>
      {
        ORDINAL => 18,
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        YEAR => 2015,
        DATE_START => '2015-05-27', # Wed
        DATE_END => '2015-06-03' # Wed
      },
      '2017' =>
      {
        ORDINAL => 19,
        CITY => 'Dubai',
        COUNTRY => 'UAE',
        YEAR => 2017,
        DATE_START => '2017-04-03', # Mon
        DATE_END => '2017-04-11' # Tue
      },
      '2019' =>
      {
        ORDINAL => 20,
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        YEAR => 2019,
        DATE_START => '2019-05-23', # Thu
        DATE_END => '2019-05-30' # Thu
      },
      '2021' =>
      {
        ORDINAL => 21,
        CITY => 'Online',
        YEAR => 2021,
        DATE_START => '2021-12-08', # Wed
        DATE_END => '2021-12-14' # Tue
      },
    }
  }
);

my %TOURNAMENTS_MIDDLEEAST =
(
  'BFAME Friendship Pairs' => 
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-06-04', # Tue
            DATE_END => '2013-06-04' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-05-27', # Wed
            DATE_END => '2015-05-27' # Wed
          } 
        }
      },
    }
  },

  'BFAME Open Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2001' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2001,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2001-06-02', # Sat
            DATE_END => '2001-06-02' # Sat
          },
          'C1' => 
          {
            YEAR => 2001,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2001-06-02', # Sat
            DATE_END => '2001-06-02' # Sat
          },
          'C2' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-06-02', # Sat
            DATE_END => '2001-06-02' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2009-06-26', # Fri
            DATE_END => '2009-07-01' # Wed
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-02', # Thu
            DATE_END => '2009-07-03' # Fri
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-04', # Sat
            DATE_END => '2009-07-04' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-05-26', # Thu
            DATE_END => '2011-05-30' # Mon
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-31', # Tue
            DATE_END => '2011-06-01' # Wed
          } 
        }
      },
      '2013' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-06-05', # Wed
            DATE_END => '2013-06-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-06-09', # Sun
            DATE_END => '2013-06-10' # Mon
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-11', # Tue
            DATE_END => '2013-06-11' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-28', # Thu
            DATE_END => '2015-06-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-02', # Tue
            DATE_END => '2015-06-03' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-03', # Wed
            DATE_END => '2015-06-03' # Wed
          } 
        }
      },
    }
  },

  'BFAME Senior Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-26', # Fri
            DATE_END => '2009-07-04' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-06-05', # Wed
            DATE_END => '2013-06-10' # Mon
          } 
        }
      },
      '2015' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-28', # Thu
            DATE_END => '2015-05-31' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-02', # Tue
            DATE_END => '2015-06-02' # Tue
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-03', # Wed
            DATE_END => '2015-06-03' # Wed
          } 
        }
      },
    }
  },

  'BFAME Women Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2001' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-06-02', # Sat
            DATE_END => '2001-06-02' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2009-06-26', # Fri
            DATE_END => '2009-06-30' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-01', # Wed
            DATE_END => '2009-07-01' # Wed
          } 
        }
      },
      '2011' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-05-26', # Thu
            DATE_END => '2011-05-29' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-06-05', # Wed
            DATE_END => '2013-06-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-11', # Tue
            DATE_END => '2013-06-11' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'BFAME Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-05-28', # Thu
            DATE_END => '2015-06-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-02', # Tue
            DATE_END => '2015-06-02' # Tue
          } 
        }
      },
    }
  },

  'Pan Arab Inter-Club Championship' => 
  {
    ORGANIZATION => 'BFAME',
    ORIGIN => 'Interclub',
    ZONE => 'Middle East',
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
          # Dates are probably off
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2008-06-03', # Tue
            DATE_END => '2008-06-03' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-06-03', # Tue
            DATE_END => '2008-06-03' # Tue
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-06-03', # Tue
            DATE_END => '2008-06-03' # Tue
          },
        }
      },
      '2013' =>
      {
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-11-07', # Thu
            DATE_END => '2013-11-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-09', # Sat
            DATE_END => '2013-11-09' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-10', # Sun
            DATE_END => '2013-11-10' # Sun
          } 
        }
      },
      '2014' =>
      {
        ORDINAL => 6,
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-11-05', # Wed
            DATE_END => '2014-11-07' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-11-08', # Sat
            DATE_END => '2014-11-08' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-09', # Sun
            DATE_END => '2014-11-09' # Sun
          } 
        }
      },
      '2015' =>
      {
        ORDINAL => 7,
        CITY => 'Amman',
        COUNTRY => 'Jordan',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-11-04', # Wed
            DATE_END => '2015-11-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-11-08', # Sun
            DATE_END => '2015-11-08' # Sun
          } 
        }
      },
      '2016' =>
      {
        # During Tunisian bridge festival
        ORDINAL => 12,
        CITY => 'Hammamet',
        COUNTRY => 'Tunisia',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-11-04', # Fri
            DATE_END => '2016-11-08' # Tue
          } 
        }
      },
      '2020' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwon/bw.cgi?club=ablonline&pid=display_page37&sessid=250659546987832
        CITY => 'Online',

        CHAPTERS =>
        {
          # TODO Unchecked
          'C0' => 
          {
            # Looks like 2020-10-06 RR, maybe 2020-10-25 to 27 KO.
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-10-06', # Thu
            DATE_END => '2016-10-06' # Thu
          },
          'C1' => 
          {
            YEAR => 2016,
            DATE_START => '2016-10-25', # Tue
            DATE_END => '2016-10-27' # Thu
          }
        }
      },
      '2022' =>
      {
        # Supposedly the 12th?
        # During the 39th Jordan International Bridge Festival
        CITY => 'Amman',
        COUNTRY => 'Jordan',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2022,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2022-09-28', # Wed
            DATE_END => '2022-09-30' # Fri
          },
          'C1' => 
          {
            YEAR => 2022,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2022-10-02', # Sun
            DATE_END => '2022-10-02' # Sun
          } 
        }
      },
      '2024' =>
      {
        # https://www.bridgewebs.com/ablonline/panarabinterclub2024.htm
        ORDINAL => 15,
        CITY => 'Amman',
        COUNTRY => 'Jordan',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-09-25', # Wed
            DATE_END => '2024-09-25' # Wed
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_MIDDLEEAST, \%TOURNAMENTS_MIDDLEEAST, 'Middle East');
}

1;
