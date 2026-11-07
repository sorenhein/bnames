#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Serbia;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# https://english.bridgeserbia.org/arhiva/
# https://www.bridgeserbia.org/savez/turniri/Arhiva%20rezultata/

my %MEETS_SERBIA =
(
);

my %TOURNAMENTS_SERBIA =
(
  'Serbian Cup' =>
  {
    ORGANIZATION => 'BSS',
    COUNTRY => 'Serbia',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2010/bss/kup2009.html
        ORDINAL => 4,
        CITY => 'Belgrade',

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
      '2011' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2012/bss/kup2011.html
        ORDINAL => 6,
        CITY => 'Belgrade',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            DATE_START => '2011-11-27', # Sun
            DATE_END => '2011-11-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-11-27', # Sun
            DATE_END => '2011-11-27' # Sun
          } 
        }
      },
      '2012' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2013/bss/kup2012.html
        ORDINAL => 7,
        CITY => 'Belgrade',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            DATE_START => '2012-11-25', # Sun
            DATE_END => '2012-11-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-11-25', # Sun
            DATE_END => '2012-11-25' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2014/bss/kup2013.html
        ORDINAL => 8,
        CITY => 'Belgrade',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-01', # Sun
            DATE_END => '2013-12-01' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-01', # Sun
            DATE_END => '2013-12-01' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://www.bridgeserbia.org/savez/turniri/Arhiva%20rezultata/09.%20sezona%202014%E2%88%9515/Kup%20Srbije%202015/
        ORDINAL => 9,

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-11-30', # Sun
            DATE_END => '2014-11-30' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-30', # Sun
            DATE_END => '2014-11-30' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://www.bridgeserbia.org/savez/turniri/Arhiva%20rezultata/10.%20sezona%202015%E2%88%9516/11.%20Kup%20Srbije%20Rade%20Antic/

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-29', # Sun
            DATE_END => '2015-11-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-11-29', # Sun
            DATE_END => '2015-11-29' # Sun
          } 
        }
      },
    }
  },

  'Serbian Inter-City Teams' =>
  {
    ORGANIZATION => 'BSS',
    COUNTRY => 'Serbia',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        # No link
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-16', # Sun
            DATE_END => '2012-12-16' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-16', # Sun
            DATE_END => '2012-12-16' # Sun
          } 
        }
      },
    }
  },

  'Serbian Open Teams' =>
  {
    ORGANIZATION => 'BSS',
    COUNTRY => 'Serbia',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      # https://www.bridgeserbia.org/arhiva/sezona2009/bss/zeps.html

      '2009' =>
      {
        ORDINAL => 3,
        CITY => 'Belgrade',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-07-03', # Fri
            DATE_END => '2009-07-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-05', # Sun
            DATE_END => '2009-07-05' # Sun
          } 
        }
      },
      '2010' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2010/bss/zeps2010.html
        ORDINAL => 4,

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-05-28', # Fri
            DATE_END => '2010-05-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-05-30', # Sun
            DATE_END => '2010-05-30' # Sun
          } 
        }
      },
      '2011' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2011/bss/zeps2011.html
        ORDINAL => 5,
        CITY => 'Nis',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-05-28', # Sat
            DATE_END => '2011-05-29' # Sun
          } 
        }
      },
    }
  },

  'Serbian Open Trials' =>
  {
    ORGANIZATION => 'BSS',
    COUNTRY => 'Serbia',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2012/bss/filter2012.html
        CITY => 'Belgrade',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-04', # Sat
            DATE_END => '2012-02-05' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2014/bss/filter2014.html
        CITY => 'Belgrade',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-03-08', # Sat
            DATE_END => '2014-03-09' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://www.bridgeserbia.org/savez/turniri/Arhiva%20rezultata/10.%20sezona%202015%E2%88%9516/Trajal%202016/
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-02-20', # Sat
            DATE_END => '2016-02-21' # Sun
          } 
        }
      },
    }
  },

  'Serbian Premier League' =>
  {
    ORGANIZATION => 'BSS',
    COUNTRY => 'Serbia',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2009/bss/ligasrb_2009.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            CITY => 'Vrnjacka Banja',
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-04-26', # Sun
            DATE_END => '2009-04-26' # Sun
          } 
        }
      },
      '2012' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2012/bss/ligasrb_2012.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-08', # Sun
            DATE_END => '2012-04-08' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://www.bridgeserbia.org/arhiva/sezona2014/bss/ligasrb_2014.html
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-05-10', # Sat
            DATE_END => '2014-05-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-11', # Sun
            DATE_END => '2014-05-11' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://www.bridgeserbia.org/savez/turniri/Arhiva%20rezultata/10.%20sezona%202015%E2%88%9516/X%20Liga%20Srbije/
        ORDINAL => 10,

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-19', # Sun
            DATE_END => '2015-04-19' # Sun
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
            DATE_START => '2016-04-16', # Sat
            DATE_END => '2016-04-17' # Sun
          } 
        }
      },
    }
  },

  'Vrnjacka Banja Open Teams' =>
  {
    ORGANIZATION => 'BSS',
    COUNTRY => 'Serbia',
    CITY => 'Vrnjacka Banja',
    ORIGIN => 'National',
    ZONE => 'Europe',
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
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Bronze',
            DATE_START => '2009-04-30', # Thu
            DATE_END => '2009-04-30' # Thu
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
            DATE_START => '2011-05-02', # Mon
            DATE_END => '2011-05-02' # Mon
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            DATE_START => '2011-05-02', # Mon
            DATE_END => '2011-05-02' # Mon
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            DATE_START => '2011-05-02', # Mon
            DATE_END => '2011-05-02' # Mon
          },
        }
      },
    }
  },
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_SERBIA, \%TOURNAMENTS_SERBIA, 'Serbia');
}

1;
