#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Romania;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# https://www.frbridge.ro/rezultate/index.html


my %MEETS_ROMANIA =
(
  'Brasov Festival' =>
  {
    ORGANIZATION => 'FRB',
    CITY => 'Brasov',
    COUNTRY => 'Romania',
    ORIGIN => 'National',
    ZONE => 'Europe Pacific',

    EDITIONS =>
    {
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-11-19', # Thu
        DATE_END => '2009-11-22' # Sun
      },
    }
  },
);

my %TOURNAMENTS_ROMANIA =
(
  'Brasov Open Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Brasov Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-11-21', # Sat
            DATE_END => '2009-11-22' # Sun
          } 
        }
      },
    }
  },

  'Brasov Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Brasov Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-11-19', # Thu
            DATE_END => '2009-11-20' # Fri
          } 
        }
      },
    }
  },

  'Romanian League',
  {
    ORGANIZATION => 'FRB',
    COUNTRY => 'Romania',
    ORIGIN => 'National',
    ZONE => 'Europe Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004-05' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            minor => 'HALF',
            DATE_START => '2005-03-26', # Sat
            DATE_END => '2005-03-29' # Tue
          } 
        }
      },
      '2010-11' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-11-26', # Fri
            DATE_END => '2010-11-28' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-02-18', # Fri
            DATE_END => '2011-02-20' # Sun
          } 
        }
      },
      '2011-12' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-11-04', # Fri
            DATE_END => '2011-11-06' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-05-11', # Fri
            DATE_END => '2012-05-13' # Sun
          }
        }
      },
      '2012-13' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-11-30', # Fri
            DATE_END => '2012-12-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-02-22', # Fri
            DATE_END => '2013-02-24' # Sun
          }
        }
      },
      '2013-14' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-11-01', # Fri
            DATE_END => '2013-11-03' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-02-14', # Fri
            DATE_END => '2014-02-16' # Sun
          }
        }
      },
      '2014-15' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-11-28', # Fri
            DATE_END => '2014-11-30' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-02-13', # Fri
            DATE_END => '2015-02-15' # Sun
          } 
        }
      },
      '2015-16' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-11-20', # Fri
            DATE_END => '2015-11-22' # Sun
          },
          'C1' => 
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

  'Romanian Open Teams',
  {
    ORGANIZATION => 'FRB',
    COUNTRY => 'Romania',
    ORIGIN => 'National',
    ZONE => 'Europe Pacific',
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-06-03', # Fri
            DATE_END => '2005-06-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-06-04', # Sat
            DATE_END => '2005-06-05' # Sun
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-05-21', # Fri
            DATE_END => '2010-05-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-05-22', # Sat
            DATE_END => '2010-05-23' # Sun
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
            minor => 'MATCH',
            DATE_START => '2011-06-10', # Fri
            DATE_END => '2011-06-12' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-06-10', # Fri
            DATE_END => '2011-06-12' # Sun
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
            DATE_START => '2012-06-08', # Fri
            DATE_END => '2012-06-10' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-08', # Fri
            DATE_END => '2012-06-10' # Sun
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
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-08', # Sat
            DATE_END => '2013-06-09' # Sun
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
            DATE_START => '2014-06-06', # Fri
            DATE_END => '2014-06-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-06-07', # Sat
            DATE_END => '2014-06-08' # Sun
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
            DATE_START => '2015-06-05', # Fri
            DATE_END => '2015-06-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-06', # Sat
            DATE_END => '2015-06-07' # Sun
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
            DATE_START => '2016-06-03', # Fri
            DATE_END => '2016-06-05' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-06-03', # Fri
            DATE_END => '2016-06-05' # Sun
          } 
        }
      },
    }
  },

  'Romanian Open Trials',
  {
    ORGANIZATION => 'FRB',
    COUNTRY => 'Romania',
    ORIGIN => 'National',
    ZONE => 'Europe Pacific',
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
            major => 'ROUND',
            DATE_START => '2010-02-19', # Fri
            DATE_END => '2010-02-21' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-02-27', # Sat
            DATE_END => '2010-02-27' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-02-27', # Sat
            DATE_END => '2010-02-28' # Sun
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
            DATE_START => '2012-01-27', # Fri
            DATE_END => '2012-01-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-18', # Sat
            DATE_END => '2012-02-19' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-26', # Sun
            DATE_END => '2012-02-27' # Mon
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
            major => 'ROUND',
            DATE_START => '2014-02-22', # Sat
            DATE_END => '2014-02-23' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-01', # Sat
            DATE_END => '2014-03-02' # Sun
          } 
        }
      },
    }
  },

  'Romanian Second League',
  {
    ORGANIZATION => 'FRB',
    COUNTRY => 'Romania',
    ORIGIN => 'National',
    ZONE => 'Europe Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        CITY => 'Brasov',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2009-10-17', # Sat
            DATE_END => '2009-10-18' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_ROMANIA, \%TOURNAMENTS_ROMANIA, 'Romania');
}

1;
