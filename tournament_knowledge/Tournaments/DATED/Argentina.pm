#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Argentina;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# There does not seem to exist a good website for Argentinian results.

my %MEETS_ARGENTINA =
(
  'Mar del Plata Festival' =>
  {
    ORGANIZATION => 'ABA',
    CITY => 'Mar del Plata',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',

    EDITIONS => 
    {
      '2002' =>
      {
        YEAR => 2002,
        DATE_START => '2002-12-07', # Sat
        DATE_END => '2002-12-15' # Sun
      },
      '2003' =>
      {
        YEAR => 2003,
        DATE_START => '2003-12-06', # Sat
        DATE_END => '2003-12-14' # Sun
      },
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-12-11', # Sun
        DATE_END => '2005-12-12' # Mon
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-12-01', # Fri
        DATE_END => '2006-12-10' # Sun
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-11-30', # Fri
        DATE_END => '2007-12-12' # Wed
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-12-01', # Mon
        DATE_END => '2008-12-07' # Sun
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-11-27', # Fri
        DATE_END => '2009-12-05' # Sat
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-12-05', # Sun
        DATE_END => '2010-12-12' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-12-02', # Fri
        DATE_END => '2011-12-11' # Sun
      },
      '2012' =>
      {
        # Listed on Great Bridge Links as one week earlier.
        YEAR => 2012,
        DATE_START => '2012-11-30', # Fri
        DATE_END => '2012-12-09' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-12-06', # Sun
        DATE_END => '2015-12-06' # Sun
      },
      '2019' =>
      {
        YEAR => 2019,
        DATE_START => '2019-12-06', # Fri
        DATE_END => '2019-12-15' # Sun
      },
      '2020' =>
      {
        YEAR => 2020, # Online
        DATE_START => '2020-11-28', # Sat
        DATE_END => '2020-12-06' # Sun
      },
      '2021' =>
      {
        YEAR => 2021,
        DATE_START => '2021-12-03', # Fri
        DATE_END => '2021-12-11' # Sat
      },
      '2022' =>
      {
        YEAR => 2022,
        DATE_START => '2022-12-02', # Fri
        DATE_END => '2022-12-10' # Sat
      },
    }
  }
);

