#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Brazil;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# https://www.bridge.esp.br/historico.php, a bit spotty

my %MEETS_BRAZIL =
(
  'Brazilian Trials',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',

    EDITIONS => 
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-08-07', # Sat
        DATE_END => '2004-08-09' # Mon
      },
      '2005' =>
      {
        YEAR => 2005,
        DATE_START => '2005-03-26', # Sat
        DATE_END => '2005-03-26' # Sat
      },
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-04-16', # Sun
        DATE_END => '2006-04-17' # Mon
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-04-16', # Mon
        DATE_END => '2007-04-16' # Mon
      },
      '2008' =>
      {
        YEAR => 2008,
        DATE_START => '2008-04-02', # Wed
        DATE_END => '2008-04-02' # Wed
      },
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-04-10', # Fri
        DATE_END => '2009-04-12' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-04-23', # Sat
        DATE_END => '2011-04-23' # Sat
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-04-05', # Thu
        DATE_END => '2012-04-07' # Sat
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-03-28', # Thu
        DATE_END => '2013-03-30' # Sat
      },
      '2016' =>
      {
        # Link
        YEAR => 2016,
        DATE_START => '2016-03-21', # Mon
        DATE_END => '2016-03-27' # Sun
      },
    }
  },

  'Buzios Festival',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',

    EDITIONS => 
    {
      '2011' =>
      {
        YEAR => 2011,
        DATE_START => '2011-08-20', # Sat
        DATE_END => '2011-08-20' # Sat
      },
    }
  },
);

