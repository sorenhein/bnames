#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Croatia;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_CROATIA =
(
  'Pula Bridge Festival' =>
  {
    ORGANIZATION => 'CrBF',
    COUNTRY => 'Croatia',
    CITY => 'Pula',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-09-18', # Sun
        DATE_END => '2005-09-18' # Sun
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-09-25', # Mon
        DATE_END => '2006-09-25' # Mon
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-09-20', # Thu
        DATE_END => '2007-09-20' # Thu
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-09-27', # Sat
        DATE_END => '2008-09-28' # Sun
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-09-09', # Wed
        DATE_END => '2009-09-10' # Thu
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-09-08', # Wed
        DATE_END => '2010-09-09' # Thu
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-09-07', # Wed
        DATE_END => '2011-09-08' # Thu
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-09-12', # Wed
        DATE_END => '2012-09-13' # Thu
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-09-11', # Wed
        DATE_END => '2013-09-12' # Thu
      },
      '2014' =>
      {
        YEAR => 2014,
        DATE_START => '2014-09-07', # Sun
        DATE_END => '2014-09-11' # Thu
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-09-05', # Sat
        DATE_END => '2015-09-11' # Fri
      },
    }
  },

  'Samobor Bridge Meeting' =>
  {
    ORGANIZATION => 'CrBF',
    COUNTRY => 'Croatia',
    CITY => 'Samobor',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS =>
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-05-22', # Sat
        DATE_END => '2004-05-24' # Mon
      },
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-05-29', # Sun
        DATE_END => '2005-05-31' # Tue
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-05-27', # Sat
        DATE_END => '2006-05-28' # Sun
      },
    }
  }

);

my %TOURNAMENTS_CROATIA =
(
  'Atlantic Trade Bridge Cup' => 
  {
    ORGANIZATION => 'CrBF',
    COUNTRY => 'Croatia',
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
        # https://stara.pzbs.pl/opatija/OPMPOT5.html
        CITY => 'Opatija',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-05-26', # Sat
            DATE_END => '2007-05-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-27', # Sun
            DATE_END => '2007-05-27' # Sun
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-27', # Sun
            DATE_END => '2007-05-27' # Sun
          } 
        }
      },
      '2008' =>
      {
        CITY => 'Opatija',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-05-24', # Sat
            DATE_END => '2008-05-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-05-25', # Sun
            DATE_END => '2008-05-25' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-05-25', # Sun
            DATE_END => '2008-05-25' # Sun
          } 
        }
      },
    }
  },

  'Pula Mixed Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-09-07', # Sun
            DATE_END => '2014-09-07' # Sun
          },
        }
      },
      '2015' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-06', # Sun
            DATE_END => '2015-09-06' # Sun
          },
        }
      },
    }
  },

  'Pula Open BAM Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            DATE_START => '2006-09-25', # Mon
            DATE_END => '2006-09-25' # Mon
          },
        }
      },
      '2014' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-09-08', # Mon
            DATE_END => '2014-09-08' # Mon
          },
        }
      },
      '2015' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-07', # Mon
            DATE_END => '2015-09-07' # Mon
          },
        }
      },
    }
  },

  'Pula Open Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            major => 'SEGMENT',
            DATE_START => '2005-09-18', # Sun
            DATE_END => '2005-09-18' # Sun
          },
        }
      },
      '2006' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            DATE_START => '2006-09-25', # Mon
            DATE_END => '2006-09-25' # Mon
          },
        }
      },
      '2007' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2007-09-20', # Thu
            DATE_END => '2007-09-20' # Thu
          },
        }
      },
      '2008' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-09-27', # Sat
            DATE_END => '2008-09-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'MATCH',
            DATE_START => '2008-09-28', # Sun
            DATE_END => '2008-09-28' # Sun
          },
        }
      },
      '2009' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            DATE_START => '2009-09-09', # Wed
            DATE_END => '2009-09-10' # Thu
          },
        }
      },
      '2010' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-09-08', # Wed
            DATE_END => '2010-09-09' # Thu
          },
        }
      },
      '2011' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            DATE_START => '2011-09-07', # Wed
            DATE_END => '2011-09-08' # Thu
          },
        }
      },
      '2012' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            DATE_START => '2012-09-12', # Wed
            DATE_END => '2012-09-13' # Thu
          },
        }
      },
      '2013' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            DATE_START => '2013-09-11', # Wed
            DATE_END => '2013-09-12' # Thu
          },
        }
      },
      '2014' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            DATE_START => '2014-09-10', # Wed
            DATE_END => '2014-09-11' # Thu
          },
        }
      },
      '2015' =>
      {
        MEET => 'Pula Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-09-09', # Wed
            DATE_END => '2015-09-11' # Fri
          },
        }
      },
    }
  },

  'Samobor Open Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Samobor Bridge Meeting',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            DATE_START => '2004-05-22', # Sat
            DATE_END => '2004-05-24' # Mon
          },
        }
      },
      '2005' =>
      {
        MEET => 'Samobor Bridge Meeting',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-05-29', # Sun
            DATE_END => '2005-05-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-05-30', # Mon
            DATE_END => '2005-05-30' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-05-31', # Tue
            DATE_END => '2005-05-31' # Tue
          },
        }
      },
      '2006' =>
      {
        MEET => 'Samobor Bridge Meeting',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-05-27', # Sat
            DATE_END => '2006-05-28' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          },
        }
      },
    }
  },

  'Samobor Women Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Samobor Bridge Meeting',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            DATE_START => '2004-05-22', # Sat
            DATE_END => '2004-05-24' # Mon
          },
        }
      },
    }
  },
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_CROATIA, \%TOURNAMENTS_CROATIA, 'Croatia');
}

1;
