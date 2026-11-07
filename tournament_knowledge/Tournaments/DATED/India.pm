#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::India;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Surely there is more structure here that I haven't found.
# https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bw&pid=display_page18

my %MEETS_INDIA =
(
  'All India HCL Tournament' =>
  {
    # Was called "All India" up to 2009, then
    # "HCL International".

    ORGANIZATION => 'BFI',
    SPONSOR => 'HCL',
    COUNTRY => 'India',
    ORIGIN => 'International',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2003' =>
      {
        # https://hcl-bridge.com/archive/2003-2/
        ORDINAL => 1,
        CITY => 'Delhi',
        YEAR => 2003,
        DATE_START => '2003-12-18', # Thu
        DATE_END => '2003-12-21' # Sun
      },
      '2004' =>
      {
        # https://hcl-bridge.com/archive/2004-2/
        ORDINAL => 2,
        CITY => 'Delhi',
        YEAR => 2004,
        DATE_START => '2004-08-12', # Thu
        DATE_END => '2004-08-15' # Sun
      },
      '2005' =>
      {
        # https://hcl-bridge.com/archive/2005-2/
        ORDINAL => 3,
        CITY => 'Noida',
        YEAR => 2005,
        DATE_START => '2005-08-12', # Fri
        DATE_END => '2005-08-15' # Mon
      },
      '2006' =>
      {
        # https://hcl-bridge.com/archive/2006-2/
        ORDINAL => 4,
        CITY => 'Noida',
        YEAR => 2006,
        DATE_START => '2006-08-12', # Sat
        DATE_END => '2006-08-15' # Tue
      },
      '2007' =>
      {
        # https://hcl-bridge.com/archive/2007-2/
        ORDINAL => 5,
        CITY => 'Noida',
        YEAR => 2007,
        DATE_START => '2007-08-16', # Thu
        DATE_END => '2007-08-19' # Sun
      },
      '2008' =>
      {
        # https://hcl-bridge.com/archive/2008-2/
        ORDINAL => 6,
        CITY => 'Noida',
        YEAR => 2008,
        DATE_START => '2008-09-04', # Thu
        DATE_END => '2008-09-07' # Sun
      },
      '2009' =>
      {
        # https://hcl-bridge.com/archive/2009-2/
        ORDINAL => 7,
        CITY => 'Noida',
        YEAR => 2009,
        DATE_START => '2009-08-13', # Thu
        DATE_END => '2009-08-16' # Sun
      },
      '2010' =>
      {
        # https://hcl-bridge.com/archive/2010-2/
        ORDINAL => 8,
        CITY => 'Noida',
        YEAR => 2010,
        DATE_START => '2010-10-30', # Sat
        DATE_END => '2010-11-02' # Tue
      },
      '2011' =>
      {
        # https://hcl-bridge.com/archive/2011-2/
        ORDINAL => 9,
        CITY => 'Noida',
        YEAR => 2011,
        DATE_START => '2011-09-08', # Thu
        DATE_END => '2011-09-11' # Sun
      },
      '2012' =>
      {
        # https://hcl-bridge.com/archive/2012-2/
        ORDINAL => 10,
        CITY => 'Delhi',
        YEAR => 2012,
        DATE_START => '2012-08-30', # Thu
        DATE_END => '2012-09-02' # Sun
      },
      '2013' =>
      {
        # https://hcl-bridge.com/archive/2013-2/
        ORDINAL => 11,
        CITY => 'Delhi',
        YEAR => 2013,
        DATE_START => '2013-08-08', # Thu
        DATE_END => '2013-08-11' # Sun
      },
      '2014' =>
      {
        # https://hcl-bridge.com/archive/2014-2/
        ORDINAL => 12,
        CITY => 'Delhi',
        YEAR => 2014,
        DATE_START => '2014-08-17', # Sun
        DATE_END => '2014-08-20' # Wed
      },
      '2015' =>
      {
        # https://hcl-bridge.com/archive/2015-2/
        ORDINAL => 13,
        CITY => 'Delhi',
        YEAR => 2015,
        DATE_START => '2015-08-20', # Thu
        DATE_END => '2015-08-23' # Sun
      },
      '2016' =>
      {
        # https://hcl-bridge.com/archive/2016-2/
        ORDINAL => 14,
        CITY => 'Delhi',
        YEAR => 2016,
        DATE_START => '2016-10-19', # Wed
        DATE_END => '2016-10-23' # Sun
      },
      '2017' =>
      {
        # https://hcl-bridge.com/archive/2017-2/
        ORDINAL => 15,
        CITY => 'Delhi',
        YEAR => 2017,
        DATE_START => '2017-09-12', # Tue
        DATE_END => '2017-09-17' # Sun
      },
      '2018' =>
      {
        # https://hcl-bridge.com/archive/2018-2/
        ORDINAL => 16,
        CITY => 'Delhi',
        YEAR => 2018,
        DATE_START => '2018-08-09', # Thu
        DATE_END => '2018-08-14' # Tue
      },
      '2019' =>
      {
        # https://hcl-bridge.com/archive/2019-2/
        ORDINAL => 17,
        CITY => 'Delhi',
        YEAR => 2019,
        DATE_START => '2019-08-05', # Mon
        DATE_END => '2019-08-10' # Sat
      },
      '2021' =>
      {
        # https://hcl-bridge.com/archive/2021-2/
        ORDINAL => 18,
        CITY => 'Online',
        YEAR => 2021,
        DATE_START => '2021-09-18', # Sat
        DATE_END => '2021-09-26' # Sun
      },
      '2022' =>
      {
        # https://hcl-bridge.com/archive/2022-2/
        ORDINAL => 19,
        CITY => 'Gurgaon',
        YEAR => 2023,
        DATE_START => '2023-10-31', # Tue
        DATE_END => '2023-11-06' # Mon
      },
      '2023' =>
      {
        # https://hcl-bridge.com/archive/2023-2/
        ORDINAL => 20,
        CITY => 'Delhi',
        YEAR => 2023,
        DATE_START => '2023-10-31', # Tue
        DATE_END => '2023-11-06' # Mon
      },
    }
  },

  'Goa Bridge Festival' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2013' =>
      {
        YEAR => 2013,
        CITY => 'Panjim',
        DATE_START => '2013-07-18', # Thu
        DATE_END => '2013-07-21' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Panjim',
        DATE_START => '2015-07-23', # Thu
        DATE_END => '2015-07-26' # Sun
      },
      '2016' =>
      {
        YEAR => 2016,
        CITY => 'Panjim',
        DATE_START => '2016-07-30', # Sat
        DATE_END => '2016-07-31' # Sun
      },
      '2017' =>
      {
        YEAR => 2017,
        CITY => 'Panjim',
        DATE_START => '2017-07-21', # Fri
        DATE_END => '2017-07-24' # Mon
      },
      '2020' =>
      {
        YEAR => 2020,
        DATE_START => '2020-07-17', # Fri
        DATE_END => '2020-07-19' # Sun
      },
      '2024' =>
      {
        # Probably not a good permanent link
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=goaswisspairs&pid=display_past
        YEAR => 2024,
        CITY => 'Panjim',
        DATE_START => '2024-07-19', # Fri
        DATE_END => '2024-07-21' # Sun
      },
    }
  },

  'Indian South Zone Championship' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-07-20', # More dates
        DATE_END => '2014-07-21' # Mon
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-08-13', # More dates
        DATE_END => '2016-08-14' # Sun
      },
    }
  },

  'Indian Summer Nationals' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2010' =>
      {
        ORDINAL => 41,
        YEAR => 2010,
        DATE_START => '2010-06-18', # More dates
        DATE_END => '2010-06-20' # Sun
      },
      '2011' =>
      {
        ORDINAL => 1,
        CITY => 'Nashik',
        YEAR => 2011,
        DATE_START => '2011-03-14', # Mon
        DATE_END => '2011-03-16' # Wed
      },
      '2012' =>
      {
        ORDINAL => 2,
        YEAR => 2012,
        DATE_START => '2012-06-19', # Tue
        DATE_END => '2012-06-21' # Thu
      },
      '2013' =>
      {
        ORDINAL => 3,
        YEAR => 2013,
        DATE_START => '2013-02-18', # More dates
        DATE_END => '2013-02-20' # Wed
      },
      '2014' =>
      {
        ORDINAL => 4,
        CITY => 'Nashik',
        YEAR => 2014,
        DATE_START => '2014-04-21', # Mon
        DATE_END => '2014-04-23' # Wed
      },
      '2015' =>
      {
        ORDINAL => 5,
        CITY => 'Bangalore',
        YEAR => 2015,
        DATE_START => '2015-06-17', # Wed
        DATE_END => '2015-06-21' # Sun
      },
      '2016' =>
      {
        ORDINAL => 6,
        CITY => 'Bangalore',
        YEAR => 2016,
        DATE_START => '2016-07-06', # Wed
        DATE_END => '2016-07-10' # Sun
      },
      '2017' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=summernationals&pid=display_page11
        ORDINAL => 7,
        CITY => 'Nashik',
        YEAR => 2017,
        DATE_START => '2017-06-17', # Sat
        DATE_END => '2017-06-21' # Wed
      },
      '2018' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=summernationals&pid=display_page15
        ORDINAL => 8,
        CITY => 'Ahmedabad',
        YEAR => 2018,
        DATE_START => '2018-06-24', # Sun
        DATE_END => '2018-06-28' # Thu
      },
      '2019' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=summernationals&pid=display_page1
        ORDINAL => 9,
        CITY => 'Pune',
        YEAR => 2019,
        DATE_START => '2019-06-01', # Sat
        DATE_END => '2019-06-05' # Wed
      },
      '2021' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=summernationals&pid=display_page30
        ORDINAL => 10,
        YEAR => 2021,
        DATE_START => '2021-06-19', # Sat
        DATE_END => '2021-06-27' # Sun
      },
      '2022' =>
      {
        # https://bfi.net.in/tournament/11-tolani-summer-national-bridge-championship-2022/
        ORDINAL => 11,
        CITY => 'Bangalore',
        YEAR => 2022,
        DATE_START => '2022-06-28', # Tue
        DATE_END => '2022-07-07' # Thu
      },
      '2023' =>
      {
        # From here on not Tolani, but Mavericks
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=summernationals&pid=display_page38
        ORDINAL => 1,
        CITY => 'Goa',
        YEAR => 2023,
        DATE_START => '2023-06-20', # Tue
        DATE_END => '2023-06-28' # Wed
      },
      '2024' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=summernationals&pid=display_page46
        ORDINAL => 2,
        CITY => 'Mangalore',
        YEAR => 2024,
        DATE_START => '2024-06-05', # Wed
        DATE_END => '2024-06-14' # Fri
      },
    }
  },

  'Indian Winter Nationals' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',

    # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=winternationals&pid=display_page4
    # 2005 Chennai
    # 2006 Bhopal
    # 2007 Bharuch
    # 2008 Kanpur
    # 2009 Bangalore
    # 2010 Kolkata
    # 2011 Chennai
    # 2013 Ahmedabad
    # 2014 Jaipur
    # 2015 Pune

    EDITIONS => 
    {
      '2004' =>
      {
        ORDINAL => 46,
        CITY => 'Visakhapatnam',
        YEAR => 2004,
        DATE_START => '2004-12-07', # Tue
        DATE_END => '2004-12-17' # Fri
      },
      '2005-06' =>
      {
        ORDINAL => 47,
        CITY => 'Chennai',
        DATE_START => '2005-12-27', # Tue
        DATE_END => '2006-01-05' # Thu
      },
      '2007' =>
      {
        ORDINAL => 49,
        CITY => 'Bharuch',
        YEAR => 2007,
        DATE_START => '2007-12-22', # More dates
        DATE_END => '2007-12-22' # Sat
      },
      '2008' =>
      {
        ORDINAL => 50,
        CITY => 'Kanpur',
        DATE_START => '2008-11-12', # Wed
        DATE_END => '2008-11-23' # Sun
      },
      '2009' =>
      {
        ORDINAL => 51,
        DATE_START => '2009-12-18', # Fri
        DATE_END => '2009-12-24' # Thu
      },
      '2010' =>
      {
        ORDINAL => 52,
        CITY => 'Kolkata',
        YEAR => 2010,
        DATE_START => '2010-12-12', # More dates
        DATE_END => '2010-12-17' # Fri
      },
      '2011' =>
      {
        ORDINAL => 53,
        CITY => 'Chennai',
        YEAR => 2011,
        DATE_START => '2011-12-06', # More dates
        DATE_END => '2011-12-10' # Sat
      },
      '2012' =>
      {
        ORDINAL => 54,
        YEAR => 2012,
        CITY => 'Kolkata',
        DATE_START => '2012-12-16', # Sun
        DATE_END => '2012-12-22' # Sat
      },
      '2013' =>
      {
        ORDINAL => 55,
        CITY => 'Ahmedabad',
        YEAR => 2013,
        DATE_START => '2013-12-20', # Fri
        DATE_END => '2013-12-23' # Mon
      },
      '2014' =>
      {
        ORDINAL => 56,
        CITY => 'Jaipur',
        YEAR => 2014,
        DATE_START => '2014-12-18', # More dates
        DATE_END => '2014-12-21' # Sun
      },
      '2015' =>
      {
        ORDINAL => 57,
        CITY => 'Pune',
        YEAR => 2015,
        DATE_START => '2015-11-20', # More dates
        DATE_END => '2015-11-22' # Sun
      },
      '2016' =>
      {
        # No explicit results links for whole Nationals, but
        # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=winternationals&pid=docs_Full%20Brochure.pdf
        ORDINAL => 58,
        YEAR => 2016,
        CITY => 'Jaipur',
        DATE_START => '2016-12-12', # Mon
        DATE_END => '2016-12-18' # Sun
      },
      '2017' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=winternationals&pid=display_page14
        ORDINAL => 59,
        YEAR => 2017,
        CITY => 'Visakhapatnam',
        DATE_START => '2017-12-16', # Sat
        DATE_END => '2017-12-22' # Fri
      },
      '2018' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=winternationals&pid=display_page25
        ORDINAL => 60,
        YEAR => 2018,
        CITY => 'Chennai',
        DATE_START => '2018-12-09', # Sun
        DATE_END => '2018-12-17' # Mon
      },
      '2019' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=winternationals&pid=display_page30
        ORDINAL => 61,
        YEAR => 2019,
        CITY => 'Kolkata',
        DATE_START => '2019-12-08', # Sun
        DATE_END => '2019-12-15' # Sun
      },
      '2022' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=winternationals&pid=display_page13
        ORDINAL => 64,
        YEAR => 2022,
        CITY => 'Jabalpur',
        DATE_START => '2022-12-03', # Sat
        DATE_END => '2022-12-12' # Mon
      },
      '2024' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=winternationals&pid=display_page59
        ORDINAL => 65,
        YEAR => 2024,
        CITY => 'Jabalpur',
        DATE_START => '2024-01-03', # Wed
        DATE_END => '2024-01-09' # Tue
      },
    }
  },

  'Maharaja Holkar National Championship'  =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-01-07', # Thu
        DATE_END => '2010-01-10' # Sun
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-01-10', # Thu
        DATE_END => '2013-01-13' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-01-04', # Sat
        DATE_END => '2014-01-06' # Mon
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-01-08', # Fri
        DATE_END => '2016-01-10' # Sun
      },
      '2023A' =>
      {
        ORDINAL => 18,
        YEAR => 2023,
        CITY => 'Indore',
        DATE_START => '2023-01-15', # Sun
        DATE_END => '2023-01-20' # Fri
      },
      '2023B' =>
      {
        ORDINAL => 19,
        YEAR => 2023,
        CITY => 'Indore',
        DATE_START => '2023-12-16', # Sat
        DATE_END => '2023-12-19' # Tue
      },
      '2025' =>
      {
        ORDINAL => 20,
        YEAR => 2025,
        CITY => 'Indore',
        DATE_START => '2025-01-07', # Tue
        DATE_END => '2025-01-10' # Fri
      }
    }
  },

  'Maharashtra State Championship'  =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2012A' =>
      {
        ORDINAL => 32,
        YEAR => 2012,
        DATE_START => '2012-02-25', # Sat
        DATE_END => '2012-02-28' # Tue
      },
      '2012B' =>
      {
        YEAR => 2012,
        DATE_START => '2012-10-27', # Sat
        DATE_END => '2012-10-28' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-01-18', # Sat
        DATE_END => '2014-01-20' # Mon
      }
    }
  },

  'Rajasthan Invitational Championship'  =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Invitational',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-05-03', # Fri
        DATE_END => '2013-05-05' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-03-07', # Fri
        DATE_END => '2014-03-09' # Sun
      },
    }
  },

  'Uttar Pradesh State Championship' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',

    EDITIONS => 
    {
      '2012' =>
      {
        ORDINAL => 42,
        YEAR => 2012,
        CITY => 'Noida',
        DATE_START => '2012-08-17', # Fri
        DATE_END => '2012-08-19' # Sun
      },
    }
  },

);

