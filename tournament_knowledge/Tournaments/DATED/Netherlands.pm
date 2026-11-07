#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Netherlands;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# bridge.nl, Wayback Machine

my %MEETS_NETHERLANDS =
(
  'The Hague Bridge Experience',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    CITY => 'The Hague',
    ORIGIN => 'National',

    EDITIONS => 
    {
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-08-29', # Thu
        DATE_END => '2013-08-30' # Fri
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-08-19', # Fri
        DATE_END => '2016-08-20' # Sat
      },
    }
  },

  'VVE Beheer Bridge Week',
  {
    ORGANIZATION => 'NBB',
    CITY => 'The Hague',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',

    EDITIONS => 
    {
      '2009' =>
      {
        YEAR => 2009,
        DATE_START => '2009-08-07', # Fri
        DATE_END => '2009-08-08' # Sat
      },
    }
  }
);

my %TOURNAMENTS_NETHERLANDS =
(
  'White House Top 16',
  {
    EDITIONS =>
    {
      '2000' =>
      {
        CHAPTERS => 
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            DATE_START => '2000-03-27', # Mon
            DATE_END => '2000-03-28' # Tue
          },
        }
      },
    }
  },

  'ArboNed Team Cup',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2000' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2000-04-01', # Sat
            DATE_END => '2000-04-04' # Tue
          } 
        }
      },
      '2001' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-05-24', # Thu
            DATE_END => '2001-05-27' # Sun
          } 
        }
      },
      '2002' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2002,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2002-05-12', # Sun
            DATE_END => '2002-05-12' # Sun
          } 
        }
      },
      '2003' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2003,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2003-06-04', # Wed
            DATE_END => '2003-06-04' # Wed
          } 
        }
      },
    }
  },

  'Arnhem Interbridge Tournament',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
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
            major => 'ROUND',
            DATE_START => '2012-06-09', # Sat
            DATE_END => '2012-06-09' # Sat
          } 
        }
      },
    }
  },

  'Carrousel Cup',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Juniors',

    EDITIONS =>
    {
      '2002' =>
      {
        CITY => "'s-Hertogenbosch",
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2002,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2002-05-23', # Thu
            DATE_END => '2002-05-26' # Sun
          } 
        }
      },
      '2003' =>
      {
        # Really 2003-06-28 to 2003-07-02
        CITY => "'s-Hertogenbosch",
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2003,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2003-07-05', # Sat
            DATE_END => '2003-07-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2003,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2003-07-06', # Sun
            DATE_END => '2003-07-06' # Sun
          } 
        }
      },
    }
  },

  'Dutch Knock-Out Cup',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-05-23', # Sun
            DATE_END => '2004-05-23' # Sun
          } 
        }
      },
    }
  },

  'Dutch Meesterklasse',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1996' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1996,
            STAGE => 'Final',
            DATE_START => '1996-12-14', # Sat
            DATE_END => '1996-12-15' # Sun
          } 
        }
      },
      '1997' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1997,
            STAGE => 'Final',
            DATE_START => '1997-12-13', # Sat
            DATE_END => '1997-12-14' # Sun
          } 
        }
      },
      '1998' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '1998-12-12', # Sat
            DATE_END => '1998-12-13' # Sun
          } 
        }
      },
      '1999' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1999,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '1999-12-11', # Sat
            DATE_END => '1999-12-12' # Sun
          } 
        }
      },
      '2000' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2000-12-09', # Sat
            DATE_END => '2000-12-10' # Sun
          } 
        }
      },
      '2001' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-12-08', # Sat
            DATE_END => '2001-12-09' # Sun
          } 
        }
      },
      '2003' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2003,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2003-01-25', # Sat
            DATE_END => '2003-01-26' # Sun
          } 
        }
      },
      '2004' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-01-24', # Sat
            DATE_END => '2004-01-25' # Sun
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
            major => 'SESSION',
            DATE_START => '2005-01-29', # Sat
            DATE_END => '2005-01-30' # Sun
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
            DATE_START => '2006-01-16', # Mon
            DATE_END => '2006-01-16' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-02-07', # Tue
            DATE_END => '2006-02-07' # Tue
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
            DATE_START => '2007-02-04', # Sun
            DATE_END => '2007-02-04' # Sun
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
            major => 'SESSION',
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
            DATE_START => '2010-01-09', # Sat
            DATE_END => '2010-01-10' # Sun
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
            DATE_START => '2011-01-29', # Sat
            DATE_END => '2011-01-30' # Sun
          } 
        }
      },
      '2011-12' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2011-09-24', # Sat
            DATE_END => '2011-09-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-21', # Sat
            DATE_END => '2012-01-22' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-04', # Sat
            DATE_END => '2012-02-05' # Sun
          } 
        }
      },
      '2012-13' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-22', # Sat
            DATE_END => '2012-12-23' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-01-05', # Sat
            DATE_END => '2013-01-06' # Sun
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
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-26' # Sun
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
            DATE_START => '2015-01-24', # Sat
            DATE_END => '2015-01-25' # Sun
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
            DATE_START => '2016-01-23', # Sat
            DATE_END => '2016-01-24' # Sun
          } 
        }
      },
    }
  },

  'Forbo-Krommenie Nations Cup',
  {
    ORGANIZATION => 'NBB',
    SPONSOR => 'Forbo',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1997' =>
      {
        ORDINAL => 5,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1997,
            major => 'ROUND',
            DATE_START => '1997-02-21', # Fri
            DATE_END => '1997-02-23' # Sun
          } 
        }
      },
      '1998' =>
      {
        ORDINAL => 6,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            DATE_START => '1998-02-20', # Fri
            DATE_END => '1998-02-20' # Fri
          } 
        }
      },
      '1999' =>
      {
        ORDINAL => 7,
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Guess
            YEAR => 1999,
            STAGE => 'Final',
            major => 'MATCH',
            DATE_START => '1999-02-23', # Tue
            DATE_END => '1999-02-25' # Thu
          } 
        }
      },
      '2000' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'MATCH',
            DATE_START => '2000-02-25', # Fri
            DATE_END => '2000-02-27' # Sun
          } 
        }
      },
      '2001' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'MATCH',
            DATE_START => '2001-04-14', # Sat
            DATE_END => '2001-04-16' # Mon
          } 
        }
      },
      '2002' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2002,
            STAGE => 'Final',
            major => 'MATCH',
            DATE_START => '2002-02-22', # Fri
            DATE_END => '2002-02-24' # Sun
          } 
        }
      },
    }
  },

  'Jaap Kokkes Tournament',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
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
            major => 'ROUND',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-05' # Sat
          } 
        }
      },
    }
  },

  'Petit Grand Prix van Driene',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
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
            major => 'SESSION',
            DATE_START => '2007-05-31', # Thu
            DATE_END => '2007-05-31' # Thu
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
            DATE_START => '2011-06-11', # Sat
            DATE_END => '2011-06-11' # Sat
          } 
        }
      },
    }
  },

  'The Hague Open Teams',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    CITY => 'The Hague',
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
        MEET => 'The Hague Bridge Experience',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-08-29', # Thu
            DATE_END => '2013-08-30' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'The Hague Bridge Experience',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-08-19', # Fri
            DATE_END => '2016-08-20' # Sat
          } 
        }
      },
    }
  },

  'The Hague Pro-Am Pairs',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    CITY => 'The Hague',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'The Hague Bridge Experience',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-08-19', # Fri
            DATE_END => '2016-08-20' # Sat
          } 
        }
      },
    }
  },

  'Top Circuit Teams',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
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
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-09-11', # Tue
            DATE_END => '2007-09-11' # Tue
          } 
        }
      },
    }
  },


  'Top Circuit',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1998' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Guess
            YEAR => 1998,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '1998-06-12', # Fri
            DATE_END => '1998-06-14' # Sun
          } 
        }
      },
      '1999' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Guess
            YEAR => 1999,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1999-06-11', # Fri
            DATE_END => '1999-06-13' # Sun
          } 
        }
      },
      '2000' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            major => 'MATCH',
            DATE_START => '2000-06-10', # Sat
            DATE_END => '2000-06-12' # Mon
          } 
        }
      },
      '2002' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2002,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2002-03-30', # Sat
            DATE_END => '2002-04-01' # Mon
          } 
        }
      },
      '2009' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-07', # Sat
            DATE_END => '2009-03-08' # Sun
          } 
        }
      },
      '2010' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-03-06', # Sat
            DATE_END => '2010-03-07' # Sun
          } 
        }
      },
      '2011' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-05', # Sat
            DATE_END => '2011-03-06' # Sun
          } 
        }
      },
      '2012' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-03-03', # Sat
            DATE_END => '2012-03-04' # Sun
          } 
        }
      },
      '2013' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-02', # Sat
            DATE_END => '2013-03-03' # Sun
          } 
        }
      },
      '2014' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-01', # Sat
            DATE_END => '2014-03-02' # Sun
          } 
        }
      },
      '2015' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-07', # Sat
            DATE_END => '2015-03-08' # Sun
          } 
        }
      },
      '2016' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2016-03-05', # Sat
            DATE_END => '2016-03-06' # Sun
          } 
        }
      },
    }
  },

  'VVE Beheer Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'VVE Beheer Bridge Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-08-07', # Fri
            DATE_END => '2009-08-08' # Sat
          } 
        }
      },
    }
  },

  'White House International',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
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
            DATE_START => '2005-02-26', # Sat
            DATE_END => '2005-02-27' # Sun
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
            major => 'ROUND',
            DATE_START => '2007-02-24', # Sat
            DATE_END => '2007-02-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-02-25', # Sun
            DATE_END => '2007-02-25' # Sun
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-02-25', # Sun
            DATE_END => '2007-02-25' # Sun
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
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2008-03-02', # Sun
            DATE_END => '2008-03-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-03-03', # Mon
            DATE_END => '2008-03-03' # Mon
          },
          'C3' => 
          {
            # Unclear what this really is
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-03-04', # Tue
            DATE_END => '2008-03-04' # Tue
          } 
        }
      },
    }
  },

  'White House Juniors',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Juniors',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            DATE_START => '2006-03-26', # Sun
            DATE_END => '2006-03-26' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            DATE_START => '2006-03-26', # Sun
            DATE_END => '2006-03-26' # Sun
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            DATE_START => '2006-03-26', # Sun
            DATE_END => '2006-03-26' # Sun
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
            major => 'ROUND',
            DATE_START => '2007-03-25', # Sun
            DATE_END => '2007-03-27' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            DATE_START => '2007-03-29', # Thu
            DATE_END => '2007-03-29' # Thu
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            DATE_START => '2007-03-29', # Thu
            DATE_END => '2007-03-29' # Thu
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2008-03-19', # Wed
            DATE_END => '2008-03-19' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-03-20', # Thu
            DATE_END => '2008-03-20' # Thu
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-03-20', # Thu
            DATE_END => '2008-03-20' # Thu
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-03-09', # Mon
            DATE_END => '2009-03-12' # Thu
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-13', # Fri
            DATE_END => '2009-03-13' # Fri
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-13', # Fri
            DATE_END => '2009-03-13' # Fri
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
            DATE_START => '2010-03-22', # Mon
            DATE_END => '2010-03-25' # Thu
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-26', # Fri
            DATE_END => '2010-03-26' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-03-26', # Fri
            DATE_END => '2010-03-26' # Fri
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-03-21', # Mon
            DATE_END => '2011-03-24' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-25', # Fri
            DATE_END => '2011-03-25' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-25', # Fri
            DATE_END => '2011-03-25' # Fri
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
            DATE_START => '2012-03-26', # Mon
            DATE_END => '2012-03-28' # Wed
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-29', # Thu
            DATE_END => '2012-03-29' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-03-30', # Fri
            DATE_END => '2012-03-30' # Fri
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
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-03-18', # Mon
            DATE_END => '2013-03-20' # Wed
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-21', # Thu
            DATE_END => '2013-03-21' # Thu
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-21', # Thu
            DATE_END => '2013-03-22' # Fri
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
            major => 'ROUND',
            DATE_START => '2014-03-31', # Mon
            DATE_END => '2014-04-02' # Wed
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-04-03', # Thu
            DATE_END => '2014-04-03' # Thu
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-04', # Fri
            DATE_END => '2014-04-04' # Fri
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
            DATE_START => '2015-03-30', # Mon
            DATE_END => '2015-03-31' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-01', # Wed
            DATE_END => '2015-04-01' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-02', # Thu
            DATE_END => '2015-04-02' # Thu
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-03', # Fri
            DATE_END => '2015-04-03' # Fri
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
            DATE_START => '2016-03-21', # Mon
            DATE_END => '2016-03-22' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-03-23', # Wed
            DATE_END => '2016-03-23' # Wed
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-24', # Thu
            DATE_END => '2016-03-24' # Thu
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-24', # Thu
            DATE_END => '2016-03-24' # Thu
          },
          'C4' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-25', # Fri
            DATE_END => '2016-03-25' # Fri
          } 
        }
      },
    }
  },

  'White House Top 12',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
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
            major => 'ROUND',
            DATE_START => '2006-09-11', # Mon
            DATE_END => '2006-09-11' # Mon
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
            DATE_START => '2007-08-27', # Mon
            DATE_END => '2007-08-28' # Tue
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
            DATE_START => '2008-08-30', # Sat
            DATE_END => '2008-08-31' # Sun
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
            major => 'ROUND',
            DATE_START => '2010-08-28', # Sat
            DATE_END => '2010-08-29' # Sun
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
            major => 'ROUND',
            DATE_START => '2012-09-01', # Sat
            DATE_END => '2012-09-02' # Sun
          } 
        }
      },
    }
  },

  'White House Top 16',
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2006-02-25', # Sat
            DATE_END => '2006-02-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2006-02-26', # Sun
            DATE_END => '2006-02-26' # Sun
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2006-02-26', # Sun
            DATE_END => '2006-02-26' # Sun
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_NETHERLANDS, \%TOURNAMENTS_NETHERLANDS, 'Netherlands');
}

1;