my %TOURNAMENTS_ARGENTINA =
(
  'Argentinian Club Teams' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            DATE_START => '2011-05-08', # Sun
            DATE_END => '2011-05-08' # Sun
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
            DATE_START => '2015-06-07', # Sun
            DATE_END => '2015-06-08' # Mon
          } 
        }
      }
    }
  },

  'Argentinian Copa Republica' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Mar del Plata Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-11-29', # Sun
            DATE_END => '2009-11-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-11-29', # Sun
            DATE_END => '2009-11-29' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Mar del Plata Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-05', # Sun
            DATE_END => '2010-12-05' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Mar del Plata Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-12-06', # Sun
            DATE_END => '2015-12-06' # Sun
          },
          'C1' => 
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

  'Argentinian Flags Day Championship' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            major => 'SEGMENT',
            DATE_START => '2007-06-20', # Wed
            DATE_END => '2007-06-20' # Wed
          } 
        }
      },
    }
  },

  'Argentinian Mixed Pairs' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            STAGE => 'Session',
            DATE_START => '2016-03-20', # Sun
            DATE_END => '2016-03-20' # Sun
          } 
        }
      },
    }
  },

  'Argentinian Mixed Teams' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
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
            DATE_START => '2011-08-28', # Sun
            DATE_END => '2011-08-28' # Sun
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
            DATE_START => '2016-08-21', # Sun
            DATE_END => '2016-08-22' # Mon
          } 
        }
      },
    }
  },

  'Argentinian Open Teams' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    # Unclear whether all these are the same tournament.
    EDITIONS =>
    {
      '2007' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-02', # Sat
            DATE_END => '2009-05-02' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-03', # Sun
            DATE_END => '2009-05-03' # Sun
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
            DATE_START => '2010-04-18', # Sun
            DATE_END => '2010-04-18' # Sun
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
            DATE_START => '2011-05-28', # Sat
            DATE_END => '2011-05-29' # Sun
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
            DATE_START => '2012-05-06', # Sun
            DATE_END => '2012-05-06' # Sun
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
            DATE_START => '2013-07-28', # Sun
            DATE_END => '2013-07-28' # Sun
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
            DATE_START => '2016-05-15', # Sun
            DATE_END => '2016-05-15' # Sun
          } 
        }
      },
    }
  },

  'Argentinian Open Trials' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            DATE_START => '2006-08-12', # Sat
            DATE_END => '2006-08-12' # Sat
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
            FORM => 'Teams',
            SCORING => 'IMP',
            major => 'SEGMENT',
            DATE_START => '2007-04-23', # Mon
            DATE_END => '2007-04-23' # Mon
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
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-02-28', # Sat
            DATE_END => '2009-03-01' # Sun
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
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-08-14', # Sat
            DATE_END => '2010-08-15' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-11-06', # Sat
            DATE_END => '2010-11-06' # Sat
          },
        }
      },
      '2012' =>
      {
        # https://csbnews.org/2013-argentine-trials-the-gran-final-1st-match-rizzo-angeleri/
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-14', # Sat
            DATE_END => '2012-04-15' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            FORM => 'Pairs',
            SCORING => 'MP',
            DATE_START => '2012-10-25', # Thu
            DATE_END => '2012-10-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-03', # Sat
            DATE_END => '2012-11-04' # Sun
          },
        }
      },
    }
  },

  'Argentinian Seniors Teams' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Seniors',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        # TODO vs Argentinian Senior Trials?!
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-04-10', # Fri
            DATE_END => '2015-04-11' # Sat
          } 
        }
      },
    }
  },

  'Argentinian Senior Trials' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2007' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-05' # Sat
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
            DATE_START => '2015-04-10', # Fri
            DATE_END => '2015-04-11' # Sat
          } 
        }
      },
    }
  },

  'Argentinian Women Club Teams' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            DATE_START => '2011-07-03', # Sun
            DATE_END => '2011-07-03' # Sun
          },
        }
      },
    }
  },

  'Argentinian Women Trials' =>
  {
    GENDER => 'Women',
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
            FORM => 'Teams',
            SCORING => 'IMP',
            DATE_START => '2010-08-14', # Sat
            DATE_END => '2010-08-15' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-11-06', # Sat
            DATE_END => '2010-11-07' # Sun
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
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            DATE_START => '2011-11-06', # Sun
            DATE_END => '2011-11-07' # Mon
          },
        }
      },
      '2012' =>
      {
        # https://csbnews.org/2013-argentine-trials-the-gran-final-1st-match-rizzo-angeleri/
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            FORM => 'Teams',
            SCORING => 'IMP',
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-04', # Sun
            DATE_END => '2012-11-05' # Mon
          },
        }
      },
    }
  },

  'Copa Zanalda River Plate' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            major => 'SEGMENT',
            DATE_START => '2009-11-12', # Thu
            DATE_END => '2009-11-12' # Thu
          },
        }
      }
    }
  },

  'Mar del Plata Open Teams' =>
  {
    ORGANIZATION => 'ABA',
    COUNTRY => 'Argentina',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Mar del Plata Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2005-12-11', # Sun
            DATE_END => '2005-12-12' # Mon
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-12-11', # Sun
            DATE_END => '2005-12-12' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-12-11', # Sun
            DATE_END => '2005-12-12' # Mon
          },
        }
      },
      '2006' =>
      {
        MEET => 'Mar del Plata Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-12-10', # Sun
            DATE_END => '2006-12-10' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-12-10', # Sun
            DATE_END => '2006-12-10' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Mar del Plata Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-12', # Sun
            DATE_END => '2010-12-12' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Mar del Plata Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            DATE_START => '2012-12-09', # Sun
            DATE_END => '2012-12-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-12-09', # Sun
            DATE_END => '2012-12-09' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_ARGENTINA, \%TOURNAMENTS_ARGENTINA, 'Argentina');
}

1;
