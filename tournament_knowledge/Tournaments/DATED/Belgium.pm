#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Belgium;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# No good source of old Belgian results.


my %MEETS_BELGIUM =
(
);

my %TOURNAMENTS_BELGIUM =
(
  'Belgian Open Pairs',
  {
    ORGANIZATION => 'RBBF',
    COUNTRY => 'Belgium',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
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
            major => 'SESSION',
            DATE_START => '2009-05-16', # Sat
            DATE_END => '2009-05-16' # Sat
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
            major => 'SESSION',
            DATE_START => '2011-05-21', # Sat
            DATE_END => '2011-05-21' # Sat
          } 
        }
      },
    }
  },

  'Belgian Open Teams',
  {
    ORGANIZATION => 'RBBF',
    COUNTRY => 'Belgium',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-02-11', # Sun
            DATE_END => '2007-02-11' # Sun
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
            major => 'SEGMENT',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
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
            DATE_START => '2010-02-07', # Sun
            DATE_END => '2010-02-07' # Sun
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
            DATE_START => '2011-02-13', # Sun
            DATE_END => '2011-02-13' # Sun
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
            DATE_START => '2012-01-15', # Sun
            DATE_END => '2012-01-15' # Sun
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
            DATE_START => '2013-01-13', # Sun
            DATE_END => '2013-01-13' # Sun
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
            DATE_START => '2016-01-31', # Sun
            DATE_END => '2016-01-31' # Sun
          } 
        }
      },
    }
  },

  'Belgian Open Trials',
  {
    ORGANIZATION => 'RBBF',
    COUNTRY => 'Belgium',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-12', # Sun
            DATE_END => '2012-02-12' # Sun
          } 
        }
      },
    }
  },

  'Belisol Invitational Pairs',
  {
    ORGANIZATION => 'RBBF',
    COUNTRY => 'Belgium',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_BELGIUM, \%TOURNAMENTS_BELGIUM, 'Belgium');
}

1;
