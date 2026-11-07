#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Africa;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_AFRICA =
(
  'African Zonal Championships' =>
  {
    ORGANIZATION => 'AfBF',
    ORIGIN => 'International',
    ZONE => 'Africa',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS => 
    {
      # https://www.bridgewebs.com/cgi-bin/bwoq/bw.cgi?club=abf&pid=display_page7
      '2005' =>
      {
        YEAR => 2005,
        CITY => 'Casablanca',
        COUNTRY => 'Morocco',
        DATE_START => '2005-05-09', # Mon
        DATE_END => '2005-05-15' # Sun
      },
      '2007' =>
      {
        YEAR => 2007,
        CITY => 'Mombassa',
        COUNTRY => 'Kenya',
        DATE_START => '2007-04-09', # Mon
        DATE_END => '2007-04-14' # Sat
      },
      '2009' =>
      {
        YEAR => 2009,
        CITY => 'Sharm el Sheikh',
        COUNTRY => 'Egypt',
        DATE_START => '2009-05-31', # Sun
        DATE_END => '2009-06-03' # Wed
      },
      '2011' =>
      {
        YEAR => 2011,
        CITY => 'Hammamet',
        COUNTRY => 'Tunisia',
        DATE_START => '2011-06-18', # Sat
        DATE_END => '2011-06-23' # Thu
      },
      '2013' =>
      {
        YEAR => 2013,
        CITY => 'Saint-Denis',
        COUNTRY => 'Réunion',
        DATE_START => '2013-05-05', # Sun
        DATE_END => '2013-05-11' # Sat
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Sharm el Sheikh',
        COUNTRY => 'Egypt',
        DATE_START => '2015-05-08', # Fri
        DATE_END => '2015-05-13' # Wed
      },
    }
  },

  'Fes Festival' =>
  {
    ORGANIZATION => 'AfBF',
    ORIGIN => 'International',
    CITY => 'Fes',
    COUNTRY => 'Morocco',
    ZONE => 'Africa',

    EDITIONS => 
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-03-12', # Fri
        DATE_END => '2010-03-17' # Wed
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-03-12', # Sat
        DATE_END => '2011-03-17' # Thu
      },
    }
  },

  'Marmara Festival' =>
  {
    ORGANIZATION => 'AfBF',
    ORIGIN => 'International',
    CITY => 'Marrakech',
    COUNTRY => 'Morocco',
    ZONE => 'Africa',

    EDITIONS => 
    {
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-01-05', # Mon
        DATE_END => '2009-01-05' # Mon
      },
    }
  },
);

my %TOURNAMENTS_AFRICA =
(
  'African Zonal Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'ROUND',
            DATE_START => '2005-05-09', # Mon
            DATE_END => '2005-05-15' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-04-14', # Sat
            DATE_END => '2007-04-14' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2009-05-31', # Sun
            DATE_END => '2009-06-03' # Wed
          } 
        }
      },
      '2011' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-06-18', # Sat
            DATE_END => '2011-06-23' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-05-05', # Sun
            DATE_END => '2013-05-11' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-08', # Fri
            DATE_END => '2015-05-13' # Wed
          } 
        }
      },
    }
  },

  'African Zonal Senior Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-04-14', # Sat
            DATE_END => '2007-04-14' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-06-18', # Sat
            DATE_END => '2011-06-23' # Thu
          } 
        }
      },
    }
  },

  'African Zonal Women Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-04-14', # Sat
            DATE_END => '2007-04-14' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2009-05-31', # Sun
            DATE_END => '2009-06-03' # Wed
          } 
        }
      },
      '2013' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-05-05', # Sun
            DATE_END => '2013-05-11' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'African Zonal Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-08', # Fri
            DATE_END => '2015-05-13' # Wed
          } 
        }
      },
    }
  },

  'Marmara Mixed Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Marmara Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-01-05', # Mon
            DATE_END => '2009-01-05' # Mon
          } 
        }
      },
    }
  },

  'Marmara Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Marmara Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-01-05', # Mon
            DATE_END => '2009-01-05' # Mon
          } 
        }
      },
    }
  },

  'Morocco Open Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Fes Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-03-12', # Fri
            DATE_END => '2010-03-14' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Fes Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-03-12', # Sat
            DATE_END => '2011-03-13' # Sun
          } 
        }
      },
    }
  },

  'Morocco Patton Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'Patton',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Fes Festival',
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
      '2011' =>
      {
        MEET => 'Fes Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-03-16', # Wed
            DATE_END => '2011-03-17' # Thu
          } 
        }
      },
    }
  },

  "Pigg's Peak All Africa" =>
  {
    ORGANIZATION => 'AfBF',
    ORIGIN => 'International',
    ZONE => 'Africa',
    CITY => 'Piggs Peak',
    COUNTRY => 'South Africa',
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
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          } 
        }
      },
    }
  },
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_AFRICA, \%TOURNAMENTS_AFRICA, 'Africa');
}

1;
