#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Greece;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Can in principle try to find tournaments by guessing the 
# tournament number from https://hellasbridge.org/results?page=6732
# with Google Translate, but cumbersome.  At the moment there are
# about 7130 pages.

my %MEETS_GREECE =
(
  'Greek Islands Festival' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2007' =>
      {
        YEAR => 2007,
        REGION => 'Crete',
        DATE_START => '2007-09-02', # Sun
        DATE_END => '2007-09-02' # Sun
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-09-10', # Wed
        DATE_END => '2008-09-10' # Wed
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-08-17', # Mon
        DATE_END => '2009-08-22' # Sat
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-08-29', # Sun
        DATE_END => '2010-09-03' # Fri
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-08-28', # Sun
        DATE_END => '2011-09-03' # Sat
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-08-30', # Thu
        DATE_END => '2012-08-31' # Fri
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-09-06', # Fri
        DATE_END => '2013-09-07' # Sat
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-08-29', # Fri
        DATE_END => '2014-08-30' # Sat
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-09-09', # Wed
        DATE_END => '2015-09-10' # Thu
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-08-25', # Thu
        DATE_END => '2016-08-26' # Fri
      },
    }
  },
);

my %TOURNAMENTS_GREECE =
(
  'Greek Central Regional Pairs' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        # https://hellasbridge.org/results/36862
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-23', # Fri
            DATE_END => '2011-09-25' # Sun
          } 
        }
      },
    }
  },

  'Greek Islands Mixed Pairs' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            DATE_START => '2007-09-02', # Sun
            DATE_END => '2007-09-02' # Sun
          },
        }
      },
      '2008' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
        }
      },
      '2009' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-08-20', # Thu
            DATE_END => '2009-08-20' # Thu
          },
        }
      },
      '2010' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-09-01', # Wed
            DATE_END => '2010-09-01' # Wed
          },
        }
      },
      '2011' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-08-31', # Wed
            DATE_END => '2011-09-01' # Thu
          },
        }
      },
    }
  },

  'Greek Islands Open Pairs' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            DATE_START => '2007-09-02', # Sun
            DATE_END => '2007-09-02' # Sun
          },
        }
      },
      '2008' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
        }
      },
      '2009' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-08-17', # Mon
            DATE_END => '2009-08-19' # Wed
          },
        }
      },
      '2010' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-08-29', # Sun
            DATE_END => '2010-08-31' # Tue
          },
        }
      },
      '2011' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-08-28', # Sun
            DATE_END => '2011-08-30' # Tue
          },
        }
      },
    }
  },

  'Greek Islands Open Teams' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
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
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            DATE_START => '2007-09-02', # Sun
            DATE_END => '2007-09-02' # Sun
          },
        }
      },
      '2008' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
        }
      },
      '2009' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            DATE_START => '2009-08-21', # Fri
            DATE_END => '2009-08-22' # Sat
          },
        }
      },
      '2010' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-09-02', # Thu
            DATE_END => '2010-09-03' # Fri
          },
        }
      },
      '2011' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-02', # Fri
            DATE_END => '2011-09-03' # Sat
          },
        }
      },
      '2012' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-08-30', # Thu
            DATE_END => '2012-08-31' # Fri
          },
        }
      },
      '2013' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            DATE_START => '2013-09-06', # Fri
            DATE_END => '2013-09-07' # Sat
          },
        }
      },
      '2014' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-08-29', # Fri
            DATE_END => '2014-08-30' # Sat
          },
        }
      },
      '2015' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-09', # Wed
            DATE_END => '2015-09-10' # Thu
          },
        }
      },
      '2016' =>
      {
        MEET => 'Greek Islands Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            DATE_START => '2016-08-25', # Thu
            DATE_END => '2016-08-26' # Fri
          },
        }
      },
    }
  },

  'Greek Mixed Pairs' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        # https://hellasbridge.org/results/34618
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-05-20', # Fri
            DATE_END => '2011-05-22' # Sun
          } 
        }
      },
    }
  },

  'Greek Northern Regional' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
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
            DATE_START => '2006-05-01', # Mon
            DATE_END => '2006-05-02' # Tue
          } 
        }
      },
    }
  },
  
  'Greek Open Teams' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
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
        # No link
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-03-19', # Fri
            DATE_END => '2010-03-20' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            minor => 'HALF',
            DATE_START => '2010-03-21', # Sun
            DATE_END => '2010-03-21' # Sun
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            minor => 'HALF',
            DATE_START => '2010-03-21', # Sun
            DATE_END => '2010-03-21' # Sun
          } 
        }
      },
      '2011' =>
      {
        # No link
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-06', # Fri
            DATE_END => '2011-05-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-07', # Sat
            DATE_END => '2011-05-08' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2011-05-07', # Sat
            DATE_END => '2011-05-07' # Sat
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
            DATE_START => '2013-04-05', # Fri
            DATE_END => '2013-04-06' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-04-06', # Sat
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-04', # Fri
            DATE_END => '2014-04-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-05', # Sat
            DATE_END => '2014-04-06' # Sun
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
            DATE_START => '2015-04-03', # Fri
            DATE_END => '2015-04-05' # Sun
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
            DATE_START => '2016-04-08', # Fri
            DATE_END => '2016-04-10' # Sun
          } 
        }
      },
    }
  },

  'Greek Open Pair Trials' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
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
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-01-22', # Fri
            DATE_END => '2010-01-24' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            DATE_START => '2010-01-29', # Fri
              DATE_END => '2010-01-31' # Sun
          },
        }
      },
    }
  },

  'Greek Open Team Trials' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
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
            major => 'SEGMENT',
            DATE_START => '2006-02-25', # Sat
            DATE_END => '2006-02-26' # Sun
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
            major => 'SEGMENT',
            DATE_START => '2008-02-12', # Tue
            DATE_END => '2008-02-12' # Tue
          } 
        }
      },
      ,
      '2012' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-20', # Fri
            DATE_END => '2012-01-22' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-03', # Fri
            DATE_END => '2012-02-05' # Sun
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-02-07', # Fri
            DATE_END => '2014-02-09' # Sun

          },
          'C1' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-02-21', # Fri
            DATE_END => '2014-02-23' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-03-08', # Sat
            DATE_END => '2014-03-09' # Sun
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-02-12', # Fri
            DATE_END => '2016-02-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2016-02-19', # Fri
            DATE_END => '2016-02-21' # Sun
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2016-02-26', # Fri
            DATE_END => '2016-02-28' # Sun
          },
        }
      },
    }
  },

  'Greek Women Pair Trials' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Women',
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
            major => 'ROUND',
            DATE_START => '2010-01-29', # Fri
            DATE_END => '2010-01-29' # Fri
          } 
        }
      },
    }
  },

  'Greek Women Team Trials' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            DATE_START => '2012-02-03', # Fri
            DATE_END => '2012-02-05' # Sun
          } 
        }
      },
    }
  },
  
  'Thanos Capayiannides Memorial Simultaneous' =>
  {
    ORGANIZATION => 'EOM',
    COUNTRY => 'Greece',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
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
            DATE_START => '2010-03-17', # Wed
            DATE_END => '2010-03-17' # Wed
          } 
        }
      },
    }
  },
  
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_GREECE, \%TOURNAMENTS_GREECE, 'Greece');
}

1;
