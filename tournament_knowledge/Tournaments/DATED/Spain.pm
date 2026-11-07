#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Spain;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# The Spanish results seem to be paywalled or not searchable.
# https://www.aebridge.com/es

my %MEETS_SPAIN =
(
);

my %TOURNAMENTS_SPAIN =
(
  'Las Palmas Simultaneous Pairs',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    CITY => 'Las Palmas',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            DATE_START => '2013-05-30', # Thu
            DATE_END => '2013-05-30' # Thu
          } 
        }
      },
    }
  },

  'Las Palmas Women Pairs',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    CITY => 'Las Palmas',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
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
            DATE_START => '2013-05-24', # Fri
            DATE_END => '2013-05-26' # Sun
          } 
        }
      },
    }
  },

  'Madrid Senior Teams',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    CITY => 'Madrid',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            major => 'ROUND',
            DATE_START => '2016-05-15', # Sun
            DATE_END => '2016-05-15' # Sun
          } 
        }
      },
    }
  },

  'Open Catalunya Preferent Pairs',
  {
    # https://www.bridge.cat/
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
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
          'C0' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-10-06', # Tue
            DATE_END => '2009-10-06' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-10-19', # Mon
            DATE_END => '2009-10-19' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-10-26', # Mon
            DATE_END => '2009-10-26' # Mon
          },
          'C3' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-11-02', # Mon
            DATE_END => '2009-11-02' # Mon
          },
          'C4' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-11-09', # Mon
            DATE_END => '2009-11-09' # Mon
          },
          'C5' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-11-23', # Mon
            DATE_END => '2009-11-23' # Mon
          },
          'C6' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-11-30', # Mon
            DATE_END => '2009-11-30' # Mon
          },
        }
      },
    }
  },

  'Open Catalunya Preferent Teams',
  {
    # https://www.bridge.cat/
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
            minor => 'SEGMENT',
            DATE_START => '2010-01-11', # Mon
            DATE_END => '2010-01-11' # Mon
          },
          'C1' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-01-18', # Mon
            DATE_END => '2010-01-18' # Mon
          },
          'C2' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-01-25', # Mon
            DATE_END => '2010-01-25' # Mon
          },
          'C3' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-02-01', # Mon
            DATE_END => '2010-02-01' # Mon
          },
          'C4' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-02-08', # Mon
            DATE_END => '2010-02-08' # Mon
          },
          'C5' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-02-15', # Mon
            DATE_END => '2010-02-15' # Mon
          },
          'C6' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-03-01', # Mon
            DATE_END => '2010-03-01' # Mon
          },
          'C7' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-03-15', # Mon
            DATE_END => '2010-03-16' # Tue
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
            major => 'SESSION',
            DATE_START => '2011-01-10', # Mon
            DATE_END => '2011-01-12' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-01-17', # Mon
            DATE_END => '2011-01-17' # Mon
          },
          'C2' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-01-24', # Mon
            DATE_END => '2011-01-24' # Mon
          },
          'C3' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-01-31', # Mon
            DATE_END => '2011-01-31' # Mon
          },
          'C4' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-02-07', # Mon
            DATE_END => '2011-02-07' # Mon
          },
          'C5' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-02-14', # Mon
            DATE_END => '2011-02-14' # Mon
          },
          'C6' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-02-21', # Mon
            DATE_END => '2011-02-21' # Mon
          },
          'C7' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-02-28', # Mon
            DATE_END => '2011-02-28' # Mon
          },
          'C8' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-03-07', # Mon
            DATE_END => '2011-03-07' # Mon
          }
        }
      },
    }
  },

  'Spanish Central Zone Teams',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        CITY => 'Madrid',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-06-10', # Fri
            DATE_END => '2016-06-12' # Sun
          } 
        }
      },
    }
  },

  'Spanish Mixed Teams',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-01-17', # Sun
            DATE_END => '2016-01-17' # Sun
          } 
        }
      },
    }
  },

  'Spanish Open Teams',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-12-12', # Fri
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-12-11', # Fri
            DATE_END => '2009-12-13' # Sun
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
            major => 'ROUND',
            DATE_START => '2010-12-10', # Fri
            DATE_END => '2010-12-12' # Sun
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
            major => 'ROUND',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-11' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-12-15', # Thu
            DATE_END => '2011-12-17' # Sat
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
            DATE_START => '2012-12-10', # Mon
            DATE_END => '2012-12-11' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-12-14', # Fri
            DATE_END => '2012-12-16' # Sun
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
            DATE_START => '2013-12-20', # Fri
            DATE_END => '2013-12-22' # Sun
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
            DATE_START => '2014-12-20', # Sat
            DATE_END => '2014-12-21' # Sun
          } 
        }
      },
    }
  },

  'Spanish Open Trials',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-06', # Fri
            DATE_END => '2016-05-08' # Sun
          } 
        }
      },
    }
  },

  'Spanish Senior Trials',
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2016' =>
      {
        CITY => 'Madrid',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-18', # Fri
            DATE_END => '2016-03-20' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_SPAIN, \%TOURNAMENTS_SPAIN, 'Spain');
}

1;