my %TOURNAMENTS_BRAZIL =
(
  'Brazilian Open Teams',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
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
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-09-10', # Fri
            DATE_END => '2004-09-10' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-09-11', # Sat
            DATE_END => '2004-09-11' # Sat
          } 
        }
      },
      '2005' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-09-18', # Sun
            DATE_END => '2005-09-18' # Sun
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-09-18', # Sun
            DATE_END => '2005-09-18' # Sun
          } 
        }
      },
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-09-11', # Mon
            DATE_END => '2006-09-12' # Tue
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-09-11', # Mon
            DATE_END => '2006-09-12' # Tue
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
            DATE_START => '2007-09-11', # Tue
            DATE_END => '2007-09-11' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-09-11', # Tue
            DATE_END => '2007-09-11' # Tue
          } 
        }
      },
      '2008' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
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
            major => 'SEGMENT',
            DATE_START => '2009-10-16', # Fri
            DATE_END => '2009-10-17' # Sat
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
            DATE_START => '2011-09-09', # Fri
            DATE_END => '2011-09-10' # Sat
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
            DATE_START => '2013-11-09', # Sat
            DATE_END => '2013-11-09' # Sat
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
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-11', # Thu
            DATE_END => '2014-09-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-11', # Thu
            DATE_END => '2014-09-12' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-13', # Sat
            DATE_END => '2014-09-13' # Sat
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
            DATE_START => '2015-11-06', # Fri
            DATE_END => '2015-11-07' # Sat
          } 
        }
      },
    }
  },

  'Brazilian Open Trials',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-08-07', # Sat
            DATE_END => '2004-08-07' # Sat
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-08-08', # Sun
            DATE_END => '2004-08-09' # Mon
          } 
        }
      },
      '2005' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-03-26', # Sat
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
      '2006' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-04-16', # Sun
            DATE_END => '2006-04-17' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-04-16', # Sun
            DATE_END => '2006-04-17' # Mon
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-04-10', # Fri
            DATE_END => '2009-04-10' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-04-11', # Sat
            DATE_END => '2009-04-12' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-23', # Sat
            DATE_END => '2011-04-23' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-05', # Thu
            DATE_END => '2012-04-06' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-06', # Fri
            DATE_END => '2012-04-07' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-28', # Thu
            DATE_END => '2013-03-29' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-29', # Fri
            DATE_END => '2013-03-30' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-03-21', # Mon
            DATE_END => '2016-03-23' # Wed
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-23', # Wed
            DATE_END => '2016-03-24' # Thu
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-24', # Thu
            DATE_END => '2016-03-24' # Thu
          } 
        }
      },
    }
  },

  'Brazilian Senior Trials',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
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
            major => 'SEGMENT',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-05' # Sat
          } 
        }
      },
    }
  },

  'Brazilian Women Trials',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            major => 'SEGMENT',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-05' # Sat
          } 
        }
        # Link
      },
      '2016' =>
      {
        MEET => 'Brazilian Trials',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-25', # Fri
            DATE_END => '2016-03-25' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-25', # Fri
            DATE_END => '2016-03-27' # Sun
          } 
        }
        # Link
      },
    }
  },

  'Buzios Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Buzios Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-08-20', # Sat
            DATE_END => '2011-08-20' # Sat
          } 
        }
      },
    }
  },

  'Rio de Janeiro Open Teams',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            major => 'SEGMENT',
            DATE_START => '2004-09-05', # Sun
            DATE_END => '2004-09-05' # Sun
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
            DATE_START => '2009-06-30', # Tue
            DATE_END => '2009-07-01' # Wed
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-01', # Wed
            DATE_END => '2009-07-01' # Wed
          } 
        }
      },
    }
  },

  'Rio de Janeiro Christmas Individual',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            DATE_START => '2009-12-17', # Thu
            DATE_END => '2009-12-17' # Thu
          } 
        }
      },
    }
  },

  'Roberto Taunay Cup',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
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
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-11-10', # Tue
            DATE_END => '2009-11-10' # Tue
          } 
        }
      },
    }
  },

  'Sao Paulo Cup',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-14', # Sun
            DATE_END => '2004-11-16' # Tue
          },
        }
      },
      '2005' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-12-17', # Sat
            DATE_END => '2005-12-17' # Sat
          },
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
            DATE_START => '2006-11-13', # Mon
            DATE_END => '2006-11-13' # Mon
          },
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
            DATE_START => '2007-11-25', # Sun
            DATE_END => '2007-11-25' # Sun
          },
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
            DATE_START => '2008-11-05', # Wed
            DATE_END => '2008-11-05' # Wed
          },
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
            DATE_START => '2010-10-29', # Fri
            DATE_END => '2010-10-30' # Sat
          },
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
            DATE_START => '2011-10-08', # Sat
            DATE_END => '2011-10-09' # Sun
          },
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
            DATE_START => '2012-11-10', # Sat
            DATE_END => '2012-11-11' # Sun
          },
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
            DATE_START => '2013-11-23', # Sat
            DATE_END => '2013-11-23' # Sat
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-29', # Sat
            DATE_END => '2014-11-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-06', # Sat
            DATE_END => '2014-12-06' # Sat
          } 
        }
      },
    }
  },

  'Sao Paulo State Championship',
  {
    ORGANIZATION => 'FBB',
    COUNTRY => 'Brazil',
    ORIGIN => 'National',
    ZONE => 'South America',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-06-21', # Mon
            DATE_END => '2004-06-21' # Mon
          } 
        }
      },
      '2005' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-06-27', # Mon
            DATE_END => '2005-06-27' # Mon
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
            DATE_START => '2006-07-03', # Mon
            DATE_END => '2006-07-03' # Mon
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
            DATE_START => '2007-08-27', # Mon
            DATE_END => '2007-08-27' # Mon
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
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-16' # Wed
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
            major => 'SEGMENT',
            DATE_START => '2009-06-19', # Fri
            DATE_END => '2009-06-21' # Sun
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
            DATE_START => '2010-06-18', # Fri
            DATE_END => '2010-06-20' # Sun
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
            DATE_START => '2011-06-03', # Fri
            DATE_END => '2011-06-05' # Sun
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
            DATE_START => '2012-06-23', # Sat
            DATE_END => '2012-06-24' # Sun
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
            DATE_START => '2013-05-18', # Sat
            DATE_END => '2013-05-19' # Sun
          } 
        }
      },
      '2014' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-06-11', # Wed
            DATE_END => '2014-06-15' # Sun
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
            DATE_START => '2015-06-03', # Wed
            DATE_END => '2015-06-10' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-13', # Sat
            DATE_END => '2015-06-14' # Sun
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
            DATE_START => '2016-05-22', # Sun
            DATE_END => '2016-05-22' # Sun
          } 
        }
      },
    }
  },


);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_BRAZIL, \%TOURNAMENTS_BRAZIL, 'Brazil');
}

1;
