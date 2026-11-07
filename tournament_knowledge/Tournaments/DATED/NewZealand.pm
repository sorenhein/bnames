#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::NewZealand;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# https://www.nzbridge.co.nz/results0.html


my %MEETS_NEWZEALAND =
(
  'New Zealand National Congress' =>
  {
    ORGANIZATION => 'NZB',
    COUNTRY => 'New Zealand',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-09-24', # Sat
        DATE_END => '2005-09-25' # Sun
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-07-02', # Sun
        DATE_END => '2006-07-02' # Sun
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-09-29', # Sat
        DATE_END => '2007-09-29' # Sat
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-09-27', # Sat
        DATE_END => '2008-09-27' # Sat
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-09-24', # Thu
        DATE_END => '2009-09-25' # Fri
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-09-24', # Fri
        DATE_END => '2010-09-24' # Fri
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-07-15', # Fri
        DATE_END => '2011-07-15' # Fri
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-09-28', # Fri
        DATE_END => '2012-09-28' # Fri
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Hamilton',
        DATE_START => '2015-09-26', # Sat
        DATE_END => '2015-10-03' # Sat
      },
      '2016' =>
      {
        # http://www.tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=92
        YEAR => 2016,
        CITY => 'Hamilton',
        DATE_START => '2016-09-23', # Fri
        DATE_END => '2016-10-01' # Sat
      },
      '2017' =>
      {
        # http://www.tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=178
        YEAR => 2017,
        CITY => 'Hamilton',
        DATE_START => '2017-09-29', # Fri
        DATE_END => '2017-10-07' # Sat
      },
      '2018' =>
      {
        # http://www.tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=247
        YEAR => 2018,
        CITY => 'Hamilton',
        DATE_START => '2018-09-28', # Fri
        DATE_END => '2018-10-06' # Sat
      },
      '2019' =>
      {
        # https://tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=339
        YEAR => 2019,
        CITY => 'Hamilton',
        DATE_START => '2019-09-27', # Fri
        DATE_END => '2019-10-05' # Sat
      },
      '2023' =>
      {
        # https://tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=743
        YEAR => 2023,
        CITY => 'Mount Maunganui',
        DATE_START => '2023-09-23', # Sat
        DATE_END => '2023-09-30' # Sat
      }
    }
  },

  'New Zealand Trials' =>
  {
    ORGANIZATION => 'NZB',
    COUNTRY => 'New Zealand',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2009A' =>
      {
        YEAR => 2009,
        DATE_START => '2009-03-23', # Mon
        DATE_END => '2009-03-23' # Mon
      },
      '2009B' =>
      {
        YEAR => 2009,
        DATE_START => '2009-04-09', # Thu
        DATE_END => '2009-04-11' # Sat
      },
    }
  },
);

