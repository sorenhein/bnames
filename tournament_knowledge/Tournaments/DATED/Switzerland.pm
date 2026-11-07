#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Switzerland;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# https://fsbridge.ch/de/le-bridge/
# Not so easy to find results


my %MEETS_SWITZERLAND =
(
  'Zurich Open' =>
  {
    ORGANIZATION => 'FSB',
    COUNTRY => 'Switzerland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    CITY => 'Zurich',

    EDITIONS => 
    {
      '2012' =>
      {
        DATE_START => '2012-03-02', # Fri
        DATE_END => '2012-03-04' # Sun
      },
      '2013' =>
      {
        DATE_START => '2013-03-01', # Fri
        DATE_END => '2013-03-03' # Sun
      },
      '2014' =>
      {
        DATE_START => '2014-03-07', # Fri
        DATE_END => '2014-03-09' # Sun
      },
    }
  }
);

my %TOURNAMENTS_SWITZERLAND =
(
  'Jean Besse Cup' =>
  {
    ORGANIZATION => 'FSB',
    COUNTRY => 'Switzerland',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-06-12', # Sun
            DATE_END => '2011-06-12' # Sun
          } 
        }
      },
    }
  },

  'Swiss Club Championship' =>
  {
    ORGANIZATION => 'FSB',
    COUNTRY => 'Switzerland',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-12-11', # Sun
            DATE_END => '2005-12-11' # Sun
          } 
        }
      },
      '2006' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-12-17', # Sun
            DATE_END => '2006-12-17' # Sun
          } 
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
            DATE_START => '2007-12-22', # Sat
            DATE_END => '2007-12-22' # Sat
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
            DATE_START => '2010-01-10', # Sun
            DATE_END => '2010-01-10' # Sun
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
            DATE_START => '2011-12-11', # Sun
            DATE_END => '2011-12-11' # Sun
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
            DATE_START => '2012-12-09', # Sun
            DATE_END => '2012-12-09' # Sun
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
            DATE_START => '2013-12-15', # Sun
            DATE_END => '2013-12-15' # Sun
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
            DATE_START => '2014-12-07', # Sun
            DATE_END => '2014-12-07' # Sun
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
            DATE_START => '2015-12-06', # Sun
            DATE_END => '2015-12-06' # Sun
          } 
        }
      },
    }
  },

  'Swiss Cup' =>
  {
    ORGANIZATION => 'FSB',
    COUNTRY => 'Switzerland',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-09-01', # Thu
            DATE_END => '2005-09-01' # Thu
          } 
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
            DATE_START => '2007-06-12', # Tue
            DATE_END => '2007-06-12' # Tue
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-12-13', # Sat
            DATE_END => '2008-12-13' # Sat
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
            DATE_START => '2009-06-07', # Sun
            DATE_END => '2009-06-07' # Sun
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
            DATE_START => '2010-06-13', # Sun
            DATE_END => '2010-06-13' # Sun
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
            DATE_START => '2012-05-28', # Mon
            DATE_END => '2012-05-28' # Mon
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
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-07' # Fri
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
            DATE_START => '2014-06-11', # Wed
            DATE_END => '2014-06-11' # Wed
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
            DATE_START => '2015-06-23', # Tue
            DATE_END => '2015-06-23' # Tue
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
            DATE_START => '2016-06-12', # Sun
            DATE_END => '2016-06-12' # Sun
          } 
        }
      },
    }
  },

  'Swiss Open IMP Pairs' =>
  {
    ORGANIZATION => 'FSB',
    COUNTRY => 'Switzerland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
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
            major => 'SESSION',
            DATE_START => '2015-05-30', # Sat
            DATE_END => '2015-05-30' # Sat
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
            DATE_START => '2016-04-16', # Sat
            DATE_END => '2016-04-17' # Sun
          },
        }
      },
    }
  },

  'Swiss Open Teams' =>
  {
    ORGANIZATION => 'FSB',
    COUNTRY => 'Switzerland',
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
            DATE_START => '2015-05-31', # Sun
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
            major => 'SESSION',
            DATE_START => '2016-04-17', # Sun
            DATE_END => '2016-04-17' # Sun
          },
        }
      },
    }
  },

  'Zurich Open Pairs' =>
  {
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Zurich Open',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-03-01', # Fri
            DATE_END => '2013-03-02' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Zurich Open',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-03-07', # Fri
            DATE_END => '2014-03-08' # Sat
          } 
        }
      },
    }
  },

  'Zurich Open Teams' =>
  {
    FORM => 'Teams',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Zurich Open',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            SCORING => 'IMP',
            DATE_START => '2012-03-02', # Fri
            DATE_END => '2012-03-03' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            SCORING => 'Patton',
            DATE_START => '2012-03-04', # Sun
            DATE_END => '2012-03-04' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Zurich Open',
        SCORING => 'Patton',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-03-03', # Sun
            DATE_END => '2013-03-03' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Zurich Open',
        SCORING => 'Patton',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-03-09', # Sun
            DATE_END => '2014-03-09' # Sun
          } 
        }
      },
    }
  },


);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_SWITZERLAND, \%TOURNAMENTS_SWITZERLAND, 'Switzerland');
}

1;
