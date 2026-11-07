#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Czech;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Records for the first league start in late 2016:
# https://www.czechbridge.cz/tournaments


my %MEETS_CZECH =
(
);

my %TOURNAMENTS_CZECH =
(
  'Czech First League',
  {
    ORGANIZATION => 'CzFB',
    COUNTRY => 'Czech Republic',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006-07' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
          } 
        }
      },
      '2008-09' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-16', # Sat
            DATE_END => '2009-05-17' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-16', # Sat
            DATE_END => '2009-05-17' # Sun
          } 
        }
      },
      '2011-12' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-21', # Sat
            DATE_END => '2012-04-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-21', # Sat
            DATE_END => '2012-04-22' # Sun
          } 
        }
      },
      '2013-14' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-05', # Sat
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
      '2014-15' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-11', # Sat
            DATE_END => '2015-04-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-11', # Sat
            DATE_END => '2015-04-12' # Sun
          } 
        }
      },
      '2015-16' =>
      {
        # https://matrikacbs.cz/Detail-turnaje.aspx?id=1653
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-02-27', # Sat
            DATE_END => '2016-02-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-02-27', # Sat
            DATE_END => '2016-02-28' # Sun
          } 
        }
      },
    }
  },

  'Czech Open',
  {
    ORGANIZATION => 'CzFB',
    COUNTRY => 'Czech Republic',
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
            DATE_START => '2005-07-15', # Fri
            DATE_END => '2005-07-17' # Sun
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            DATE_START => '2005-07-22', # Fri
            DATE_END => '2005-07-22' # Fri
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
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
          } 
        }
      },
    }
  },

  'Grand Prix of Prague',
  {
    ORGANIZATION => 'CzFB',
    CITY => 'Prague',
    COUNTRY => 'Czech Republic',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2004-10-17', # Sun
            DATE_END => '2004-10-17' # Sun
          },
        }
      }
    }
  },
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_CZECH, \%TOURNAMENTS_CZECH, 'Czech Republic');
}

1;
