#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Monaco;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_MONACO =
(
  'Monaco International Festival' =>
  {
    ORGANIZATION => 'FMB',
    ORIGIN => 'International',
    CITY => 'Monte Carlo',
    COUNTRY => 'Monaco',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-11-05', # Fri
        DATE_END => '2004-11-07' # Sun
      },
      '2007' =>
      {
        # http://www.federation-bridge.mc/article.php3?id_article=8
        # Wayback
        YEAR => 2007,
        DATE_START => '2007-11-09', # Fri
        DATE_END => '2007-11-11' # Sun
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-11-07', # Fri
        DATE_END => '2008-11-09' # Sun
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-10-09', # Fri
        DATE_END => '2009-10-11' # Sun
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-10-08', # Fri
        DATE_END => '2010-10-10' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-10-14', # Fri
        DATE_END => '2011-10-16' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-10-12', # Fri
        DATE_END => '2012-10-14' # Sun
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-10-18', # Fri
        DATE_END => '2013-10-20' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-09-05', # Fri
        DATE_END => '2014-09-07' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-10-16', # Fri
        DATE_END => '2015-10-18' # Sun
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-10-16', # Sun
        DATE_END => '2016-10-23' # Sun
      },
    }
  },
);

my %TOURNAMENTS_MONACO =
(
  'Patton de Monaco' => 
  {
    ORGANIZATION => 'FMB',
    COUNTRY => 'Monaco',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'Patton',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-11-10', # Sat
            DATE_END => '2007-11-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-11-11', # Sun
            DATE_END => '2007-11-11' # Sun
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-11-11', # Sun
            DATE_END => '2007-11-11' # Sun
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-11-11', # Sun
            DATE_END => '2007-11-11' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-11-09', # Sun
            DATE_END => '2008-11-09' # Sun
          },
        }
      },
      '2009' =>
      {
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-10-09', # Fri
            DATE_END => '2009-10-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-10-11', # Sun
            DATE_END => '2009-10-11' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-10-11', # Sun
            DATE_END => '2009-10-11' # Sun
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-10-11', # Sun
            DATE_END => '2009-10-11' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2011-10-14', # Fri
            DATE_END => '2011-10-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            minor => 'ROUND',
            DATE_START => '2011-10-15', # Sat
            DATE_END => '2011-10-15' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-16', # Sun
            DATE_END => '2011-10-16' # Sun
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-16', # Sun
            DATE_END => '2011-10-16' # Sun
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-16', # Sun
            DATE_END => '2011-10-16' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-10-12', # Fri
            DATE_END => '2012-10-13' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-14', # Sun
            DATE_END => '2012-10-14' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-14', # Sun
            DATE_END => '2012-10-14' # Sun
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Bronze',
            DATE_START => '2012-10-14', # Sun
            DATE_END => '2012-10-14' # Sun
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-10-14', # Sun
            DATE_END => '2012-10-14' # Sun
          },
        }
      },
      '2013' =>
      {
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-10-18', # Fri
            DATE_END => '2013-10-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-20', # Sun
            DATE_END => '2013-10-20' # Sun
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-20', # Sun
            DATE_END => '2013-10-20' # Sun
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-20', # Sun
            DATE_END => '2013-10-20' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-09-05', # Fri
            DATE_END => '2014-09-05' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-07', # Sun
            DATE_END => '2014-09-07' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-07', # Sun
            DATE_END => '2014-09-07' # Sun
          },
          'C3' => 
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
        MEET => 'Monaco International Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-18', # Sun
            DATE_END => '2015-10-18' # Sun
          }, 
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-18', # Sun
            DATE_END => '2015-10-18' # Sun
          }, 
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-18', # Sun
            DATE_END => '2015-10-18' # Sun
          }
        }
      },
    }
  },

  'Prince Albert II Cup' => 
  {
    ORGANIZATION => 'FMB',
    COUNTRY => 'Monaco',
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
          'C0' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            DATE_START => '2011-10-11', # Tue
            DATE_END => '2011-10-12' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-13', # Thu
            DATE_END => '2011-10-13' # Thu
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_MONACO, \%TOURNAMENTS_MONACO, 'Monaco');
}

1;
