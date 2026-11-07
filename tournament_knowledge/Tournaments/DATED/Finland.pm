#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Finland;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# http://www.bridgefinland.fi/bilbo/results.php


my %MEETS_FINLAND =
(
  'Jyväskylä Easter Bridge Festival' =>
  {
    ORGANIZATION => 'SBL',
    CITY => 'Jyväskylä',
    COUNTRY => 'Finland',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-03-28', # Mon
        DATE_END => '2005-03-29' # Tue
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-04-02', # Wed
        DATE_END => '2008-04-02' # Wed
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-04-10', # Fri
        DATE_END => '2009-04-10' # Fri
      },
    }
  },

  'Pärnu Festival' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-10-22', # Mon
        DATE_END => '2007-10-22' # Mon
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-07-16', # Wed
        DATE_END => '2008-07-16' # Wed
      }
    }
  },
);

my %TOURNAMENTS_FINLAND =
(
  'Finnish Cup' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
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
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          },
        }
      },
      '2008' =>
      {
        # No link
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-08-12', # Tue
            DATE_END => '2008-08-12' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-08-12', # Tue
            DATE_END => '2008-08-12' # Tue
          } 
        }
      },
      '2009' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=309
        CITY => 'Hanko',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'HALF',
            DATE_START => '2009-07-20', # Mon
            DATE_END => '2009-07-22' # Wed
          } 
        }
      },
      '2010' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=473
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            DATE_START => '2010-07-28', # Wed
            DATE_END => '2010-07-29' # Thu
          } 
        }
      },
      '2011' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=691
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'HALF',
            DATE_START => '2011-07-25', # Mon
            DATE_END => '2011-07-25' # Mon
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'HALF',
            DATE_START => '2011-07-27', # Wed
            DATE_END => '2011-07-27' # Wed
          } 
        }
      },
      '2012' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=880
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-23', # Mon
            DATE_END => '2012-07-23' # Mon
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-25', # Wed
            DATE_END => '2012-07-25' # Wed
          } 
        }
      },
      '2013' =>
      {
        # No link
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-22', # Mon
            DATE_END => '2013-07-22' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-24', # Wed
            DATE_END => '2013-07-24' # Wed
          } 
        }
      },
      '2014' =>
      {
        # No link
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-21', # Mon
            DATE_END => '2014-07-21' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-23', # Wed
            DATE_END => '2014-07-23' # Wed
          } 
        }
      },
      '2016' =>
      {
        # No link
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-25', # Mon
            DATE_END => '2016-07-25' # Mon
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-29', # Fri
            DATE_END => '2016-07-29' # Fri
          } 
        }
      },
    }
  },

  'Finnish Open Pairs' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SESSION',
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-14' # Tue
          } 
        }
      },
      '2007' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-11-03', # Sat
            DATE_END => '2007-11-04' # Sun
          } 
        }
      },
      '2008' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2008-11-05', # Wed
            DATE_END => '2008-11-05' # Wed
          } 
        }
      },
      '2009' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-10-31', # Sat
            DATE_END => '2009-11-01' # Sun
          } 
        }
      },
      '2010' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=546
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2010-10-30', # Sat
            DATE_END => '2010-10-31' # Sun
          } 
        }
      },
      '2012' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=952
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-10-27', # Sat
            DATE_END => '2012-10-28' # Sun
          } 
        }
      },
      '2013' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1160
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-10-05', # Sat
            DATE_END => '2013-10-06' # Sun
          } 
        }
      },
      '2014' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1388
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-10-04', # Sat
            DATE_END => '2014-10-05' # Sun
          } 
        }
      },
      '2015' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1614
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-10-31', # Sat
            DATE_END => '2015-11-01' # Sun
          } 
        }
      },
      '2016' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1696
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2016-04-16', # Sat
            DATE_END => '2016-04-17' # Sun
          } 
        }
      },
    }
  },

  'Finnish Open Pair Trials' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=547
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-11-13', # Sat
            DATE_END => '2010-11-13' # Sat
          } 
        }
      },
    }
  },

  'Finnish Open Teams' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
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
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-05-13', # Sat
            DATE_END => '2006-05-14' # Sun
          } 
        }
      },
      '2007' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-04-14', # Sat
            DATE_END => '2007-04-15' # Sun
          } 
        }
      },
      '2008' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-04-12', # Sat
            DATE_END => '2008-04-13' # Sun
          } 
        }
      },
      '2009' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2009-05-16', # Sat
            DATE_END => '2009-05-17' # Sun
          } 
        }
      },
      '2010' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2010-05-22', # Sat
            DATE_END => '2010-05-23' # Sun
          } 
        }
      },
      '2011' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            minor => 'HALF',
            DATE_START => '2011-05-21', # Sat
            DATE_END => '2011-05-22' # Sun
          } 
        }
      },
      '2012' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2012-05-05', # Sat
            DATE_END => '2012-05-06' # Sun
          } 
        }
      },
      '2013' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2013-05-04', # Sat
            DATE_END => '2013-05-05' # Sun
          } 
        }
      },
      '2014' =>
      {
        CHAPTERS =>
        {
          # http://www.bridgefinland.fi/bilbo/results.php?tid=1324
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'MATCH',
            minor => 'HALF',
            DATE_START => '2014-05-17', # Sat
            DATE_END => '2014-05-19' # Mon
          } 
        }
      },
      '2015' =>
      {
        CHAPTERS =>
        {
          # http://www.bridgefinland.fi/bilbo/results.php?tid=1500
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'MATCH',
            minor => 'HALF',
            DATE_START => '2015-04-18', # Sat
            DATE_END => '2015-04-19' # Sun
          } 
        }
      },
    }
  },

  'Finnish Open Trials' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
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
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-02-04', # Sun
            DATE_END => '2007-02-04' # Sun
          } 
        }
      },
      '2015' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1637
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-12', # Sat
            DATE_END => '2015-12-13' # Sun
          } 
        }
      },
    }
  },

  'Finnish Senior Trials' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2009' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-01-05', # Mon
            DATE_END => '2009-01-05' # Mon
          } 
        }
      },
      '2010' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-01-16', # Sat
            DATE_END => '2010-01-17' # Sun
          } 
        }
      },
      '2013' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SEGMENT',
            DATE_START => '2013-12-14', # Sat
            DATE_END => '2013-12-15' # Sun
          } 
        }
      },
    }
  },

  'Finnish Swiss Pairs' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    MOVEMENT => 'Swiss',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=573
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-02-12', # Sat
            DATE_END => '2011-02-13' # Sun
          } 
        }
      },
      '2012' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=758
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-02-18', # Sat
            DATE_END => '2012-02-19' # Sun
          } 
        }
      },
      '2013' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=998
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-02-16', # Sat
            DATE_END => '2013-02-17' # Sun
          } 
        }
      },
      '2014' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1257
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-04-05', # Sat
            DATE_END => '2014-04-06' # Sun
          } 
        }
      },
      '2015' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1515
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-23', # Sat
            DATE_END => '2015-05-24' # Sun
          } 
        }
      },
    }
  },

  'Finnish Women Trials' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        # http://www.bridgefinland.fi/bilbo/results.php?tid=1638
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-12', # Sat
            DATE_END => '2015-12-13' # Sun
          } 
        }
      },
    }
  },

  'Hanko Open Teams' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    CITY => 'Hanko',
    ORIGIN => 'Regional',
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
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            DATE_START => '2011-07-28', # Thu
            DATE_END => '2011-07-28' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-07-28', # Thu
            DATE_END => '2011-07-28' # Thu
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
            DATE_START => '2013-07-25', # Thu
            DATE_END => '2013-07-25' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Bronze',
            DATE_START => '2013-07-25', # Thu
            DATE_END => '2013-07-25' # Thu
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-07-25', # Thu
            DATE_END => '2013-07-25' # Thu
          } 
        }
      },
    }
  },

  'Jyväskylä Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Jyväskylä Easter Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-03-28', # Mon
            DATE_END => '2005-03-29' # Tue
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Jyväskylä Easter Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          },
        }
      },
      '2009' =>
      {
        MEET => 'Jyväskylä Easter Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-04-10', # Fri
            DATE_END => '2009-04-10' # Fri
          },
        }
      },
    }
  },

  'Pärnu Summer Invitational Pairs' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    CITY => 'Pärnu',
    ORIGIN => 'Invitational',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            major => 'ROUND',
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          } 
        }
      },
    }
  },

  'Pärnu Summer Open Teams' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    CITY => 'Pärnu',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Pärnu Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
          } 
        }
      },
    }
  },

  'Puutalo Open Teams' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    CITY => 'Puutalo',
    ORIGIN => 'Regional',
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
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
          } 
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-05-14', # Wed
            DATE_END => '2008-05-14' # Wed
          } 
        }
      },
    }
  },

  'Salo Midsummer Juniors Teams' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    CITY => 'Salo',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Juniors',

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
            DATE_START => '2015-06-05', # Fri
            DATE_END => '2015-06-05' # Fri
          } 
        }
      },
    }
  },

  'Vadsø Open Pairs' =>
  {
    ORGANIZATION => 'SBL',
    COUNTRY => 'Finland',
    CITY => 'Vadsø',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Pairs',
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
            major => 'ROUND',
            DATE_START => '2008-11-05', # Wed
            DATE_END => '2008-11-05' # Wed
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_FINLAND, \%TOURNAMENTS_FINLAND, 'Finland');
}

1;
