#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Chile;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# TODO Results missing.
# https://fcb.cl/
# https://fcb.cl/uncategorized/seleccion-libre-2024/
# https://fcb.cl/resultados/2022-12-03l.htm
# https://fcb.cl/resultados/2022-12-10.htm
# There is an archive, but how to search?

my %MEETS_CHILE =
(
);

my %TOURNAMENTS_CHILE =
(
  'Chilean Copa de Oro' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
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
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-03-17', # Thu
            DATE_END => '2011-03-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            DATE_START => '2011-03-24', # Thu
            DATE_END => '2011-03-24' # Thu
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
            DATE_START => '2012-03-22', # Thu
            DATE_END => '2012-03-22' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            DATE_START => '2012-03-29', # Thu
            DATE_END => '2012-03-29' # Thu
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
            DATE_START => '2013-04-12', # Fri
            DATE_END => '2013-04-12' # Fri
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
            DATE_START => '2014-04-11', # Fri
            DATE_END => '2014-04-11' # Fri
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
            DATE_START => '2015-04-10', # Fri
            DATE_END => '2015-04-10' # Fri
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
            DATE_START => '2016-04-05', # Tue
            DATE_END => '2016-04-05' # Tue
          },
        }
      },
    }
  },

  'Chilean Copa de Plata' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            DATE_START => '2013-04-12', # Fri
            DATE_END => '2013-04-12' # Fri
          },
        }
      }
    }
  },

  'Chilean Cup' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2012-11-29', # Thu
            DATE_END => '2012-12-03' # Mon
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
            major => 'SESSION',
            DATE_START => '2013-08-03', # Sat
            DATE_END => '2013-08-04' # Sun
          } 
        }
      }
    }
  },

  'Chilean Invitational Teams' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
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
            major => 'ROUND',
            DATE_START => '2011-04-02', # Sat
            DATE_END => '2011-04-02' # Sat
          } 
        }
      },
    }
  },

  'Chilean Open Pairs' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            DATE_START => '2013-12-09', # Mon
            DATE_END => '2013-12-12' # Thu
          } 
        }
      }
    }
  },

  'Chilean Open Teams' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-10-19', # Sat
            DATE_END => '2013-10-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-20', # Sun
            DATE_END => '2013-10-21' # Mon
          } 
        }
      }
    }
  },

  'Chilean Open Trials' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            major => 'SEGMENT',
            DATE_START => '2010-11-20', # Sat
            DATE_END => '2010-11-21' # Sun
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
            major => 'ROUND',
            DATE_START => '2011-10-09', # Sun
            DATE_END => '2011-10-10' # Mon
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
            DATE_START => '2012-06-16', # Sat
            DATE_END => '2012-06-17' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-17', # Sun
            DATE_END => '2012-06-18' # Mon
          } 
        }
      }
    }
  },

  'Chilean Senior Teams' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

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
            DATE_START => '2013-04-13', # Sat
            DATE_END => '2013-04-13' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-04-14', # Sun
            DATE_END => '2013-04-15' # Mon
          } 
        }
      }
    }
  },

  'Chilean Women Teams' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-20', # Sun
            DATE_END => '2013-10-21' # Mon
          } 
        }
      }
    }
  },

  'Chilean Women Trials' =>
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
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
            major => 'ROUND',
            DATE_START => '2011-10-09', # Sun
            DATE_END => '2011-10-10' # Mon
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
            DATE_START => '2012-06-17', # Sun
            DATE_END => '2012-06-17' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-18', # Mon
            DATE_END => '2012-06-18' # Mon
          } 
        }
      }
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_CHILE, \%TOURNAMENTS_CHILE, 'Chile');
}

1;
