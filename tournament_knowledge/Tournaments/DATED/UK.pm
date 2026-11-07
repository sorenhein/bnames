#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::UK;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_UK =
(
);

my %TOURNAMENTS_UK =
(
  'British Gold Cup' => 
  {
    # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_Gold%20Cup%20Roll%20of%20Honour.htm
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2007%20Gold%20Cup%20Finals.htm
      '2003' =>
      {
        ORDINAL => 66,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2003,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2003-12-13', # Sat
            DATE_END => '2003-12-14' # Sun
          },
        }
      },
      '2004' =>
      {
        ORDINAL => 67,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            DATE_START => '2004-12-12', # Sun
            DATE_END => '2004-12-12' # Sun
          },
        }
      },
      '2005' =>
      {
        ORDINAL => 68,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            DATE_START => '2005-12-10', # Sat
            DATE_END => '2005-12-11' # Sun
          },
        }
      },
      '2006' =>
      {
        ORDINAL => 69,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            DATE_START => '2006-12-09', # Sat
            DATE_END => '2006-12-10' # Sun
          },
        }
      },
      '2007' =>
      {
        ORDINAL => 70,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-12-09', # Sun
            DATE_END => '2007-12-09' # Sun
          },
        }
      },
      '2008' =>
      {
        ORDINAL => 71,
        CITY => 'Peebles',
        COUNTRY => 'Scotland',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
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
          },
        }
      },
      '2009' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2009%20Gold%20Cup%20Finals.htm
        ORDINAL => 72,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SET',
            DATE_START => '2009-12-12', # Sat
            DATE_END => '2009-12-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SET',
            DATE_START => '2009-12-13', # Sun
            DATE_END => '2009-12-13' # Sun
          },
        }
      },
      '2010' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2010%20Gold%20Cup%20Finals.htm
        ORDINAL => 73,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2010-12-11', # Sat
            DATE_END => '2010-12-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2010-12-12', # Sun
            DATE_END => '2010-12-12' # Sun
          },
        }
      },
      '2011' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2011%20Gold%20Cup%20Final%20Stages.htm
        ORDINAL => 74,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2011-12-11', # Sun
            DATE_END => '2011-12-11' # Sun
          },
        }
      },
      '2012' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2012%20QF%20Results.htm
        ORDINAL => 75,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2012-12-08', # Sat
            DATE_END => '2012-12-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2012-12-09', # Sun
            DATE_END => '2012-12-09' # Sun
          },
        }
      },
      '2013' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2013%20Gold%20Cup%20%20Finals.pdf
        ORDINAL => 76,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2013-12-14', # Sat
            DATE_END => '2013-12-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2013-12-15', # Sun
            DATE_END => '2013-12-15' # Sun
          },
        }
      },
      '2014' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2014%20God%20Cup%20finals.htm
        ORDINAL => 77,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2014-12-14', # Sun
            DATE_END => '2014-12-14' # Sun
          },
        }
      },
      '2015' =>
      {
        # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_2015%20Gold%20Cup%20Finals.pdf
        ORDINAL => 78,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2015-12-12', # Sat
            DATE_END => '2015-12-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2015-12-13', # Sun
            DATE_END => '2015-12-13' # Sun
          },
        }
      },
      '2017' =>
      {
        # https://www.ebu.co.uk/results/645
        ORDINAL => 80,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-10-07', # Sat
            DATE_END => '2017-10-08' # Sun
          },
        }
      },
      '2018' =>
      {
        # https://www.ebu.co.uk/results/708
        ORDINAL => 81,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-10-13', # Sat
            DATE_END => '2018-10-14' # Sun
          },
        }
      },
      '2019' =>
      {
        # https://www.ebu.co.uk/results/765
        ORDINAL => 82,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-10-12', # Sat
            DATE_END => '2019-10-13' # Sun
          },
        }
      },
      '2020' =>
      {
        # https://www.ebu.co.uk/results/1025
        ORDINAL => 83,
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2020,
            DATE_START => '2020-12-05', # Sat
            DATE_END => '2020-12-06' # Sun
          },
        }
      },
      '2021' =>
      {
        # https://www.ebu.co.uk/results/1026
        ORDINAL => 84,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-10-09', # Sat
            DATE_END => '2021-10-10' # Sun
          },
        }
      },
      '2022' =>
      {
        # https://www.ebu.co.uk/results/975
        ORDINAL => 85,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-10-08', # Sat
            DATE_END => '2022-10-09' # Sun
          },
        }
      },
      '2023' =>
      {
        # https://www.ebu.co.uk/results/1301
        ORDINAL => 86,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-10-07', # Sat
            DATE_END => '2023-10-08' # Sun
          },
        }
      },
      '2024' =>
      {
        # https://www.ebu.co.uk/results/1468
        ORDINAL => 87,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-10-05', # Sat
            DATE_END => '2024-10-06' # Sun
          },
        }
      },
    }
  },

  'Camrose Trophy' => 
  {
    # https://www.bridgewebs.com/bgb/Camrose%20Winners.htm
    # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_Past%20Camrose%20Teams.htm
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2002-03' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2002,
            major => 'MATCH',
            DATE_START => '2002-11-30', # Sat
            DATE_END => '2002-12-01' # Sun
          },
          'C1' => 
          {
            YEAR => 2003,
            major => 'MATCH',
            DATE_START => '2003-01-02', # Thu
            DATE_END => '2003-01-02' # Thu
          },
          'C2' => 
          {
            YEAR => 2003,
            major => 'MATCH',
            DATE_START => '2003-01-11', # Sat
            DATE_END => '2003-01-12' # Sun
          },
          'C3' => 
          {
            YEAR => 2003,
            major => 'MATCH',
            DATE_START => '2003-02-01', # Sat
            DATE_END => '2003-02-02' # Sun
          },
          'C4' => 
          {
            YEAR => 2003,
            major => 'MATCH',
            DATE_START => '2003-02-22', # Sat
            DATE_END => '2003-02-23' # Sun
          },
        }
      },
      '2003-04' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2003,
            major => 'ROUND',
            DATE_START => '2003-12-06', # Sat
            DATE_END => '2003-12-07' # Sun
          },
          'C1' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-01-10', # Sat
            DATE_END => '2004-01-11' # Sun
          },
          'C2' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-02-07', # Sat
            DATE_END => '2004-02-08' # Sun
          },
          'C3' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-02-21', # Sat
            DATE_END => '2004-02-22' # Sun
          },
          'C4' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-03-06', # Sat
            DATE_END => '2004-03-07' # Sun
          },
        }
      },
      '2005' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            DATE_START => '2005-01-11', # Tue
            DATE_END => '2005-01-20' # Thu
          },
          'C1' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-03-06', # Sun
            DATE_END => '2005-03-07' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            DATE_START => '2005-03-14', # Mon
            DATE_END => '2005-03-17' # Thu
          },
          'C3' => 
          {
            YEAR => 2005,
            DATE_START => '2005-03-25', # Fri
            DATE_END => '2005-03-28' # Mon
          },
        }
      },
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-01-07', # Sat
            DATE_END => '2006-01-08' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-03-03', # Fri
            DATE_END => '2006-03-05' # Sun
          },
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-01-05', # Fri
            DATE_END => '2007-01-08' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            minor => 'STANZA',
            DATE_START => '2007-03-04', # Sun
            DATE_END => '2007-03-04' # Sun
          },
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            minor => 'STANZA',
            DATE_START => '2008-01-12', # Sat
            DATE_END => '2008-01-13' # Sun
          },
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
            DATE_START => '2009-03-06', # Fri
            DATE_END => '2009-03-08' # Sun
          }
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            DATE_START => '2010-01-08', # Fri
            DATE_END => '2010-01-10' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2010-03-05', # Fri
            DATE_END => '2010-03-07' # Sun
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
            minor => 'SEGMENT',
            DATE_START => '2011-01-07', # Fri
            DATE_END => '2011-01-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2011-03-04', # Fri
            DATE_END => '2011-03-06' # Sun
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-01-06', # Fri
            DATE_END => '2012-01-08' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-03-02', # Fri
            DATE_END => '2012-03-04' # Sun
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
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2013-01-04', # Fri
            DATE_END => '2013-01-06' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2013-03-01', # Fri
            DATE_END => '2013-03-03' # Sun
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
            minor => 'STANZA',
            DATE_START => '2014-01-10', # Fri
            DATE_END => '2014-01-12' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            minor => 'STANZA',
            DATE_START => '2014-03-07', # Fri
            DATE_END => '2014-03-09' # Sun
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
            DATE_START => '2015-01-09', # Fri
            DATE_END => '2015-01-11' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            DATE_START => '2015-01-22', # Thu
            DATE_END => '2015-01-25' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2015-03-06', # Fri
            DATE_END => '2015-03-08' # Sun
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
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2016-01-08', # Fri
            DATE_END => '2016-01-10' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            DATE_START => '2016-03-04', # Fri
            DATE_END => '2016-03-06' # Sun
          } 
        }
      },
    }
  },

  'Commonwealth Nations Bridge Championships' => 
  {
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        COUNTRY => 'Australia',
        CITY => 'Melbourne',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-03-07', # Tue
            DATE_END => '2006-03-12' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-03-07', # Tue
            DATE_END => '2006-03-12' # Sun
          },
        }
      },
      '2010' =>
      {
        COUNTRY => 'India',
        CITY => 'Delhi',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-10-24', # Sun
            DATE_END => '2010-10-27' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-10-29', # Fri
            DATE_END => '2010-10-29' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-29', # Fri
            DATE_END => '2010-10-29' # Fri
          },
        }
      },
      '2014' =>
      {
        COUNTRY => 'Scotland',
        CITY => 'Glasgow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2014-09-07', # Sun
            DATE_END => '2014-09-11' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2014-09-12', # Fri
            DATE_END => '2014-09-12' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2014-09-12', # Fri
            DATE_END => '2014-09-12' # Fri
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2014-09-13', # Sat
            DATE_END => '2014-09-13' # Sat
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2014-09-13', # Sat
            DATE_END => '2014-09-13' # Sat
          },
        }
      },
      '2018' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            COUNTRY => 'Australia',
            CITY => 'Gold Coast',
            DATE_START => '2018-02-14', # Wed
            DATE_END => '2018-02-18' # Sun
          },
        }
      },
    }
  },

  'Corn Cairdis Match' => 
  {
    ORIGIN => 'International',
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
            major => 'MATCH',
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-15' # Sun
          },
        }
      },
    }
  },

  'English Open Trials' => 
  {
    ORGANIZATION => 'EBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006A' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-01-16', # Mon
            DATE_END => '2006-01-19' # Thu
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SET',
            DATE_START => '2006-02-19', # Sun
            DATE_END => '2006-02-19' # Sun
          },
        }
      },
      '2006B' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            major => 'STANZA',
            DATE_START => '2006-09-11', # Mon
            DATE_END => '2006-09-11' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            major => 'STANZA',
            DATE_START => '2006-10-14', # Sat
            DATE_END => '2006-10-15' # Sun
          },
        }
      },
      '2007A' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-09-16', # Sun
            DATE_END => '2007-09-16' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-10-31', # Wed
            DATE_END => '2007-10-31' # Wed
          },
        }
      },
      '2007B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SET',
            DATE_START => '2007-11-25', # Sun
            DATE_END => '2007-11-25' # Sun
          },
        }
      },
      '2008A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          },
        }
      },
      '2008B' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-08-27', # Wed
            DATE_END => '2008-08-27' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-08-28', # Thu
            DATE_END => '2008-08-28' # Thu
          },
        }
      }
    }
  },

  'English Premier League' => 
  {
    ORGANIZATION => 'EBU',
    ORIGIN => 'Interclub',
    ZONE => 'Europe',
    COUNTRY => 'England',
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
          'C0' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-11-05', # Wed
            DATE_END => '2008-11-08' # Sat
          },
          'C2' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          },
        }
      },
      '2009' =>
      {
        # https://www.ebu.co.uk/results/283
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2009-10-03', # Sat
            DATE_END => '2009-10-04' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2009-10-24', # Sat
            DATE_END => '2009-10-24' # Sat
          },
          'C2' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2009-10-31', # Sat
            DATE_END => '2009-11-01' # Sun
          },
          'C3' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2009-11-13', # Fri
            DATE_END => '2009-11-15' # Sun
          },
        }
      },
      '2010' =>
      {
        # https://www.ebu.co.uk/results/224
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2010-09-11', # Sat
            DATE_END => '2010-09-12' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2010-09-25', # Sat
            DATE_END => '2010-09-26' # Sun
          },
          'C2' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2010-11-13', # Sat
            DATE_END => '2010-11-14' # Sun
          },
        }
      },
      '2011' =>
      {
        # https://www.ebu.co.uk/results/166
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2011-09-24', # Sat
            DATE_END => '2011-09-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2011-09-30', # Fri
            DATE_END => '2011-10-02' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            minor => 'SET',
            DATE_START => '2011-11-11', # Fri
            DATE_END => '2011-11-13' # Sun
          },
        }
      },
      '2012' =>
      {
        # https://www.ebu.co.uk/results/105
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            minor => 'SET',
            DATE_START => '2012-09-22', # Sat
            DATE_END => '2012-09-23' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            major => 'STANZA',
            DATE_START => '2012-10-27', # Sat
            DATE_END => '2012-10-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2012-11-09', # Fri
            DATE_END => '2012-11-11' # Sun
          },
        }
      },
      '2013' =>
      {
        # https://www.ebu.co.uk/results/5
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            DATE_START => '2013-10-12', # Sat
            DATE_END => '2013-10-13' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            DATE_START => '2013-11-08', # Fri
            DATE_END => '2013-11-10' # Sun
          },
        }
      },
      '2014' =>
      {
        # https://www.ebu.co.uk/results/48
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            DATE_START => '2014-09-20', # Sat
            DATE_END => '2014-09-21' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2014-09-27', # Sat
            DATE_END => '2014-09-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            DATE_START => '2014-11-07', # Fri
            DATE_END => '2014-11-09' # Sun
          },
        }
      },
      '2015' =>
      {
        # https://www.ebu.co.uk/results/428
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            DATE_START => '2015-09-12', # Sat
            DATE_END => '2015-09-13' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            DATE_START => '2015-10-31', # Sat
            DATE_END => '2015-11-01' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            DATE_START => '2015-11-06', # Fri
            DATE_END => '2015-11-07' # Sat
          },
        }
      },
    }
  },

  'English Senior Trials' => 
  {
    ORGANIZATION => 'EBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2004' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-09-05', # Sun
            DATE_END => '2004-09-05' # Sun
          },
        }
      },
      '2012' =>
      {
        # https://www.ebu.co.uk/results/100
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            DATE_START => '2012-12-15', # Sat
            DATE_END => '2012-12-16' # Sun
          },
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            DATE_START => '2013-12-20', # Fri
            DATE_END => '2013-12-22' # Sun
          },
        }
      },
      '2014A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-01-04', # Sat
            DATE_END => '2014-01-05' # Sun
          },
        }
      },
      '2014B' =>
      {
        # https://www.ebu.co.uk/results/162
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            DATE_START => '2014-12-18', # Thu
            DATE_END => '2014-12-21' # Sun
          },
        }
      },
      '2015' =>
      {
        # https://www.ebu.co.uk/results/453
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2015-12-18', # Fri
            DATE_END => '2015-12-20' # Sun
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
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2016-02-05', # Fri
            DATE_END => '2016-02-07' # Sun
          },
        }
      }
    }
  },

  'English U28 Trials' => 
  {
    ORGANIZATION => 'EBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U28',

    EDITIONS =>
    {
      '2008' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-05-21', # Wed
            DATE_END => '2008-05-21' # Wed
          },
        }
      }
    }
  },

  'English Women Teams' => 
  {
    # https://www.ebu.co.uk/information-resources/whitelaw-cup-english-womens-teams-championship
    ORGANIZATION => 'EBU',
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
        # https://www.ebu.co.uk/results/116
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-09-04', # Sun
            DATE_END => '2011-09-04' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-09-04', # Sun
            DATE_END => '2011-09-04' # Sun
          },
        }
      },
      '2012' =>
      {
        # https://www.ebu.co.uk/results/116
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SET',
            DATE_START => '2012-09-02', # Sun
            DATE_END => '2012-09-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2012-09-02', # Sun
            DATE_END => '2012-09-02' # Sun
          },
        }
      }
    }
  },

  'English Women Trials' => 
  {
    ORGANIZATION => 'EBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        FORM => 'Teams',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            major => 'STANZA',
            DATE_START => '2006-10-17', # Tue
            DATE_END => '2006-10-17' # Tue
          },
          'C1' => 
          {
            YEAR => 2006,
            major => 'STANZA',
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-13' # Mon
          },
        }
      },
      '2008' =>
      {
        FORM => 'Teams',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-02-12', # Tue
            DATE_END => '2008-02-12' # Tue
          },
        }
      },
      '2009' =>
      {
        FORM => 'Teams',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            DATE_START => '2009-01-05', # Mon
            DATE_END => '2009-01-05' # Mon
          },
        }
      },
      '2010' =>
      {
        # https://www.ebu.co.uk/results/277
        FORM => 'Teams',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-01-22', # Fri
            DATE_END => '2010-01-24' # Sun
          },
        }
      },
      '2011' =>
      {
        # https://www.ebu.co.uk/results/217
        FORM => 'Teams',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-01-21', # Fri
            DATE_END => '2011-01-23' # Sun
          },
        }
      },
      '2012' =>
      {
        # https://www.ebu.co.uk/results/155
        FORM => 'Pairs',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-01-13', # Fri
            DATE_END => '2012-01-15' # Sun
          },
        }
      },
      '2013' =>
      {
        # https://www.ebu.co.uk/results/94
        FORM => 'Pairs',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-01-25', # Fri
            DATE_END => '2013-01-27' # Sun
          },
        }
      },
      '2014' =>
      {
        # https://www.ebu.co.uk/results/17
        FORM => 'Teams',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-01-24', # Fri
            DATE_END => '2014-01-26' # Sun
          },
        }
      },
      '2015' =>
      {
        # https://www.ebu.co.uk/results/235
        FORM => 'Pairs',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-01-23', # Fri
            DATE_END => '2015-01-25' # Sun
          },
        }
      },
      '2016' =>
      {
        # https://www.ebu.co.uk/results/461
        FORM => 'Teams',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-01-22', # Fri
            DATE_END => '2016-01-24' # Sun
          },
        }
      }
    }
  },

  'Garden Cities Teams' => 
  {
    # https://www.ebu.co.uk/competitions/garden-cities
    ORGANIZATION => 'EBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    COUNTRY => 'England',
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
            YEAR => 2014,
            STAGE => 'Final',
            major => 'MATCH',
            DATE_START => '2014-06-14', # Sat
            DATE_END => '2014-06-14' # Sat
          },
        }
      }
    }
  },

  'Glasgow Transnational Open Teams' => 
  {
    ORIGIN => 'International',
    ZONE => 'Europe',
    COUNTRY => 'Scotland',
    CITY => 'Glasgow',
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
            STAGE => 'Semifinal',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2014-09-14', # Sun
            DATE_END => '2014-09-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            minor => 'SEGMENT',
            DATE_START => '2014-09-14', # Sun
            DATE_END => '2014-09-14' # Sun
          },
        }
      },
    }
  },

  'Higson Teams Cup' => 
  {
    # http://www.manchesterbridge.org.uk/cup.html
    ORGANIZATION => 'EBU',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    COUNTRY => 'England',
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
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2014-04-27', # Sun
            DATE_END => '2014-04-27' # Sun
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
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2015-04-26', # Sun
            DATE_END => '2015-04-26' # Sun
          },
        }
      }
    }
  },

  'Junior Camrose' => 
  {
    # https://www.bridgewebs.com/bgb/Junior%20Camrose%20Winners.htm
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Juniors',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'MATCH',
            DATE_START => '2006-02-19', # Sun
            DATE_END => '2006-02-19' # Sun
          },
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-02-24', # Sat
            DATE_END => '2007-02-24' # Sat
          },
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          },
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            DATE_START => '2009-02-21', # Sat
            DATE_END => '2009-02-22' # Sun
          },
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            DATE_START => '2010-02-20', # Sat
            DATE_END => '2010-02-21' # Sun
          },
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-02-19', # Sat
            DATE_END => '2011-02-20' # Sun
          },
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            DATE_START => '2012-02-18', # Sat
            DATE_END => '2012-02-19' # Sun
          },
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
            minor => 'SET',
            DATE_START => '2013-02-16', # Sat
            DATE_END => '2013-02-17' # Sun
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
            major => 'MATCH',
            DATE_START => '2014-02-22', # Sat
            DATE_END => '2014-02-23' # Sun
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
            major => 'MATCH',
            DATE_START => '2015-02-21', # Sat
            DATE_END => '2015-02-22' # Sun
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
            DATE_START => '2016-02-19', # Fri
            DATE_END => '2016-02-21' # Sun
          },
        }
      },
    }
  },

  'Lady Milne Trophy' => 
  {
    # https://www.bridgewebs.com/bgb/Lady%20Milne%20Winners.htm
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            major => 'MATCH',
            DATE_START => '2004-04-18', # Sun
            DATE_END => '2004-04-18' # Sun
          },
        }
      },
      '2005' =>
      {
        # https://www.ebu.co.uk/results/582
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'MATCH',
            DATE_START => '2005-04-15', # Fri
            DATE_END => '2005-04-17' # Sun
          },
        }
      },
      '2006' =>
      {
        # https://www.ebu.co.uk/results/513
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'MATCH',
            DATE_START => '2006-04-01', # Sat
            DATE_END => '2006-04-03' # Mon
          },
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-04-14', # Sat
            DATE_END => '2007-04-16' # Mon
          },
        }
      },
      '2008' =>
      {
        # https://www.ebu.co.uk/results/363
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-04-12', # Sat
            DATE_END => '2008-04-14' # Mon
          },
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2009-04-17', # Fri
            DATE_END => '2009-04-19' # Sun
          },
        }
      },
      '2010' =>
      {
        # https://www.ebu.co.uk/results/277
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            DATE_START => '2010-04-17', # Sat
            DATE_END => '2010-04-18' # Sun
          },
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
            minor => 'MATCH',
            DATE_START => '2011-04-15', # Fri
            DATE_END => '2011-04-17' # Sun
          },
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2012-04-13', # Fri
            DATE_END => '2012-04-15' # Sun
          },
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2013-04-12', # Fri
            DATE_END => '2013-04-14' # Sun
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
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2014-04-11', # Fri
            DATE_END => '2014-04-13' # Sun
          },
        }
      },
      '2015' =>
      {
        # https://www.ebu.co.uk/results/353
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            minor => 'STANZA',
            DATE_START => '2015-04-17', # Fri
            DATE_END => '2015-04-19' # Sun
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
            major => 'MATCH',
            minor => 'STANZA',
            DATE_START => '2016-04-15', # Fri
            DATE_END => '2016-04-17' # Sun
          },
        }
      },
    }
  },

  'Lederer Memorial Trophy' => 
  {
    # https://lederertrophy.com/previous-winners/
    ORIGIN => 'International',
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
            major => 'MATCH',
            DATE_START => '2004-10-16', # Sat
            DATE_END => '2004-10-17' # Sun
          },
        }
      },
      '2005' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'MATCH',
            DATE_START => '2005-10-16', # Sun
            DATE_END => '2005-10-17' # Mon
          },
        }
      },
      '2006' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'MATCH',
            DATE_START => '2006-10-31', # Tue
            DATE_END => '2006-10-31' # Tue
          },
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          },
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-11-05', # Wed
            DATE_END => '2008-11-05' # Wed
          },
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            DATE_START => '2009-10-17', # Sat
            DATE_END => '2009-10-18' # Sun
          },
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            DATE_START => '2010-10-30', # Sat
            DATE_END => '2010-10-31' # Sun
          },
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            DATE_START => '2011-11-19', # Sat
            DATE_END => '2011-11-20' # Sun
          },
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            DATE_START => '2012-09-29', # Sat
            DATE_END => '2012-09-30' # Sun
          },
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            DATE_START => '2013-10-26', # Sat
            DATE_END => '2013-10-27' # Sun
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
            major => 'MATCH',
            DATE_START => '2015-02-28', # Sat
            DATE_END => '2015-03-01' # Sun
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
            major => 'MATCH',
            DATE_START => '2016-02-27', # Sat
            DATE_END => '2016-02-28' # Sun
          },
        }
      },
    }
  },

  'Peggy Bayer Trophy' => 
  {
    # https://www.ebu.co.uk/internationals/peggy-bayer-trophy-home-internationals-history
    ORGANIZATION => 'EBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U21',

    EDITIONS =>
    {
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          },
        }
      },
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            DATE_START => '2009-02-22', # Sun
            DATE_END => '2009-02-22' # Sun
          },
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
            DATE_START => '2011-02-20', # Sun
            DATE_END => '2011-02-20' # Sun
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
            DATE_START => '2016-02-19', # Fri
            DATE_END => '2016-02-21' # Sun
          },
        }
      },
    }
  },

  'Scottish Cup' => 
  {
    # https://www.sbu.org.uk/results/archived-results
    ORGANIZATION => 'SBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    COUNTRY => 'Scotland',
    FORM => 'Teams',
    SCORING => 'IMP',
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
            STAGE => 'Final',
            DATE_START => '2006-05-06', # Sat
            DATE_END => '2006-05-06' # Sat
          },
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'QUARTER',
            DATE_START => '2007-05-30', # Wed
            DATE_END => '2007-05-30' # Wed
          },
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2008-05-21', # Wed
            DATE_END => '2008-05-21' # Wed
          },
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
            DATE_START => '2009-05-16', # Sat
            DATE_END => '2009-05-16' # Sat
          },
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
            major => 'STANZA',
            DATE_START => '2010-05-15', # Sat
            DATE_END => '2010-05-15' # Sat
          },
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'STANZA',
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-14' # Sat
          },
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
            major => 'STANZA',
            DATE_START => '2012-05-12', # Sat
            DATE_END => '2012-05-12' # Sat
          },
        }
      },
      '2013A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2013-05-11', # Sat
            DATE_END => '2013-05-11' # Sat
          },
        }
      },
      '2013B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-14', # Sat
            DATE_END => '2013-12-14' # Sat
          },
        }
      },
      '2014-15' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-09', # Tue
            DATE_END => '2014-12-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          },
          'C2' => 
          {
            # Not sure what this is.
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-01', # Sun
            DATE_END => '2015-02-01' # Sun
          },
        }
      }
    }
  },

  'Scottish National League' => 
  {
    # https://www.sbu.org.uk/results/archived-results
    ORGANIZATION => 'SBU',
    ORIGIN => 'Interclub',
    ZONE => 'Europe',
    COUNTRY => 'Scotland',
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
            major => 'STANZA',
            DATE_START => '2013-08-24', # Sat
            DATE_END => '2013-08-24' # Sat
          },
        }
      }
    }
  },

  'Spring Foursomes' => 
  {
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
        # https://www.ebu.co.uk/results/576
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-05-02', # Mon
            DATE_END => '2005-05-03' # Tue
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-05-03', # Tue
            DATE_END => '2005-05-03' # Tue
          },
        }
      },
      '2006' =>
      {
        # https://www.ebu.co.uk/results/505
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-04-28', # Fri
            DATE_END => '2006-05-02' # Tue
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
      '2007' =>
      {
        # https://www.ebu.co.uk/results/413
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-04', # Fri
            DATE_END => '2007-05-08' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-08', # Tue
            DATE_END => '2007-05-08' # Tue
          },
        }
      },
      '2008' =>
      {
        # https://www.ebu.co.uk/results/637
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SET',
            DATE_START => '2008-05-02', # Fri
            DATE_END => '2008-05-06' # Tue
          },
        }
      },
      '2009' =>
      {
        # https://www.ebu.co.uk/results/314
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-01', # Fri
            DATE_END => '2009-05-05' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-05', # Tue
            DATE_END => '2009-05-05' # Tue
          },
        }
      },
      '2010' =>
      {
        # https://www.ebu.co.uk/results/256
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-04-30', # Fri
            DATE_END => '2010-05-04' # Tue
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-05-04', # Tue
            DATE_END => '2010-05-04' # Tue
          },
        }
      },
      '2011' =>
      {
        # https://www.ebu.co.uk/results/202
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-04-29', # Fri
            DATE_END => '2011-05-03' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-03', # Tue
            DATE_END => '2011-05-03' # Tue
          },
        }
      },
      '2012' =>
      {
        # https://www.ebu.co.uk/results/135
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SET',
            DATE_START => '2012-05-04', # Fri
            DATE_END => '2012-05-08' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2012-05-08', # Tue
            DATE_END => '2012-05-08' # Tue
          },
        }
      },
      '2013' =>
      {
        # https://www.ebu.co.uk/results/63
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-03', # Fri
            DATE_END => '2013-05-07' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-07', # Tue
            DATE_END => '2013-05-07' # Tue
          },
        }
      },
      '2014' =>
      {
        # https://www.ebu.co.uk/results/30
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-05-02', # Fri
            DATE_END => '2014-05-05' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2014-05-06', # Tue
            DATE_END => '2014-05-06' # Tue
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2014-05-06', # Tue
            DATE_END => '2014-05-06' # Tue
          },
        }
      },
      '2015' =>
      {
        # https://www.ebu.co.uk/results/361
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2015-05-01', # Fri
            DATE_END => '2015-05-05' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2015-05-05', # Tue
            DATE_END => '2015-05-05' # Tue
          },
        }
      },
      '2016' =>
      {
        # https://www.ebu.co.uk/results/492
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-04-29', # Fri
            DATE_END => '2016-05-02' # Mon
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'STANZA',
            DATE_START => '2016-05-03', # Tue
            DATE_END => '2016-05-03' # Tue
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'STANZA',
            DATE_START => '2016-05-03', # Tue
            DATE_END => '2016-05-03' # Tue
          },
        }
      },
    }
  },

  'Teltscher Trophy' => 
  {
    # https://www.bridgewebs.com/bgb/Past%20Teltscher%20Trophy%20Winners.htm
    # https://www.sbu.org.uk/international/international-news/international-hall-of-fame/history/senior-camrose-teams
    # https://www.bridgewebs.com/cgi-bin/bwor/bw.cgi?club=bgb&pid=docs_Past%20Teltscher%20Trophy%20Teams.htm
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            DATE_START => '2009-05-29', # Fri
            DATE_END => '2009-05-31' # Sun
          },
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-05-28', # Fri
            DATE_END => '2010-05-30' # Sun
          },
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            DATE_START => '2011-05-27', # Fri
            DATE_END => '2011-05-29' # Sun
          },
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'MATCH',
            DATE_START => '2012-05-18', # Fri
            DATE_END => '2012-05-20' # Sun
          },
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-05-17', # Fri
            DATE_END => '2013-05-19' # Sun
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
            major => 'MATCH',
            DATE_START => '2014-05-16', # Fri
            DATE_END => '2014-05-18' # Sun
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
            major => 'MATCH',
            DATE_START => '2015-05-15', # Fri
            DATE_END => '2015-05-17' # Sun
          },
        }
      },
      '2016' =>
      {
        CITY => 'Edinburgh',
        COUNTRY => 'Scotland',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-05-20', # Fri
            DATE_END => '2016-05-22' # Sun
          },
        }
      },
      # 2017 Belfast
      # 2018 Wales
      # 2019 Edinburgh
      '2020' =>
      {
        # https://bridgeresults.org/o/2020_teltscher_trophy/2020_teltscher_trophyr.asp
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2020,
            DATE_START => '2020-05-15', # Fri
            DATE_END => '2020-05-17' # Sun
          },
        }
      },
      '2021' =>
      {
        # https://www.ebu.co.uk/results/807
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-04-16', # Fri
            DATE_END => '2021-04-18' # Sun
          },
        }
      },
      '2022' =>
      {
        # https://www.ebu.co.uk/internationals/team/senior/teltscher-trophy-2022
        CITY => 'Belfast',
        COUNTRY => 'Northern Ireland',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-05-20', # Fri
            DATE_END => '2022-05-22' # Sun
          },
        }
      },
      '2023' =>
      {
        # https://www.ebu.co.uk/internationals/team/senior/teltscher-trophy-2023
        CITY => 'Newport',
        COUNTRY => 'Wales',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-05-19', # Fri
            DATE_END => '2023-05-21' # Sun
          },
        }
      },
      '2024' =>
      {
        # https://www.ebu.co.uk/internationals/team/senior/teltscher-trophy-2024
        CITY => 'Stirling',
        COUNTRY => 'Scotland',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-05-17', # Fri
            DATE_END => '2024-05-19' # Sun
          },
        }
      },
    }
  },

  'TGR Auction Pairs' => 
  {
    # https://www.bridgewebs.com/tgrs/
    ORIGIN => 'International',
    ZONE => 'Europe',
    COUNTRY => 'England',
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
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-01-17', # Sun
            DATE_END => '2010-01-17' # Sun
          },
        }
      },
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-01-15', # Sat
            DATE_END => '2011-01-16' # Sun
          },
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-01-14', # Sat
            DATE_END => '2012-01-15' # Sun
          },
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-01-12', # Sat
            DATE_END => '2013-01-13' # Sun
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
            major => 'SESSION',
            DATE_START => '2014-01-11', # Sat
            DATE_END => '2014-01-12' # Sun
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
            major => 'SESSION',
            DATE_START => '2015-01-10', # Sat
            DATE_END => '2015-01-11' # Sun
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
            major => 'SESSION',
            DATE_START => '2016-01-09', # Sat
            DATE_END => '2016-01-10' # Sun
          },
        }
      }
    }
  },

  'TGR Auction Teams' => 
  {
    # https://www.bridgewebs.com/tgrs/
    ORIGIN => 'International',
    ZONE => 'Europe',
    COUNTRY => 'England',
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2011-09-03', # Sat
            DATE_END => '2011-09-03' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-09-04', # Sun
            DATE_END => '2011-09-04' # Sun
          },
        }
      }
    }
  },

  'TGR Super League' => 
  {
    # https://www.bridgewebs.com/tgrs/
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    COUNTRY => 'England',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009-10' =>
      {
        CHAPTERS =>
        {
          'C00' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2009-09-16', # Wed
            DATE_END => '2009-09-16' # Wed
          },
          'C01' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-09-30', # Wed
            DATE_END => '2009-09-30' # Wed
          },
          'C02' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-10-07', # Wed
            DATE_END => '2009-10-07' # Wed
          },
          'C03' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-10-07', # Wed
            DATE_START => '2009-10-14', # Wed
            DATE_END => '2009-10-14' # Wed
          },
          'C04' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-10-28', # Wed
            DATE_END => '2009-10-28' # Wed
          },
          'C05' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-11-04', # Wed
            DATE_END => '2009-11-04' # Wed
          },
          'C06' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-11-10', # Tue
            DATE_END => '2009-11-11' # Wed
          },
          'C07' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-11-18', # Wed
            DATE_END => '2009-11-18' # Wed
          },
          'C08' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-12-09', # Wed
            DATE_END => '2009-12-09' # Wed
          },
          'C09' => 
          {
            YEAR => 2010,
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2010-01-20', # Wed
            DATE_END => '2010-01-20' # Wed
          },
          'C10' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-01-27', # Wed
            DATE_END => '2010-01-27' # Wed
          },
          'C11' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-02-03', # Wed
            DATE_END => '2010-02-03' # Wed
          },
          'C12' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-02-17', # Wed
            DATE_END => '2010-02-17' # Wed
          },
          'C13' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-03-03', # Wed
            DATE_END => '2010-03-03' # Wed
          },
          'C14' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-03-24', # Wed
            DATE_END => '2010-03-24' # Wed
          },
          'C15' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-04-14', # Wed
            DATE_END => '2010-04-14' # Wed
          },
          'C16' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-04-28', # Wed
            DATE_END => '2010-04-28' # Wed
          },
          'C17' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-05-12', # Wed
            DATE_END => '2010-05-12' # Wed
          },
        }
      },
      '2010-11' =>
      {
        CHAPTERS =>
        {
          'C00' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-15', # Wed
            DATE_END => '2010-09-15' # Wed
          },
          'C01' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-09-22', # Wed
            DATE_END => '2010-09-22' # Wed
          },
          'C02' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-09-29', # Wed
            DATE_END => '2010-09-29' # Wed
          },
          'C03' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-10-27', # Wed
            DATE_END => '2010-10-27' # Wed
          },
          'C04' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-11-03', # Wed
            DATE_END => '2010-11-03' # Wed
          },
          'C05' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-11-10', # Wed
            DATE_END => '2010-11-10' # Wed
          },
          'C06' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-11-17', # Wed
            DATE_END => '2010-11-17' # Wed
          },
          'C07' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-12-01', # Wed
            DATE_END => '2010-12-01' # Wed
          },
          'C08' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-12-15', # Wed
            DATE_END => '2010-12-15' # Wed
          },
          'C09' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-02-09', # Wed
            DATE_END => '2011-02-09' # Wed
          },
          'C10' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-02-23', # Wed
            DATE_END => '2011-02-23' # Wed
          },
          'C11' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-03-02', # Wed
            DATE_END => '2011-03-02' # Wed
          },
          'C12' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-03-16', # Wed
            DATE_END => '2011-03-16' # Wed
          },
          'C13' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-03-23', # Wed
            DATE_END => '2011-03-23' # Wed
          },
          'C14' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-06', # Wed
            DATE_END => '2011-04-06' # Wed
          },
          'C15' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-27', # Wed
            DATE_END => '2011-04-27' # Wed
          },
          'C16' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-11', # Wed
            DATE_END => '2011-05-11' # Wed
          },
          'C17' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-06-01', # Wed
            DATE_END => '2011-06-01' # Wed
          },
          'C18' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-06-08', # Wed
            DATE_END => '2011-06-08' # Wed
          },
        }
      }
    }
  },

  'Welsh Invitational Pairs' => 
  {
    # https://www.bridgewebs.com/tgrs/
    ORGANIZATION => 'WBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    COUNTRY => 'Scotland',
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
            major => 'ROUND',
            DATE_START => '2009-09-20', # Sun
            DATE_END => '2009-09-20' # Sun
          },
        }
      }
    }
  },

  'Welsh Open Trials' => 
  {
    # https://welshbridgeunion.org/archive-test
    ORGANIZATION => 'WBU',
    ORIGIN => 'National',
    ZONE => 'Europe',
    COUNTRY => 'Scotland',
    FORM => 'Pairs',
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
            SCORING => 'MP',
            major => 'MATCH',
            DATE_START => '2011-10-15', # Sat
            DATE_END => '2011-10-16' # Sun
          },
        }
      },
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            SCORING => 'IMP',
            major => 'ROUND',
            DATE_START => '2012-10-20', # Sat
            DATE_END => '2012-10-21' # Sun
          },
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
            major => 'MATCH',
            DATE_START => '2013-10-19', # Sat
            DATE_END => '2013-10-20' # Sun
          },
        }
      }
    }
  },

  'Young Chelsea Knock-out' => 
  {
    # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=youngchelsea&pid=display_page12
    ORIGIN => 'Regional',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-03', # Sun
            DATE_END => '2010-01-03' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-09-19', # Sun
            DATE_END => '2010-09-19' # Sun
          },
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
            DATE_START => '2011-08-07', # Sun
            DATE_END => '2011-08-07' # Sun
          },
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
            DATE_START => '2012-08-05', # Sun
            DATE_END => '2012-08-05' # Sun
          },
        }
      }
    },
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_UK, \%TOURNAMENTS_UK, 'United Kingdom');
}

1;
