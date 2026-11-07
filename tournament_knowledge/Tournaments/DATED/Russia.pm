#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Russia;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_RUSSIA =
(
  'Moscow Sunday Times' =>
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-12-21', # Sat
        DATE_END => '2013-12-22' # Sun
      },
    }
  }
);

my %TOURNAMENTS_RUSSIA =
(
  'Moscow Sunday Times Pairs',
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
    CITY => 'Moscow',
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
        MEET => 'Moscow Sunday Times',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-12-21', # Sat
            DATE_END => '2013-12-22' # Sun
          } 
        }
      },
    }
  },

  'Moscow Sunday Times Teams',
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
    CITY => 'Moscow',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Moscow Sunday Times',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-12-21', # Sat
            DATE_END => '2013-12-22' # Sun
          } 
        }
      },
    }
  },

  'NN Cup',
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
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
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-10-22', # Mon
            DATE_END => '2007-10-22' # Mon
          } 
        }
      },
      '2008' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-11-23', # Sun
            DATE_END => '2008-11-23' # Sun
          } 
        }
      },
      '2009' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-10-10', # Sat
            DATE_END => '2009-10-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-10-11', # Sun
            DATE_END => '2009-10-11' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-10-11', # Sun
            DATE_END => '2009-10-11' # Sun
          } 
        }
      },
      '2010' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-13', # Sat
            DATE_END => '2010-11-13' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-13', # Sat
            DATE_END => '2010-11-13' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-11-14', # Sun
            DATE_END => '2010-11-14' # Sun
          } 
        }
      },
      '2011' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-08', # Sat
            DATE_END => '2011-10-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-08', # Sat
            DATE_END => '2011-10-08' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-09', # Sun
            DATE_END => '2011-10-09' # Sun
          } 
        }
      },
      '2012' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-09-29', # Sat
            DATE_END => '2012-09-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-09-29', # Sat
            DATE_END => '2012-09-29' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-09-30', # Sun
            DATE_END => '2012-09-30' # Sun
          } 
        }
      },
      '2013' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-05', # Sat
            DATE_END => '2013-10-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-06', # Sun
            DATE_END => '2013-10-06' # Sun
          } 
        }
      },
      '2014' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-10-03', # Fri
            DATE_END => '2014-10-03' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-04', # Sat
            DATE_END => '2014-10-04' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-10-04', # Sat
            DATE_END => '2014-10-04' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-10-05', # Sun
            DATE_END => '2014-10-05' # Sun
          } 
        }
      },
      '2015' =>
      {
        CITY => 'Moscow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-07', # Sat
            DATE_END => '2015-11-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-11-08', # Sun
            DATE_END => '2015-11-08' # Sun
          } 
        }
      },
      '2020' =>
      {
        # https://bridgemoscow.ru/tournaments/results/nncup20/nncup20r.htm
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2020,
            DATE_START => '2020-05-04', # Mon
            DATE_END => '2020-05-04' # Mon
          } 
        }
      },
    }
  },

  'Russian IMSA Cup',
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
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
        # http://amsr.ru/en/events/623.htm
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-04-27', # Sun
            DATE_END => '2008-04-29' # Tue
          } 
        }
      },
    }
  },

  'Russian Open Teams',
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-09-15', # Thu
            DATE_END => '2011-09-15' # Thu
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-09-11', # Thu
            DATE_END => '2014-09-13' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-14', # Sun
            DATE_END => '2014-09-14' # Sun
          } 
        }
      },
    }
  },

  'Russian Premier League',
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
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
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-09-17', # Thu
            DATE_END => '2015-09-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-09-19', # Sat
            DATE_END => '2015-09-20' # Sun
          } 
        }
      },
    }
  },

  'Slava Cup',
  {
    ORGANIZATION => 'RBL',
    COUNTRY => 'Russia',
    CITY => 'Moscow',
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
          'C0' =>
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-02-03', # Thu
            DATE_END => '2005-02-04' # Fri
          },
          'C1' =>
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-02-05', # Sat
            DATE_END => '2005-02-05' # Sat
          },
          'C2' =>
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-02-07', # Mon
            DATE_END => '2005-02-07' # Mon
          },
          'C3' =>
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-02-08', # Tue
            DATE_END => '2005-02-08' # Tue
          }
        }
      },
      '2007' =>
      {
        ORDINAL => 5,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-02-27', # Tue
            DATE_END => '2007-02-27' # Tue
          } 
        }
      },
      '2008' =>
      {
        ORDINAL => 6,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          } 
        }
      },
      '2009' =>
      {
        ORDINAL => 7,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-02-19', # Thu
            DATE_END => '2009-02-21' # Sat
          } 
        }
      },
      '2010' =>
      {
        ORDINAL => 8,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-02-20', # Sat
            DATE_END => '2010-02-22' # Mon
          } 
        }
      },
      '2011' =>
      {
        ORDINAL => 9,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-02-18', # Fri
            DATE_END => '2011-02-20' # Sun
          } 
        }
      },
      '2012' =>
      {
        ORDINAL => 10,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-02-17', # Fri
            DATE_END => '2012-02-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-18', # Sat
            DATE_END => '2012-02-18' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-18', # Sat
            DATE_END => '2012-02-19' # Sun
          } 
        }
      },
      '2013' =>
      {
        ORDINAL => 11,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-02-22', # Fri
            DATE_END => '2013-02-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-02-23', # Sat
            DATE_END => '2013-02-23' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-02-24', # Sun
            DATE_END => '2013-02-24' # Sun
          } 
        }
      },
      '2014' =>
      {
        # https://bridgemoscow.ru/tournaments/results/slava14/slava14f_t1r4.htm
        ORDINAL => 12,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-02-21', # Fri
            DATE_END => '2014-02-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-02-22', # Sat
            DATE_END => '2014-02-23' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://bridgemoscow.ru/tournaments/results/slava15/slava15r7/d17p.htm
        ORDINAL => 13,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-02-20', # Fri
            DATE_END => '2015-02-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-21', # Sat
            DATE_END => '2015-02-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-22', # Sun
            DATE_END => '2015-02-22' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://bridgemoscow.ru/tournaments/results/slava16/slava16t4h.htm
        ORDINAL => 14,
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-02-19', # Fri
            DATE_END => '2016-02-20' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-02-20', # Sat
            DATE_END => '2016-02-20' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-02-21', # Sun
            DATE_END => '2016-02-21' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_RUSSIA, \%TOURNAMENTS_RUSSIA, 'Russia');
}

1;