my %TOURNAMENTS_NEWZEALAND =
(
  'Centre Island Open Teams' => 
  {
    ORGANIZATION => 'NZB',
    COUNTRY => 'New Zealand',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        CITY => 'Wellington',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2007-03-27', # Tue
            DATE_END => '2007-03-27' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-03-27', # Tue
            DATE_END => '2007-03-27' # Tue
          } 
        }
      }
    }
  },

  'New Zealand Inter-Provincial Open Teams' => 
  {
    ORGANIZATION => 'NZB',
    COUNTRY => 'New Zealand',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-09-24', # Sat
            DATE_END => '2005-09-25' # Sun
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-07-02', # Sun
            DATE_END => '2006-07-02' # Sun
          } 
        }
      },

      '2007' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-09-29', # Sat
            DATE_END => '2007-09-29' # Sat
          } 
        }
      },

      '2008' =>
      {
        # https://www.akbc.co.nz/blog/586960
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-27', # Sat
            DATE_END => '2008-09-27' # Sat
          } 
        }
      },

      '2009' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-24', # Thu
            DATE_END => '2009-09-25' # Fri
          } 
        }
      },

      '2010' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-09-24', # Fri
            DATE_END => '2010-09-24' # Fri
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
            DATE_START => '2011-07-15', # Fri
            DATE_END => '2011-07-15' # Fri
          } 
        }
      },

      '2012' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-09-28', # Fri
            DATE_END => '2012-09-28' # Fri
          } 
        }
      },

      '2016' =>
      {
        CITY => 'Otago',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-11-21', # Mon
            DATE_END => '2016-11-24' # Thu
          } 
        }
      },

      '2017' =>
      {
        # http://www.tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=190
        CITY => 'Wellington',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-11-24', # Fri
            DATE_END => '2017-11-26' # Sun
          } 
        }
      },

      '2018' =>
      {
        # http://www.tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=266
        CITY => 'Auckland',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-11-24', # Sat
            DATE_END => '2018-11-26' # Mon
          } 
        }
      },

      '2019' =>
      {
        # https://tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=367
        CITY => 'Christchurch',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-11-23', # Sat
            DATE_END => '2019-11-24' # Sun
          } 
        }
      },

      '2020' =>
      {
        # https://tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=405
        CITY => 'Christchurch',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2020,
            DATE_START => '2020-11-21', # Sat
            DATE_END => '2020-11-23' # Mon
          } 
        }
      },

      '2021' =>
      {
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-11-19', # Fri
            DATE_END => '2021-11-21' # Sun
          } 
        }
      },

      '2022' =>
      {
        # https://tournaments.nzbridgeclub.org/resultslistbyheadevent.asp?umbid=616
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-11-18', # Fri
            DATE_END => '2022-11-20' # Sun
          } 
        }
      },

      '2023' =>
      {
        # https://www.nzbridge.co.nz/2023-interprovincial-teams.html
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-11-24', # Fri
            DATE_END => '2023-11-26' # Sun
          } 
        }
      }
    }
  },

  'New Zealand Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-02', # Fri
            DATE_END => '2015-10-02' # Fri
          }
        }
      },

      '2016' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            DATE_START => '2016-09-29', # Thu
            DATE_END => '2016-09-29' # Thu
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            DATE_START => '2016-09-30', # Fri
            DATE_END => '2016-09-30' # Fri
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            DATE_START => '2016-09-30', # Fri
            DATE_END => '2016-09-30' # Fri
          }
        }
      },

      '2017' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2017,
            STAGE => 'Quarterfinal',
            DATE_START => '2017-10-05', # Thu
            DATE_END => '2017-10-05' # Thu
          },
          'C1' => 
          {
            YEAR => 2017,
            STAGE => 'Semifinal',
            DATE_START => '2017-10-06', # Fri
            DATE_END => '2017-10-06' # Fri
          },
          'C2' => 
          {
            YEAR => 2017,
            STAGE => 'Final',
            DATE_START => '2017-10-07', # Sat
            DATE_END => '2017-10-07' # Sat
          }
        }
      },

      '2018' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2018,
            STAGE => 'Quarterfinal',
            DATE_START => '2018-10-04', # Thu
            DATE_END => '2018-10-04' # Thu
          },
          'C1' => 
          {
            YEAR => 2018,
            STAGE => 'Semifinal',
            DATE_START => '2018-10-05', # Fri
            DATE_END => '2018-10-05' # Fri
          },
          'C2' => 
          {
            YEAR => 2018,
            STAGE => 'Final',
            DATE_START => '2018-10-05', # Fri
            DATE_END => '2018-10-05' # Fri
          }
        }
      },

      '2019' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2019,
            STAGE => 'Quarterfinal',
            DATE_START => '2019-10-03', # Thu
            DATE_END => '2019-10-03' # Thu
          },
          'C1' => 
          {
            YEAR => 2019,
            STAGE => 'Semifinal',
            DATE_START => '2019-10-04', # Fri
            DATE_END => '2019-10-04' # Fri
          },
          'C2' => 
          {
            YEAR => 2019,
            STAGE => 'Final',
            DATE_START => '2019-10-04', # Fri
            DATE_END => '2019-10-04' # Fri
          }
        }
      },

      '2023' =>
      {
        MEET => 'New Zealand National Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2023,
            STAGE => 'Quarterfinal',
            DATE_START => '2023-09-28', # Thu
            DATE_END => '2023-09-28' # Thu
          },
          'C1' => 
          {
            YEAR => 2023,
            STAGE => 'Semifinal',
            DATE_START => '2023-09-28', # Thu
            DATE_END => '2023-09-29' # Fri
          },
          'C2' => 
          {
            YEAR => 2023,
            STAGE => 'Final',
            DATE_START => '2023-09-29', # Fri
            DATE_END => '2023-09-29' # Fri
          }
        }
      }
    }
  },

  'New Zealand Open Trials' => 
  {
    ORGANIZATION => 'NZB',
    COUNTRY => 'New Zealand',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'New Zealand Trials',
        MEET_TAG => '2009B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-04-09', # Thu
            DATE_END => '2009-04-11' # Sat
          } 
        }
      }
    }
  },

  'New Zealand Women Trials' => 
  {
    ORGANIZATION => 'NZB',
    COUNTRY => 'New Zealand',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009A' =>
      {
        MEET => 'New Zealand Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-03-23', # Mon
            DATE_END => '2009-03-23' # Mon
          },
        }
      },
      '2009B' =>
      {
        MEET => 'New Zealand Trials',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-04-09', # Thu
            DATE_END => '2009-04-10' # Fri
          } 
        }
      }
    }
  }
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_NEWZEALAND, \%TOURNAMENTS_NEWZEALAND, 'New Zealand');
}

1;
