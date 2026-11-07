#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Taipei;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Some names here:
# https://www.ctcba.org.tw/masterpoints.php?lmenuid=3
#
# Chinese Taipei is the Chinese name for Taiwan.
# Taipei is the capital of Taiwan.

my %MEETS_TAIPEI =
(
);

my %TOURNAMENTS_TAIPEI =
(
  'Antonio Chong Cup' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Chinese Taipei',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            major => 'SEGMENT',
            DATE_START => '2013-03-24', # Sun
            DATE_END => '2013-03-24' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-24', # Sun
            DATE_END => '2013-03-24' # Sun
          } 
        }
      },
    }
  },

  'NTU Cup' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Chinese Taipei',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U31',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-02-01', # Wed
            DATE_END => '2006-02-01' # Wed
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-02-01', # Wed
            DATE_END => '2006-02-01' # Wed
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-02-01', # Wed
            DATE_END => '2006-02-01' # Wed
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-02-04', # Sun
            DATE_END => '2007-02-04' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-02-04', # Sun
            DATE_END => '2007-02-04' # Sun
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-02-04', # Sun
            DATE_END => '2007-02-04' # Sun
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-02-12', # Tue
            DATE_END => '2008-02-12' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-02-12', # Tue
            DATE_END => '2008-02-12' # Tue
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-02-12', # Tue
            DATE_END => '2008-02-12' # Tue
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-27', # Wed
            DATE_END => '2010-01-27' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-27', # Wed
            DATE_END => '2010-01-27' # Wed
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-28', # Thu
            DATE_END => '2010-01-28' # Thu
          },
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
            DATE_START => '2011-01-26', # Wed
            DATE_END => '2011-01-26' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-01-26', # Wed
            DATE_END => '2011-01-26' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-01-27', # Thu
            DATE_END => '2011-01-27' # Thu
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-08', # Wed
            DATE_END => '2012-02-08' # Wed
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-08', # Wed
            DATE_END => '2012-02-08' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2012-02-09', # Thu
            DATE_END => '2012-02-09' # Thu
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-08', # Wed
            DATE_END => '2012-02-09' # Thu
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-01-24', # Thu
            DATE_END => '2013-01-24' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-01-24', # Thu
            DATE_END => '2013-01-25' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-01-25', # Fri
            DATE_END => '2013-01-25' # Fri
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-23', # Thu
            DATE_END => '2014-01-23' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-23', # Thu
            DATE_END => '2014-01-24' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-24', # Fri
            DATE_END => '2014-01-24' # Fri
          },
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
            DATE_START => '2015-01-23', # Fri
            DATE_END => '2015-01-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-01-23', # Fri
            DATE_END => '2015-01-23' # Fri
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-26', # Tue
            DATE_END => '2016-01-26' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-26', # Tue
            DATE_END => '2016-01-27' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-01-27', # Wed
            DATE_END => '2016-01-27' # Wed
          },
        }
      },
    }
  },

  'Taiwan University Open Cup' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Chinese Taipei',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U31',

    EDITIONS =>
    {
      '2004' =>
      {
        # Probably in reality more like April 2004.
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-11-29', # Mon
            DATE_END => '2004-11-29' # Mon
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-29', # Mon
            DATE_END => '2004-11-29' # Mon
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
            major => 'SEGMENT',
            DATE_START => '2006-07-02', # Sun
            DATE_END => '2006-07-02' # Sun
          },
        }
      },
    }
  },

  'Taiwan University Teachers Cup' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Chinese Taipei',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            major => 'SEGMENT',
            DATE_START => '2006-07-02', # Sun
            DATE_END => '2006-07-02' # Sun
          },
        }
      },
    }
  },

  'Taiwan University Women Cup' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Chinese Taipei',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U31',

    EDITIONS =>
    {
      '2004' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Probably in reality more like April 2004.
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-29', # Mon
            DATE_END => '2004-11-29' # Mon
          },
        }
      },
    }
  },

  'Taiwanese Open Trials' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Chinese Taipei',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-04-17', # Sat
            DATE_END => '2004-04-18' # Sun
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
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
            major => 'SEGMENT',
            DATE_START => '2008-03-20', # Thu
            DATE_END => '2008-03-20' # Thu
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
            DATE_START => '2009-03-20', # Fri
            DATE_END => '2009-03-22' # Sun
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
            DATE_START => '2010-02-26', # Fri
            DATE_END => '2010-02-28' # Sun
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
            DATE_START => '2011-02-20', # Sun
            DATE_END => '2011-02-20' # Sun
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
            DATE_START => '2012-03-02', # Fri
            DATE_END => '2012-03-04' # Sun
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
            major => 'SEGMENT',
            DATE_START => '2013-01-26', # Sat
            DATE_END => '2013-01-27' # Sun
          } 
        }
      },
      '2014A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-02-22', # Sat
            DATE_END => '2014-02-23' # Sun
          } 
        }
      },
      '2014B' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-27', # Sat
            DATE_END => '2014-12-28' # Sun
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-26', # Sat
            DATE_END => '2015-12-27' # Sun
          } 
        }
      },
    }
  },


  'Taiwanese Senior Trials' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Chinese Taipei',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2016-01-08', # Fri
            DATE_END => '2016-01-10' # Sun
          },
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_TAIPEI, \%TOURNAMENTS_TAIPEI, 'Chinese Taipei');
}

1;
