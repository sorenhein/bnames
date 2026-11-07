#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Iceland;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_ICELAND =
(
  'Reykjavik Bridge Festival' =>
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
    CITY => 'Reykjavik',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-01-28', # Thu
        DATE_END => '2010-01-31' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-01-27', # Thu
        DATE_END => '2011-01-30' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-01-26', # Thu
        DATE_END => '2012-01-29' # Sun
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-01-25', # Sat
        DATE_END => '2014-01-26' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-01-30', # Fri
        DATE_END => '2015-02-01' # Sun
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-01-29', # Fri
        DATE_END => '2016-01-31' # Sun
      },
    }
  },
);

my %TOURNAMENTS_ICELAND =
(
  'Iceland Express Pairs' =>
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-01-28', # Thu
            DATE_END => '2010-01-29' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-01-27', # Thu
            DATE_END => '2011-01-28' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-01-26', # Thu
            DATE_END => '2012-01-27' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-01-30', # Fri
            DATE_END => '2015-01-30' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-01-29', # Fri
            DATE_END => '2016-01-29' # Fri
          } 
        }
      },
    }
  },

  'Iceland Express Teams' =>
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
    ORIGIN => 'Transnational',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-01-30', # Sat
            DATE_END => '2010-01-31' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-01-29', # Sat
            DATE_END => '2011-01-30' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-01-28', # Sat
            DATE_END => '2012-01-29' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-26' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-01-31', # Sat
            DATE_END => '2015-02-01' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Reykjavik Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-01-30', # Sat
            DATE_END => '2016-01-31' # Sun
          } 
        }
      },
    }
  },

  'Icelandair Open Pairs' =>
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
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
            major => 'SESSION',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          } 
        }
      },
    }
  },

  'Icelandair Open Teams' =>
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
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
            major => 'ROUND',
            DATE_START => '2005-02-24', # Thu
            DATE_END => '2005-02-24' # Thu
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
            major => 'ROUND',
            DATE_START => '2006-02-19', # Sun
            DATE_END => '2006-02-19' # Sun
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
            major => 'ROUND',
            DATE_START => '2007-02-26', # Mon
            DATE_END => '2007-02-26' # Mon
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
            major => 'ROUND',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
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
            DATE_START => '2013-01-24', # Thu
            DATE_END => '2013-01-27' # Sun
          } 
        }
      },
    }
  },

  'Icelandic Cup' =>
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-09-17', # Sun
            DATE_END => '2006-09-17' # Sun
          } 
        }
      },
      '2007' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-09-16', # Sun
            DATE_END => '2007-09-16' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-09-16', # Sun
            DATE_END => '2007-09-16' # Sun
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
            DATE_START => '2008-09-14', # Sun
            DATE_END => '2008-09-14' # Sun
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
            DATE_START => '2009-09-12', # Sat
            DATE_END => '2009-09-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-13', # Sun
            DATE_END => '2009-09-13' # Sun
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
            DATE_START => '2010-09-11', # Sat
            DATE_END => '2010-09-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-09-12', # Sun
            DATE_END => '2010-09-12' # Sun
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
            DATE_START => '2011-09-10', # Sat
            DATE_END => '2011-09-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-09-11', # Sun
            DATE_END => '2011-09-11' # Sun
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
            DATE_START => '2012-09-08', # Sat
            DATE_END => '2012-09-08' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-09-09', # Sun
            DATE_END => '2012-09-09' # Sun
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
            DATE_START => '2013-09-14', # Sat
            DATE_END => '2013-09-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-15', # Sun
            DATE_END => '2013-09-15' # Sun
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
            DATE_START => '2014-09-06', # Sat
            DATE_END => '2014-09-06' # Sat
          },
          'C1' => 
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
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-09-06', # Sun
            DATE_END => '2015-09-06' # Sun
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
            DATE_START => '2016-08-27', # Sat
            DATE_END => '2016-08-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-08-28', # Sun
            DATE_END => '2016-08-28' # Sun
          } 
        }
      },
    }
  },

  'Icelandic Open Teams' =>
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2005-03-25', # Fri
            DATE_END => '2005-03-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-03-26', # Sat
            DATE_END => '2005-03-26' # Sat
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
            major => 'ROUND',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
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
            major => 'ROUND',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
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
            major => 'ROUND',
            DATE_START => '2009-04-23', # Thu
            DATE_END => '2009-04-26' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-04-22', # Thu
            DATE_END => '2010-04-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-04-25', # Sun
            DATE_END => '2010-04-25' # Sun
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
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-04-29', # Fri
            DATE_END => '2011-05-01' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-02', # Mon
            DATE_END => '2011-05-02' # Mon
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-04-19', # Thu
            DATE_END => '2012-04-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-22', # Sun
            DATE_END => '2012-04-22' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-04-25', # Thu
            DATE_END => '2013-04-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-04-28', # Sun
            DATE_END => '2013-04-28' # Sun
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
            DATE_START => '2014-04-24', # Thu
            DATE_END => '2014-04-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-27', # Sun
            DATE_END => '2014-04-27' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-04-23', # Thu
            DATE_END => '2015-04-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-26', # Sun
            DATE_END => '2015-04-26' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-04-21', # Thu
            DATE_END => '2016-04-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-04-24', # Sun
            DATE_END => '2016-04-24' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_ICELAND, \%TOURNAMENTS_ICELAND, 'Iceland');
}

1;