my %TOURNAMENTS_INDIA =
(
  'All India Bangur Cement Hindusthan Club' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-07-27', # Fri
            DATE_END => '2012-07-28' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-07-29', # Sun
            DATE_END => '2012-07-29' # Sun
          } 
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
            DATE_START => '2013-07-27', # Sat
            DATE_END => '2013-07-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-07-28', # Sun
            DATE_END => '2013-07-28' # Sun
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
            DATE_START => '2015-07-24', # Fri
            DATE_END => '2015-07-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-07-26', # Sun
            DATE_END => '2015-07-26' # Sun
          } 
        }
      },
    }
  },

  'All India Corporate Invitational Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
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
            SCORING => 'MP',
            major => 'SESSION',
            DATE_START => '2012-09-16', # Sun
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
            SCORING => 'MP',
            DATE_START => '2013-09-28', # Sat
            DATE_END => '2013-09-28' # Sat
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
            SCORING => 'IMP',
            major => 'SESSION',
            DATE_START => '2016-08-27', # Sat
            DATE_END => '2016-08-27' # Sat
          } 
        }
      },
    }
  },

  'All India HCL Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-09-11', # Sun
            DATE_END => '2011-09-11' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-02', # Sun
            DATE_END => '2012-09-02' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-08-11', # Sun
            DATE_END => '2013-08-11' # Sun
          } 
        }
      },
    }
  },

  'All India HCL Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-08-15', # Sun
            DATE_END => '2004-08-15' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-08-19', # Sun
            DATE_END => '2007-08-19' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-08-19', # Sun
            DATE_END => '2007-08-19' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-09-07', # Sun
            DATE_END => '2008-09-07' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-09-07', # Sun
            DATE_END => '2008-09-07' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-07', # Sun
            DATE_END => '2008-09-07' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-14', # Fri
            DATE_END => '2009-08-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-15', # Sat
            DATE_END => '2009-08-15' # Sat
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-16', # Sun
            DATE_END => '2009-08-16' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-10-31', # Sun
            DATE_END => '2010-11-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-01', # Mon
            DATE_END => '2010-11-01' # Mon
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-11-02', # Tue
            DATE_END => '2010-11-02' # Tue
          } 
        }
      },
      '2011' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-09-09', # Fri
            DATE_END => '2011-09-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-09-10', # Sat
            DATE_END => '2011-09-10' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-09-11', # Sun
            DATE_END => '2011-09-11' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Pre-Quarterfinal',
            major => 'ROUND',
            DATE_START => '2012-08-31', # Fri
            DATE_END => '2012-08-31' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-09-01', # Sat
            DATE_END => '2012-09-01' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-09-01', # Sat
            DATE_END => '2012-09-01' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-09-02', # Sun
            DATE_END => '2012-09-02' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-09', # Fri
            DATE_END => '2013-08-09' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-10', # Sat
            DATE_END => '2013-08-10' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-11', # Sun
            DATE_END => '2013-08-11' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-18', # Mon
            DATE_END => '2014-08-18' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-19', # Tue
            DATE_END => '2014-08-19' # Tue
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-08-20', # Wed
            DATE_END => '2014-08-20' # Wed
          } 
        }
      },
      '2015' =>
      {
        MEET => 'All India HCL Tournament',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-08-20', # Thu
            DATE_END => '2015-08-21' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Pre-Quarterfinal',
            major => 'ROUND',
            DATE_START => '2015-08-21', # Fri
            DATE_END => '2015-08-21' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'ROUND',
            DATE_START => '2015-08-22', # Sat
            DATE_END => '2015-08-22' # Sat
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2015-08-22', # Sat
            DATE_END => '2015-08-22' # Sat
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-08-22', # Sat
            DATE_END => '2015-08-23' # Sun
          } 
        }
      },
    }
  },

  'All India Open Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    # Bit of a synthetic tournament
    EDITIONS =>
    {
      '2013A' =>
      {
        MEET => 'Indian Summer Nationals',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-02-20', # Wed
            DATE_END => '2013-02-20' # Wed
          } 
        }
      },
      '2013B' =>
      {
        MEET => 'Indian Winter Nationals',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2013-12-23', # Mon
            DATE_END => '2013-12-23' # Mon
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            DATE_START => '2014-12-21', # Sun
            DATE_END => '2014-12-21' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            DATE_START => '2015-06-21', # Sun
            DATE_END => '2015-06-21' # Sun
          } 
        }
      },
    }
  },

  'All India Shree Cement' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-10-15', # Sat
            DATE_END => '2011-10-16' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-11-11', # Fri
            DATE_END => '2011-11-12' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'ROUND',
            DATE_START => '2011-11-12', # Sat
            DATE_END => '2011-11-12' # Sat
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2011-11-12', # Sat
            DATE_END => '2011-11-12' # Sat
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-11-13', # Sun
            DATE_END => '2011-11-13' # Sun
          } 
        }
      },
    }
  },

  'All India UTI Bank Masters Championship' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-04-11', # Wed
            DATE_END => '2007-04-11' # Wed
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-04-11', # Wed
            DATE_END => '2007-04-11' # Wed
          } 
        }
      },
    }
  },

  'Ashok Kapur Memorial Swiss Pairs',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    MOVEMENT => 'Swiss',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-11-24', # Sat
            DATE_END => '2012-11-25' # Sun
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
            DATE_START => '2013-11-23', # Sat
            DATE_END => '2013-11-24' # Sun
          } 
        }
      },
      '2014' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-11-22', # Sat
            DATE_END => '2014-11-23' # Sun
          } 
        }
      },
      '2015' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-11-28', # Sat
            DATE_END => '2015-11-29' # Sun
          } 
        }
      },
    }
  },

  'Bhabha Atomic Research Centre Open' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-17', # Sun
            DATE_END => '2013-11-17' # Sun
          } 
        }
      },
    }
  },

  'B L Rao Memorial Open' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-07-14', # Sat
            DATE_END => '2012-07-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-15', # Sun
            DATE_END => '2012-07-15' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-15', # Sun
            DATE_END => '2012-07-15' # Sun
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-16', # Mon
            DATE_END => '2012-07-16' # Mon
          } 
        }
      },
    }
  },

  'Dainik Navjyoti All India Inter-State' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-14', # Sun
            DATE_END => '2011-08-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-15', # Mon
            DATE_END => '2011-08-15' # Mon
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-08-16', # Tue
            DATE_END => '2011-08-16' # Tue
          } 
        }
      },
    }
  },

  'Delhi Gymkhana Club Open Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            DATE_START => '2012-12-02', # Sun
            DATE_END => '2012-12-02' # Sun
          } 
        }
      },
    }
  },

  'Delhi Gymkhana Club Open Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-11-25', # Fri
            DATE_END => '2011-11-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-11-26', # Sat
            DATE_END => '2011-11-26' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-11-27', # Sun
            DATE_END => '2011-11-27' # Sun
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-11-27', # Sun
            DATE_END => '2011-11-27' # Sun
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-09-06', # Fri
            DATE_END => '2013-09-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-07', # Sat
            DATE_END => '2013-09-07' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-07', # Sat
            DATE_END => '2013-09-08' # Sun
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-08', # Sun
            DATE_END => '2013-09-08' # Sun
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
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2012-11-29', # Thu
            DATE_END => '2012-11-30' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-11-30', # Fri
            DATE_END => '2012-12-01' # Sat
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
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-02-07', # Fri
            DATE_END => '2014-02-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-02-08', # Sat
            DATE_END => '2014-02-08' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-02-09', # Sun
            DATE_END => '2014-02-09' # Sun
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-02-09', # Sun
            DATE_END => '2014-02-09' # Sun
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
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2015-02-13', # Fri
            DATE_END => '2015-02-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-14', # Sat
            DATE_END => '2015-02-14' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-15', # Sun
            DATE_END => '2015-02-15' # Sun
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-15', # Sun
            DATE_END => '2015-02-15' # Sun
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-02-20', # Sat
            DATE_END => '2016-02-20' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-02-21', # Sun
            DATE_END => '2016-02-21' # Sun
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-02-21', # Sun
            DATE_END => '2016-02-21' # Sun
          } 
        }
      },
    }
  },

  'Godfrey Phillips All India Open' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-12-22', # Sat
            DATE_END => '2007-12-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-12-22', # Sat
            DATE_END => '2007-12-22' # Sat
          } 
        }
      },
    }
  },

  'Hindusthan Club Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            DATE_START => '2009-07-18', # Sat
            DATE_END => '2009-07-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-07-19', # Sun
            DATE_END => '2009-07-19' # Sun
          } 
        }
      },
    }
  },

  'Indian Inter-State Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-11-02', # Fri
            DATE_END => '2012-11-02' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-11-03', # Sat
            DATE_END => '2012-11-03' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-04', # Sun
            DATE_END => '2012-11-04' # Sun
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-08-23', # Fri
            DATE_END => '2013-08-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-23', # Fri
            DATE_END => '2013-08-23' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-24', # Sat
            DATE_END => '2013-08-24' # Sat
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-25', # Sun
            DATE_END => '2013-08-25' # Sun
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
            DATE_START => '2014-09-06', # Sat
            DATE_END => '2014-09-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-07', # Sun
            DATE_END => '2014-09-07' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-09-04', # Fri
            DATE_END => '2015-09-04' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-09-06', # Sun
            DATE_END => '2015-09-06' # Sun
          } 
        }
      },
    }
  },

  'Indian Open Trials' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-04-22', # Fri
            DATE_END => '2011-04-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-24', # Sun
            DATE_END => '2011-04-25' # Mon
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-23', # Sat
            DATE_END => '2012-06-25' # Mon
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-25', # Mon
            DATE_END => '2012-06-26' # Tue
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-26', # Tue
            DATE_END => '2012-06-27' # Wed
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-02-22', # Fri
            DATE_END => '2013-02-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-02-25', # Mon
            DATE_END => '2013-02-26' # Tue
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
            STAGE => 'Knock-out',
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2014-08-12', # Tue
            DATE_END => '2014-08-12' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-13', # Wed
            DATE_END => '2014-08-13' # Wed
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-08-14', # Thu
            DATE_END => '2014-08-15' # Fri
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-08-15', # Fri
            DATE_END => '2014-08-16' # Sat
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-29', # Mon
            DATE_END => '2015-06-30' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-30', # Tue
            DATE_END => '2015-07-01' # Wed
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-06-11', # Sat
            DATE_END => '2016-06-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-06-12', # Sun
            DATE_END => '2016-06-13' # Mon
          } 
        }
      },
    }
  },

  'Indian Senior Trials' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2011-05-06', # Fri
            DATE_END => '2011-05-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-08', # Sun
            DATE_END => '2011-05-08' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-07-07', # Sat
            DATE_END => '2012-07-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-08', # Sun
            DATE_END => '2012-07-08' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-09', # Mon
            DATE_END => '2012-07-09' # Mon
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-04-15', # Mon
            DATE_END => '2013-04-16' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-04-16', # Tue
            DATE_END => '2013-04-17' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-04-17', # Wed
            DATE_END => '2013-04-18' # Thu
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-09', # Mon
            DATE_END => '2015-02-09' # Mon
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-10', # Tue
            DATE_END => '2015-02-10' # Tue
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
            major => 'SEGMENT',
            DATE_START => '2016-06-15', # Wed
            DATE_END => '2016-06-16' # Thu
          } 
        }
      },
    }
  },

  'Indian State Championship' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      # TODO Same as Indian Inter-State Teams?
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-11-09', # Sat
            DATE_END => '2013-11-09' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-10', # Sun
            DATE_END => '2013-11-10' # Sun
          } 
        }
      },
    }
  },

  'Indian Western Zone Championship' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-07-11', # Mon
            DATE_END => '2005-07-11' # Mon
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-07-11', # Mon
            DATE_END => '2005-07-11' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-07-11', # Mon
            DATE_END => '2005-07-11' # Mon
          } 
        }
      },
    }
  },

  'Jaya Jain Memorial' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-08-17', # Fri
            DATE_END => '2012-08-17' # Fri
          } 
        }
      },
    }
  },

  'Justice J M Lal All India Open Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            DATE_START => '2013-03-30', # Sat
            DATE_END => '2013-04-01' # Mon
          } 
        }
      },
    }
  },

  'Justice J M Lal All India Open Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-17', # Sun
            DATE_END => '2011-04-17' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-06', # Fri
            DATE_END => '2012-04-06' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-06', # Fri
            DATE_END => '2012-04-06' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-07', # Sat
            DATE_END => '2012-04-07' # Sat
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-30', # Sat
            DATE_END => '2013-03-30' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-30', # Sat
            DATE_END => '2013-03-30' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-31', # Sun
            DATE_END => '2013-04-01' # Mon
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
            DATE_START => '2014-04-06', # Sun
            DATE_END => '2014-04-06' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-18', # Sat
            DATE_END => '2015-04-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-18', # Sat
            DATE_END => '2015-04-18' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-19', # Sun
            DATE_END => '2015-04-19' # Sun
          } 
        }
      },
    }
  },

  'Karnataka State Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-28', # Sat
            DATE_END => '2012-07-28' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-29', # Sun
            DATE_END => '2012-07-29' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-29', # Sun
            DATE_END => '2012-07-29' # Sun
          },
        }
      },
    }
  },

  'Kalani Trophy',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-01-08', # Fri
            DATE_END => '2010-01-08' # Fri
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
            major => 'ROUND',
            DATE_START => '2011-01-04', # Tue
            DATE_END => '2011-01-06' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-01-07', # Fri
            DATE_END => '2011-01-07' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-01-08', # Sat
            DATE_END => '2011-01-08' # Sat
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-01-09', # Sun
            DATE_END => '2011-01-09' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-06', # Fri
            DATE_END => '2012-01-06' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-06', # Fri
            DATE_END => '2012-01-07' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-01-07', # Sat
            DATE_END => '2012-01-08' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-01-09', # Fri
            DATE_END => '2015-01-09' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-01-10', # Sat
            DATE_END => '2015-01-10' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-01-10', # Sat
            DATE_END => '2015-01-11' # Sun
          } 
        }
      },
    }
  },

  'Karnik-Vaidya Open',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-02-06', # Sun
            DATE_END => '2011-02-06' # Sun
          } 
        }
      },
    }
  },

  'Krishnapatnam Port National Masters' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-12-19', # Sat
            DATE_END => '2015-12-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-12-20', # Sun
            DATE_END => '2015-12-20' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-21', # Mon
            DATE_END => '2015-12-21' # Mon
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Indian South Zone Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Pre-Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-13', # Sat
            DATE_END => '2016-08-13' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-13', # Sat
            DATE_END => '2016-08-13' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-08-14', # Sun
            DATE_END => '2016-08-14' # Sun
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-08-14', # Sun
            DATE_END => '2016-08-14' # Sun
          } 
        }
      },
    }
  },

  'Lalit Mohanka Memorial' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-03-25', # Fri
            DATE_END => '2011-03-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-03-27', # Sun
            DATE_END => '2011-03-27' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-25' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-03-25', # Sun
            DATE_END => '2012-03-25' # Sun
          } 
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
            DATE_START => '2013-03-23', # Sat
            DATE_END => '2013-03-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-23', # Sat
            DATE_END => '2013-03-23' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-23', # Sat
            DATE_END => '2013-03-24' # Sun
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-24', # Sun
            DATE_END => '2013-03-24' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-26' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-26', # Sun
            DATE_END => '2014-01-26' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-20', # Fri
            DATE_END => '2015-02-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-21', # Sat
            DATE_END => '2015-02-22' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-22', # Sun
            DATE_END => '2015-02-22' # Sun
          } 
        }
      },
    }
  },

  'Lokmanya Jubilee',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-09-26', # Sun
            DATE_END => '2010-09-26' # Sun
          } 
        }
      },
    }
  },

  'L C Sunil Rajendra Memorial' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            major => 'SESSION',
            DATE_START => '2013-09-15', # Sun
            DATE_END => '2013-09-15' # Sun
          } 
        }
      },
    }
  },

  'Madras Gymkhana Club Open' =>
  {
    # https://www.bridgewebs.com/gymkhanachennai
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    CITY => 'Chennai',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-01-19', # Thu
            DATE_END => '2012-01-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-21', # Sat
            DATE_END => '2012-01-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-21', # Sat
            DATE_END => '2012-01-21' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-01-22', # Sun
            DATE_END => '2012-01-22' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-01-18', # Sun
            DATE_END => '2015-01-18' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-01-24', # Sun
            DATE_END => '2016-01-24' # Sun
          } 
        }
      },
      '2020' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2020,
            DATE_START => '2020-01-16', # Thu
            DATE_END => '2020-01-19' # Sun
          } 
        }
      },
      '2023' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-01-05', # Thu
            DATE_END => '2023-01-08' # Sun
          } 
        }
      },
      '2024' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-02-01', # Thu
            DATE_END => '2024-02-04' # Sun
          } 
        }
      },
    }
  },

  'Maharaja Yeshwantrao Holkar National Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2009-12-24', # Thu
            DATE_END => '2009-12-24' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2010-12-17', # Fri
            DATE_END => '2010-12-17' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-10' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-12-21', # Fri
            DATE_END => '2012-12-22' # Sat
          } 
        }
      },
    }
  },

  'Maharaja Yeshwantrao Holkar National Teams' =>
  {
    # Could be the same as Kalani Trophy
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-12-24', # Thu
            DATE_END => '2009-12-24' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Maharaja Holkar National Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-08', # Fri
            DATE_END => '2010-01-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-08', # Fri
            DATE_END => '2010-01-09' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-09', # Sat
            DATE_END => '2010-01-10' # Sun
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
            DATE_START => '2012-01-05', # Thu
            DATE_END => '2012-01-06' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Maharaja Holkar National Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-01-10', # Thu
            DATE_END => '2013-01-13' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Maharaja Holkar National Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-01-04', # Sat
            DATE_END => '2014-01-06' # Mon
          },
        },
      },
      '2016' =>
      {
        MEET => 'Maharaja Holkar National Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Pre-Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-08', # Fri
            DATE_END => '2016-01-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-08', # Fri
            DATE_END => '2016-01-09' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-09', # Sat
            DATE_END => '2016-01-09' # Sat
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-01-10', # Sun
            DATE_END => '2016-01-10' # Sun
          },
        },
      }
    }
  },

  'Maharashtra State Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Maharashtra State Championship',
        MEET_TAG => '2012A',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-02-27', # Mon
            DATE_END => '2012-02-28' # Tue
          } 
        }
      },
    }
  },

  'Maharashtra State Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012A' =>
      {
        MEET => 'Maharashtra State Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-25', # Sat
            DATE_END => '2012-02-26' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-26', # Sun
            DATE_END => '2012-02-26' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-26', # Sun
            DATE_END => '2012-02-26' # Sun
          },
        }
      },
      '2012B' =>
      {
        MEET => 'Maharashtra State Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            # Not sure
            YEAR => 2012,
            CITY => 'Nashik',
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-10-27', # Sat
            DATE_END => '2012-10-28' # Sun
          },
          'C1' => 
          {
            # Not sure
            YEAR => 2012,
            CITY => 'Nashik',
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-27', # Sat
            DATE_END => '2012-10-27' # Sat
          },
          'C2' => 
          {
            # Not sure
            YEAR => 2012,
            CITY => 'Nashik',
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-27', # Sat
            DATE_END => '2012-10-28' # Sun
          },
          'C3' => 
          {
            # Not sure
            YEAR => 2012,
            CITY => 'Nashik',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-10-28', # Sun
            DATE_END => '2012-10-28' # Sun
          } 
        }
      },
      '2014A' =>
      {
        MEET => 'Maharashtra State Championship',
        MEET_TAG => 2014,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-01-18', # Sat
            DATE_END => '2014-01-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-01-19', # Sun
            DATE_END => '2014-01-19' # Sun
          } 
        }
      },
      '2014B' =>
      {
        # Not sure
        CITY => 'Pune',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-06-01', # Sun
            DATE_END => '2014-06-01' # Sun
          },
        }
      },
      '2015A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-02', # Sat
            DATE_END => '2015-05-02' # Sat
          } 
        }
      },
      '2015B' =>
      {
        # Not sure
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-05-24', # Sun
            DATE_END => '2015-05-24' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-06-25', # Sat
            DATE_END => '2016-06-25' # Sat
          } 
        }
      },
    }
  },

  'Mohan Sicka BAM Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-12-23', # Wed
            DATE_END => '2009-12-23' # Wed
          } 
        }
      },
    }
  },

  'Mohan Sicka Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Maharashtra State Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-01-20', # Mon
            DATE_END => '2014-01-20' # Mon
          } 
        }
      },
    }
  },

  'Mohanlal Bhartia Memorial Grand Prix' =>
  {
    # https://www.bridgewebs.com/bhartia/
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-02-05', # Fri
            DATE_END => '2010-02-05' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-02-05', # Fri
            DATE_END => '2010-02-06' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-02-06', # Sat
            DATE_END => '2010-02-07' # Sun
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
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2011-02-10', # Thu
            DATE_END => '2011-02-11' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-02-11', # Fri
            DATE_END => '2011-02-11' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-02-12', # Sat
            DATE_END => '2011-02-12' # Sat
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-02-12', # Sat
            DATE_END => '2011-02-13' # Sun
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
            MOVEMENT => 'Swiss',
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-02-10', # Fri
            DATE_END => '2012-02-10' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-10', # Fri
            DATE_END => '2012-02-10' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-11', # Sat
            DATE_END => '2012-02-11' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-11', # Sat
            DATE_END => '2012-02-12' # Sun
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Pre-Quarterfinal',
            major => 'ROUND',
            DATE_START => '2013-04-05', # Fri
            DATE_END => '2013-04-05' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-04-05', # Fri
            DATE_END => '2013-04-06' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-04-06', # Sat
            DATE_END => '2013-04-06' # Sat
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-04-07', # Sun
            DATE_END => '2013-04-07' # Sun
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
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2014-03-14', # Fri
            DATE_END => '2014-03-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-03-14', # Fri
            DATE_END => '2014-03-14' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-03-15', # Sat
            DATE_END => '2014-03-15' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-03-15', # Sat
            DATE_END => '2014-03-15' # Sat
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-03-15', # Sat
            DATE_END => '2014-03-15' # Sat
          },
          'C5' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-16', # Sun
            DATE_END => '2014-03-16' # Sun
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
            STAGE => 'Knock-out',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-04-03', # Fri
            DATE_END => '2015-04-05' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-05', # Sun
            DATE_END => '2015-04-05' # Sun
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Knock-out',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2016-03-11', # Fri
            DATE_END => '2016-03-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-13', # Sun
            DATE_END => '2016-03-13' # Sun
          } 
        }
      },
    }
  },

  'Mohanlal Bhartia Memorial Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2011-02-12', # Sat
            DATE_END => '2011-02-13' # Sun
          } 
        }
      },
    }
  },

  'Nandu Oke Memorial IAF Swiss Pairs',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    MOVEMENT => 'Swiss',
    SCORING => 'IAF',
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
            DATE_START => '2014-09-19', # Fri
            DATE_END => '2014-09-21' # Sun
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2016-05-13', # Fri
            DATE_END => '2016-05-13' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-14', # Sat
            DATE_END => '2016-05-15' # Sun
          } 
        }
      },
    }
  },

  'Narain Bhojwani Memorial',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-30', # Sat
            DATE_END => '2010-01-31' # Sun
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
            major => 'SEGMENT',
            DATE_START => '2012-01-28', # Sat
            DATE_END => '2012-01-29' # Sun
          } 
        }
      },
    }
  },

  'Otters Inter-Club Teams',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-09-05', # Sun
            DATE_END => '2010-09-05' # Sun
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-01-22', # Sat
            DATE_END => '2011-01-23' # Sun
          } 
        }
      },
    }
  },

  'Poddar National Masters' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-08-16', # Mon
            DATE_END => '2010-08-16' # Mon
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-08-17', # Tue
            DATE_END => '2010-08-17' # Tue
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-05', # Fri
            DATE_END => '2011-08-05' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-08-06', # Sat
            DATE_END => '2011-08-06' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-08-07', # Sun
            DATE_END => '2011-08-07' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-05', # Fri
            DATE_END => '2012-10-05' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-06', # Sat
            DATE_END => '2012-10-06' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-10-07', # Sun
            DATE_END => '2012-10-07' # Sun
          } 
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
            DATE_START => '2013-10-24', # Thu
            DATE_END => '2013-10-25' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-25', # Fri
            DATE_END => '2013-10-25' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-26', # Sat
            DATE_END => '2013-10-26' # Sat
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-27', # Sun
            DATE_END => '2013-10-27' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-31', # Fri
            DATE_END => '2014-10-31' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-11-01', # Sat
            DATE_END => '2014-11-01' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-02', # Sun
            DATE_END => '2014-11-02' # Sun
          } 
        }
      },
    }
  },

  'Prashant Desai Memorial' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2016-03-26', # Sat
            DATE_END => '2016-03-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-03-27', # Sun
            DATE_END => '2016-03-27' # Sun
          } 
        }
      },
    }
  },

  'PSN Sarma Centenary Memorial Pairs',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    CITY => 'Chennai',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            STAGE => 'Final',
            DATE_START => '2015-02-07', # Sat
            DATE_END => '2015-02-07' # Sat
          } 
        }
      },
    }
  },

  'PSN Sarma Centenary Memorial Teams',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    CITY => 'Chennai',
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
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-02-08', # Sun
            DATE_END => '2015-02-08' # Sun
          } 
        }
      },
    }
  },

  'PYC Hindu Gymkhana Royale' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    CITY => 'Pune',
    FORM => 'Pairs',
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
            DATE_START => '2009-10-31', # Sat
            DATE_END => '2009-11-02' # Mon
          } 
        }
      },
    }
  },

  'Rai Bahadur Modi Memorial All India Open' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-09-29', # Sat
            DATE_END => '2007-09-29' # Sat
          } 
        }
      },
    }
  },

  'Rajasthan Invitational Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Invitational',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Rajasthan Invitational Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-05-03', # Fri
            DATE_END => '2013-05-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-04', # Sat
            DATE_END => '2013-05-04' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-05-05', # Sun
            DATE_END => '2013-05-05' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Rajasthan Invitational Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-03-09', # Sun
            DATE_END => '2014-03-09' # Sun
          } 
        }
      },
    }
  },

  'Rajasthan Invitational Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Invitational',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Rajasthan Invitational Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-05-03', # Fri
            DATE_END => '2013-05-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-04', # Sat
            DATE_END => '2013-05-04' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-04', # Sat
            DATE_END => '2013-05-05' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Rajasthan Invitational Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-03-07', # Fri
            DATE_END => '2014-03-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-08', # Sat
            DATE_END => '2014-03-08' # Sat
          } 
        }
      },
    }
  },

  'R N Bagla Memorial Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
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
            major => 'ROUND',
            DATE_START => '2011-08-26', # Fri
            DATE_END => '2011-08-28' # Sun
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
            DATE_START => '2012-10-19', # Fri
            DATE_END => '2012-10-21' # Sun
          } 
        }
      },
    }
  },

  'R R Gupta Memorial Championship' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-03-12', # Thu
            DATE_END => '2015-03-13' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-13', # Fri
            DATE_END => '2015-03-13' # Fri
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
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-04-01', # Fri
            DATE_END => '2016-04-01' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-04-02', # Sat
            DATE_END => '2016-04-02' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-04-03', # Sun
            DATE_END => '2016-04-03' # Sun
          } 
        }
      },
    }
  },

  'R Ratnam Memorial' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
          'C0' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-11-15', # Sat
            DATE_END => '2014-11-15' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-16', # Sun
            DATE_END => '2014-11-16' # Sun
          } 
        }
      },
    }
  },

  'Ruia Gold Cup' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-12-16', # Thu
            DATE_END => '2004-12-16' # Thu
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-12-16', # Thu
            DATE_END => '2004-12-16' # Thu
          } 
        }
      },
      '2005-06' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-12-31', # Sat
            DATE_END => '2005-12-31' # Sat
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-01-01', # Sun
            DATE_END => '2006-01-01' # Sun
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-01-02', # Mon
            DATE_END => '2006-01-02' # Mon
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2009-12-18', # Fri
            DATE_END => '2009-12-20' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-12-18', # Fri
            DATE_END => '2009-12-19' # Sat
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-12-19', # Sat
            DATE_END => '2009-12-19' # Sat
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-12-20', # Sun
            DATE_END => '2009-12-20' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-12-15', # Wed
            DATE_END => '2010-12-15' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-12-16', # Thu
            DATE_END => '2010-12-17' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-16', # Thu
            DATE_END => '2010-12-17' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-12-06', # Tue
            DATE_END => '2011-12-07' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-12-08', # Thu
            DATE_END => '2011-12-08' # Thu
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-12-09', # Fri
            DATE_END => '2011-12-09' # Fri
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-10' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-19', # Wed
            DATE_END => '2012-12-19' # Wed
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-19', # Wed
            DATE_END => '2012-12-20' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-20', # Thu
            DATE_END => '2012-12-21' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Pre-Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-20', # Fri
            DATE_END => '2013-12-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-21', # Sat
            DATE_END => '2013-12-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-22', # Sun
            DATE_END => '2013-12-22' # Sun
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-23', # Mon
            DATE_END => '2013-12-23' # Mon
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Pre-Quarterfinal',
            major => 'ROUND',
            DATE_START => '2014-12-18', # Thu
            DATE_END => '2014-12-18' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-19', # Fri
            DATE_END => '2014-12-19' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-20', # Sat
            DATE_END => '2014-12-20' # Sat
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-21', # Sun
            DATE_END => '2014-12-21' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-20', # Fri
            DATE_END => '2015-11-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-21', # Sat
            DATE_END => '2015-11-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-11-22', # Sun
            DATE_END => '2015-11-22' # Sun
          } 
        }
      },
    }
  },

  'Ruia Silver Cup' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-12-12', # Sun
            DATE_END => '2010-12-12' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Indian Winter Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-12-06', # Tue
            DATE_END => '2011-12-06' # Tue
          } 
        }
      },
    }
  },

  'Shree Keni Trophy' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Goa Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-07-21', # Sun
            DATE_END => '2013-07-21' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indian South Zone Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-20', # Sun
            DATE_END => '2014-07-20' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-20', # Sun
            DATE_END => '2014-07-20' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-21', # Mon
            DATE_END => '2014-07-21' # Mon
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Goa Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-07-25', # Sat
            DATE_END => '2015-07-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-07-26', # Sun
            DATE_END => '2015-07-26' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Goa Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-30', # Sat
            DATE_END => '2016-07-30' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-30', # Sat
            DATE_END => '2016-07-31' # Sun
          } 
        }
      },
    }
  },

  'Summer Monsoon League',
  {
    ORGANIZATION => 'MBA',
    COUNTRY => 'India',
    REGION => 'Maharashtra',
    ORIGIN => 'Regional',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-07-17', # Sun
            DATE_END => '2011-07-18' # Mon
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
            DATE_START => '2012-08-11', # Sat
            DATE_END => '2012-08-12' # Sun
          } 
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-07-06', # Sat
            DATE_END => '2013-07-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-07-07', # Sun
            DATE_END => '2013-07-07' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-06-21', # Sat
            DATE_END => '2014-06-22' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-06-22', # Sun
            DATE_END => '2014-06-22' # Sun
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
            DATE_START => '2015-07-04', # Sat
            DATE_END => '2015-07-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-07-05', # Sun
            DATE_END => '2015-07-05' # Sun
          } 
        }
      },
      '2016' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2016-06-18', # Sat
            DATE_END => '2016-06-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2016-06-19', # Sun
            DATE_END => '2016-06-19' # Sun
          } 
        }
      },
    }
  },

  'TATA Open',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-18', # Fri
            DATE_END => '2010-06-18' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-19', # Sat
            DATE_END => '2010-06-19' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-20', # Sun
            DATE_END => '2010-06-20' # Sun
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-01-17', # Mon
            DATE_END => '2011-01-17' # Mon
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-15', # Sun
            DATE_END => '2012-01-15' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-01-16', # Mon
            DATE_END => '2012-01-16' # Mon
          } 
        }
      },
    }
  },

  'Thane Champion of Champions Teams',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    CITY => 'Mulund',
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
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-02-06', # Sun
            DATE_END => '2011-02-06' # Sun
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
            DATE_START => '2014-11-09', # Sun
            DATE_END => '2014-11-09' # Sun
          } 
        }
      },
    }
  },

  'Tolani Gold Trophy' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-14', # Mon
            DATE_END => '2011-03-14' # Mon
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-15', # Tue
            DATE_END => '2011-03-15' # Tue
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-16', # Wed
            DATE_END => '2011-03-16' # Wed
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-19', # Tue
            DATE_END => '2012-06-19' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-20', # Wed
            DATE_END => '2012-06-20' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-21', # Thu
            DATE_END => '2012-06-21' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-02-18', # Mon
            DATE_END => '2013-02-18' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-02-19', # Tue
            DATE_END => '2013-02-19' # Tue
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-02-20', # Wed
            DATE_END => '2013-02-20' # Wed
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-21', # Mon
            DATE_END => '2014-04-21' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-22', # Tue
            DATE_END => '2014-04-22' # Tue
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-23', # Wed
            DATE_END => '2014-04-23' # Wed
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-06-18', # Thu
            DATE_END => '2015-06-18' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-19', # Fri
            DATE_END => '2015-06-19' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-20', # Sat
            DATE_END => '2015-06-20' # Sat
          },
        }
      },
      '2016' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Pre-Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-07', # Thu
            DATE_END => '2016-07-07' # Thu
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-08', # Fri
            DATE_END => '2016-07-08' # Fri
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-09', # Sat
            DATE_END => '2016-07-09' # Sat
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-10', # Sun
            DATE_END => '2016-07-10' # Sun
          } 
        }
      },
    }
  },

  'Tolani Grand Prix' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2007-10-31', # Wed
            DATE_END => '2007-10-31' # Wed
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-31', # Wed
            DATE_END => '2007-10-31' # Wed
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-31', # Wed
            DATE_END => '2007-10-31' # Wed
          },
          'C3' => 
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
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-12-14', # Sun
            DATE_END => '2008-12-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-12-14', # Sun
            DATE_END => '2008-12-14' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-12-14', # Sun
            DATE_END => '2008-12-14' # Sun
          } 
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2009-10-01', # Thu
            DATE_END => '2009-10-05' # Mon
          },
          'C1' => 
          {
            YEAR => 2009,
            DATE_START => '2009-12-12', # Sat
            DATE_END => '2009-12-12' # Sat
          } 
        }
      },
    }
  },

  'Tolani Silver Cup' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-19', # Tue
            DATE_END => '2012-06-19' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-20', # Wed
            DATE_END => '2012-06-20' # Wed
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-21', # Sun
            DATE_END => '2015-06-21' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Indian Summer Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-10', # Sun
            DATE_END => '2016-07-10' # Sun
          } 
        }
      },
    }
  },

  'Uttar Pradesh State Pairs' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Uttar Pradesh State Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-08-18', # Sat
            DATE_END => '2012-08-19' # Sun
          } 
        }
      },
    }
  },

  'Uttar Pradesh State Teams' =>
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    ORIGIN => 'Regional',
    ZONE => 'Asia Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Uttar Pradesh State Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-08-17', # Fri
            DATE_END => '2012-08-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-08-18', # Sat
            DATE_END => '2012-08-18' # Sat
          } 
        }
      },
    }
  },

  'Willingdon Sports Club Swiss Pairs',
  {
    # https://www.bridgewebs.com/willingdonbridge/
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
    CITY => 'Mumbai',
    ORIGIN => 'National',
    ZONE => 'Asia Pacific',
    FORM => 'Pairs',
    MOVEMENT => 'Swiss',
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
            DATE_START => '2015-01-23', # Fri
            DATE_END => '2015-01-25' # Sun
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
            DATE_START => '2016-01-24', # Sun
            DATE_END => '2016-01-26' # Tue
          } 
        }
      },
      '2017' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-01-27', # Fri
            DATE_END => '2017-01-29' # Sun
          } 
        }
      },
      '2018' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-01-26', # Fri
            DATE_END => '2018-01-28' # Sun
          } 
        }
      },
      '2019' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-01-25', # Fri
            DATE_END => '2019-01-27' # Sun
          } 
        }
      },
      '2020' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2020,
            DATE_START => '2020-01-24', # Fri
            DATE_END => '2020-01-26' # Sun
          } 
        }
      },
      '2022' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Online
            YEAR => 2022,
            DATE_START => '2022-01-28', # Fri
            DATE_END => '2022-01-30' # Sun
          } 
        }
      },
      '2023' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-01-27', # Fri
            DATE_END => '2023-01-29' # Sun
          } 
        }
      },
      '2024' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-01-26', # Fri
            DATE_END => '2024-01-28' # Sun
          } 
        }
      },
    }
  },

  'WCG Open',
  {
    ORGANIZATION => 'BFI',
    COUNTRY => 'India',
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
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
            major => 'SEGMENT',
            DATE_START => '2009-10-25', # Sun
            DATE_END => '2009-10-25' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_INDIA, \%TOURNAMENTS_INDIA, 'India');
}

1;
