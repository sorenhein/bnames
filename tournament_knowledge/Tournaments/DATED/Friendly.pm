#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Friendly;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_FRIENDLY =
(
  'Challenge Match' =>
  {
    EDITIONS => 
    {
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-05-30', # Wed
        DATE_END => '2007-05-30' # Wed
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-06-08', # Tue
        DATE_END => '2010-06-08' # Tue
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-05-18', # Sat
        DATE_END => '2013-05-18' # Sat
      },
      '2014A' =>
      {
        YEAR => 2014,
        DATE_START => '2014-05-18', # Sun
        DATE_END => '2014-05-18' # Sun
      },
      '2014B' =>
      {
        YEAR => 2014,
        DATE_START => '2014-11-02', # Sun
        DATE_END => '2014-11-02' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-11-02', # Mon
        DATE_END => '2015-11-02' # Mon
      },
    }
  },

  'Exhibition Match' =>
  {
    EDITIONS => 
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-11-29', # Mon
        DATE_END => '2004-11-29' # Mon
      },
      '2005A' =>
      {
        YEAR => 2005,
        DATE_START => '2005-02-17', # Thu
        DATE_END => '2005-02-17' # Thu
      },
      '2005B' =>
      {
        YEAR => 2005,
        DATE_START => '2005-05-22', # Sun
        DATE_END => '2005-05-22' # Sun
      },
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-08-19', # Sun
        DATE_END => '2007-08-19' # Sun
      },
    }
  },

  'Friendly Match' =>
  {
    EDITIONS => 
    {
      '2005A' =>
      {
        YEAR => 2005,
        DATE_START => '2005-03-20', # Sun
        DATE_END => '2005-03-20' # Sun
      },
      '2005B' =>
      {
        YEAR => 2005,
        DATE_START => '2005-06-13', # Mon
        DATE_END => '2005-06-13' # Mon
      },
      '2005C' =>
      {
        YEAR => 2005,
        DATE_START => '2005-09-01', # Thu
        DATE_END => '2005-09-01' # Thu
      },
      '2006A' =>
      {
        YEAR => 2006,
        DATE_START => '2006-04-23', # Sun
        DATE_END => '2006-04-23' # Sun
      },
      '2006B' =>
      {
        YEAR => 2006,
        DATE_START => '2006-05-06', # Sat
        DATE_END => '2006-05-08' # Mon
      },
      '2006C' =>
      {
        YEAR => 2006,
        DATE_START => '2006-05-14', # Sun
        DATE_END => '2006-05-14' # Sun
      },
      '2007A' =>
      {
        YEAR => 2007,
        DATE_START => '2007-05-15', # Tue
        DATE_END => '2007-05-15' # Tue
      },
      '2007B' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-02', # Sat
        DATE_END => '2007-06-05' # Tue
      },
      '2007C' =>
      {
        YEAR => 2007,
        DATE_START => '2007-09-02', # Sun
        DATE_END => '2007-09-02' # Sun
      },
      '2008A' =>
      {
        YEAR => 2008,
        DATE_START => '2008-06-21', # Sat
        DATE_END => '2008-06-21' # Sat
      },
      '2009A' =>
      {
        YEAR => 2009,
        DATE_START => '2009-05-22', # Fri
        DATE_END => '2009-05-24' # Sun
      },
      '2010A' =>
      {
        YEAR => 2010,
        DATE_START => '2010-04-09', # Fri
        DATE_END => '2010-04-11' # Sun
      },
      '2010B' =>
      {
        YEAR => 2010,
        DATE_START => '2010-04-23', # Fri
        DATE_END => '2010-04-25' # Sun
      },
      '2010C' =>
      {
        YEAR => 2010,
        DATE_START => '2010-06-04', # Fri
        DATE_END => '2010-06-05' # Sat
      },
      '2010D' =>
      {
        YEAR => 2010,
        DATE_START => '2010-11-27', # Sat
        DATE_END => '2010-11-27' # Sat
      },
      '2011A' =>
      {
        YEAR => 2011,
        DATE_START => '2011-04-06', # Wed
        DATE_END => '2011-04-07' # Thu
      },
      '2011B' =>
      {
        YEAR => 2011,
        DATE_START => '2011-04-08', # Fri
        DATE_END => '2011-04-10' # Sun
      },
      '2011C' =>
      {
        YEAR => 2011,
        DATE_START => '2011-05-14', # Sat
        DATE_END => '2011-05-14' # Sat
      },
      '2011D' =>
      {
        YEAR => 2011,
        DATE_START => '2011-05-20', # Fri
        DATE_END => '2011-05-22' # Sun
      },
      '2011E' =>
      {
        YEAR => 2011,
        DATE_START => '2011-10-08', # Sat
        DATE_END => '2011-10-09' # Sun
      },
      '2012A' =>
      {
        YEAR => 2012,
        DATE_START => '2012-02-11', # Sat
        DATE_END => '2012-02-11' # Sat
      },
      '2012B' =>
      {
        YEAR => 2012,
        DATE_START => '2012-02-24', # Fri
        DATE_END => '2012-02-26' # Sun
      },
      '2012C' =>
      {
        YEAR => 2012,
        DATE_START => '2012-04-06', # Fri
        DATE_END => '2012-04-07' # Sat
      },
      '2012D' =>
      {
        YEAR => 2012,
        DATE_START => '2012-04-20', # Fri
        DATE_END => '2012-04-22' # Sun
      },
      '2012E' =>
      {
        YEAR => 2012,
        DATE_START => '2012-05-03', # Thu
        DATE_END => '2012-05-04' # Fri
      },
      '2012F' =>
      {
        YEAR => 2012,
        DATE_START => '2012-06-01', # Fri
        DATE_END => '2012-06-01' # Fri
      },
      '2012G' =>
      {
        YEAR => 2012,
        DATE_START => '2012-06-05', # Tue
        DATE_END => '2012-06-05' # Tue
      },
      '2012H' =>
      {
        YEAR => 2012,
        DATE_START => '2012-09-12', # Wed
        DATE_END => '2012-09-13' # Thu
      },
      '2013A' =>
      {
        YEAR => 2013,
        DATE_START => '2013-05-24', # Fri
        DATE_END => '2013-05-24' # Fri
      },
      '2013B' =>
      {
        YEAR => 2013,
        DATE_START => '2013-06-11', # Tue
        DATE_END => '2013-06-11' # Tue
      },
      '2013C' =>
      {
        YEAR => 2013,
        DATE_START => '2013-06-18', # Tue
        DATE_END => '2013-06-18' # Tue
      },
      '2013D' =>
      {
        YEAR => 2013,
        DATE_START => '2013-06-22', # Sat
        DATE_END => '2013-06-25' # Tue
      },
      '2013E' =>
      {
        YEAR => 2013,
        DATE_START => '2013-06-25', # Tue
        DATE_END => '2013-06-25' # Tue
      },
      '2013F' =>
      {
        YEAR => 2013,
        DATE_START => '2013-10-06', # Sun
        DATE_END => '2013-10-06' # Sun
      },
      '2014A' =>
      {
        YEAR => 2014,
        DATE_START => '2014-02-14', # Fri
        DATE_END => '2014-02-15' # Sat
      },
      '2014B' =>
      {
        YEAR => 2014,
        DATE_START => '2014-03-27', # Thu
        DATE_END => '2014-03-29' # Sat
      },
      '2014C' =>
      {
        YEAR => 2014,
        DATE_START => '2014-04-18', # Fri
        DATE_END => '2014-04-20' # Sun
      },
      '2014D' =>
      {
        YEAR => 2014,
        DATE_START => '2014-05-10', # Sat
        DATE_END => '2014-05-11' # Sun
      },
      '2014E' =>
      {
        YEAR => 2014,
        DATE_START => '2014-05-16', # Fri
        DATE_END => '2014-05-18' # Sun
      },
      '2014F' =>
      {
        YEAR => 2014,
        DATE_START => '2014-05-24', # Sat
        DATE_END => '2014-05-25' # Sun
      },
      '2014G' =>
      {
        YEAR => 2014,
        DATE_START => '2014-06-08', # Sun
        DATE_END => '2014-06-08' # Sun
      },
      '2015A' =>
      {
        YEAR => 2015,
        DATE_START => '2015-10-18', # Sun
        DATE_END => '2015-10-18' # Sun
      },
      '2015B' =>
      {
        YEAR => 2015,
        DATE_START => '2015-10-30', # Fri
        DATE_END => '2015-11-01' # Sun
      },
      '2015C' =>
      {
        YEAR => 2015,
        DATE_START => '2015-11-02', # Mon
        DATE_END => '2015-11-02' # Mon
      },
      '2016A' =>
      {
        YEAR => 2016,
        DATE_START => '2016-02-19', # Fri
        DATE_END => '2016-02-21' # Sun
      },
      '2016B' =>
      {
        YEAR => 2016,
        DATE_START => '2016-03-03', # Thu
        DATE_END => '2016-03-03' # Thu
      },
      '2016C' =>
      {
        YEAR => 2016,
        DATE_START => '2016-03-25', # Fri
        DATE_END => '2016-03-28' # Mon
      },
      '2016D' =>
      {
        YEAR => 2016,
        DATE_START => '2016-04-17', # Sun
        DATE_END => '2016-04-18' # Mon
      },
      '2016E' =>
      {
        YEAR => 2016,
        DATE_START => '2016-07-01', # Fri
        DATE_END => '2016-07-03' # Sun
      },
    }
  },

  'Friendly Pairs' =>
  {
    EDITIONS => 
    {
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-05', # Tue
        DATE_END => '2007-06-05' # Tue
      },
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-05-27', # Thu
        DATE_END => '2010-05-27' # Thu
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-02-13', # Fri
        DATE_END => '2015-02-15' # Sun
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-07-16', # Sat
        DATE_END => '2016-07-17' # Sun
      },
    }
  },

  'Practice Match' =>
  {
    EDITIONS => 
    {
      '2004' =>
      {
        YEAR => 2004,
        DATE_START => '2004-05-09', # Sun
        DATE_END => '2004-05-10' # Mon
      },
      '2007A' =>
      {
        YEAR => 2007,
        DATE_START => '2007-01-24', # Wed
        DATE_END => '2007-01-24' # Wed
      },
      '2007B' =>
      {
        YEAR => 2007,
        DATE_START => '2007-02-22', # Thu
        DATE_END => '2007-02-22' # Thu
      },
      '2007C' =>
      {
        YEAR => 2007,
        DATE_START => '2007-03-05', # Mon
        DATE_END => '2007-03-06' # Tue
      },
      '2007D' =>
      {
        YEAR => 2007,
        DATE_START => '2007-04-16', # Mon
        DATE_END => '2007-04-16' # Mon
      },
      '2007E' =>
      {
        YEAR => 2007,
        DATE_START => '2007-05-05', # Sat
        DATE_END => '2007-05-06' # Sun
      },
      '2007F' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-01', # Fri
        DATE_END => '2007-06-01' # Fri
      },
      '2007G' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-03', # Sun
        DATE_END => '2007-06-03' # Sun
      },
      '2007H' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-05', # Tue
        DATE_END => '2007-06-05' # Tue
      },
      '2007I' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-07', # Thu
        DATE_END => '2007-06-07' # Thu
      },
      '2007J' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-08', # Fri
        DATE_END => '2007-06-08' # Fri
      },
      '2007K' =>
      {
        YEAR => 2007,
        DATE_START => '2007-06-09', # Sat
        DATE_END => '2007-06-09' # Sat
      },
      '2007L' =>
      {
        YEAR => 2007,
        DATE_START => '2007-09-02', # Sun
        DATE_END => '2007-09-02' # Sun
      },
      '2007M' =>
      {
        YEAR => 2007,
        DATE_START => '2007-11-05', # Mon
        DATE_END => '2007-11-05' # Mon
      },
      '2007N' =>
      {
        YEAR => 2007,
        DATE_START => '2007-12-10', # Mon
        DATE_END => '2007-12-10' # Mon
      },
      '2008A' =>
      {
        YEAR => 2008,
        DATE_START => '2008-04-16', # Wed
        DATE_END => '2008-04-16' # Wed
      },
      '2008B' => 
      {
        YEAR => 2008,
        DATE_START => '2008-05-04', # Sun
        DATE_END => '2008-05-04' # Sun
      },
      '2008C' =>
      {
        YEAR => 2008,
        DATE_START => '2008-09-27', # Sat
        DATE_END => '2008-09-27' # Sat
      },
      '2009A' =>
      {
        YEAR => 2009,
        DATE_START => '2009-02-22', # Sun
        DATE_END => '2009-02-22' # Sun
      },
      '2009B' =>
      {
        YEAR => 2009,
        DATE_START => '2009-05-13', # Wed
        DATE_END => '2009-05-13' # Wed
      },
      '2010A' =>
      {
        YEAR => 2010,
        DATE_START => '2010-03-03', # Wed
        DATE_END => '2010-03-03' # Wed
      },
      '2010B' =>
      {
        YEAR => 2010,
        DATE_START => '2010-05-20', # Thu
        DATE_END => '2010-05-22' # Sat
      },
      '2011A' =>
      {
        YEAR => 2011,
        DATE_START => '2011-05-26', # Thu
        DATE_END => '2011-05-29' # Sun
      },
      '2011B' =>
      {
        YEAR => 2011,
        DATE_START => '2011-08-23', # Tue
        DATE_END => '2011-08-23' # Tue
      },
      '2011C' =>
      {
        YEAR => 2011,
        DATE_START => '2011-09-02', # Fri
        DATE_END => '2011-09-03' # Sat
      },
      '2011D' =>
      {
        YEAR => 2011,
        DATE_START => '2011-10-02', # Sun
        DATE_END => '2011-10-02' # Sun
      },
      '2012A' =>
      {
        YEAR => 2012,
        DATE_START => '2012-03-03', # Sat
        DATE_END => '2012-03-03' # Sat
      },
      '2012B' =>
      {
        YEAR => 2012,
        DATE_START => '2012-04-06', # Fri
        DATE_END => '2012-04-07' # Sat
      },
      '2012C' =>
      {
        YEAR => 2012,
        DATE_START => '2012-04-20', # Fri
        DATE_END => '2012-04-21' # Sat
      },
      '2013A' =>
      {
        YEAR => 2013,
        DATE_START => '2013-01-19', # Sat
        DATE_END => '2013-01-20' # Sun
      },
      '2013B' =>
      {
        YEAR => 2013,
        DATE_START => '2013-01-27', # Sun
        DATE_END => '2013-01-27' # Sun
      },
      '2013C' =>
      {
        YEAR => 2013,
        DATE_START => '2013-06-07', # Fri
        DATE_END => '2013-06-09' # Sun
      },
      '2014A' =>
      {
        YEAR => 2014,
        DATE_START => '2014-01-18', # Sat
        DATE_END => '2014-01-19' # Sun
      },
      '2014B' =>
      {
        YEAR => 2014,
        DATE_START => '2014-05-16', # Fri
        DATE_END => '2014-05-18' # Sun
      },
      '2014C' =>
      {
        YEAR => 2014,
        DATE_START => '2014-06-08', # Sun
        DATE_END => '2014-06-08' # Sun
      },
      '2014D' =>
      {
        YEAR => 2014,
        DATE_START => '2014-07-08', # Tue
        DATE_END => '2014-07-08' # Tue
      },
      '2014E' =>
      {
        YEAR => 2014,
        DATE_START => '2014-11-28', # Fri
        DATE_END => '2014-11-30' # Sun
      },
      '2015A' =>
      {
        YEAR => 2015,
        DATE_START => '2015-02-21', # Sat
        DATE_END => '2015-02-22' # Sun
      },
      '2015B' =>
      {
        YEAR => 2015,
        DATE_START => '2015-05-16', # Sat
        DATE_END => '2015-05-17' # Sun
      },
      '2015C' =>
      {
        YEAR => 2015,
        DATE_START => '2015-06-03', # Wed
        DATE_END => '2015-06-03' # Wed
      },
      '2015D' =>
      {
        YEAR => 2015,
        DATE_START => '2015-06-05', # Fri
        DATE_END => '2015-06-07' # Sun
      },
      '2015E' =>
      {
        YEAR => 2015,
        DATE_START => '2015-06-13', # Sat
        DATE_END => '2015-06-14' # Sun
      },
      '2015F' =>
      {
        YEAR => 2015,
        DATE_START => '2015-06-27', # Sat
        DATE_END => '2015-06-28' # Sun
      },
      '2015G' =>
      {
        YEAR => 2015,
        DATE_START => '2015-09-05', # Sat
        DATE_END => '2015-09-06' # Sun
      },
      '2016A' =>
      {
        YEAR => 2016,
        DATE_START => '2016-03-26', # Sat
        DATE_END => '2016-03-27' # Sun
      },
      '2016B' =>
      {
        YEAR => 2016,
        DATE_START => '2016-04-16', # Sat
        DATE_END => '2016-04-17' # Sun
      },
      '2016C' =>
      {
        YEAR => 2016,
        DATE_START => '2016-04-19', # Tue
        DATE_END => '2016-04-21' # Thu
      },
      '2016D' =>
      {
        YEAR => 2016,
        DATE_START => '2016-05-14', # Sat
        DATE_END => '2016-05-15' # Sun
      },
      '2016E' =>
      {
        YEAR => 2016,
        DATE_START => '2016-05-19', # Thu
        DATE_END => '2016-05-19' # Thu
      },
      '2016F' =>
      {
        YEAR => 2016,
        DATE_START => '2016-05-20', # Fri
        DATE_END => '2016-05-22' # Sun
      },
      '2016G' =>
      {
        YEAR => 2016,
        DATE_START => '2016-05-28', # Sat
        DATE_END => '2016-05-28' # Sat
      },
      '2016H' =>
      {
        YEAR => 2016,
        DATE_START => '2016-08-18', # Thu
        DATE_END => '2016-08-20' # Sat
      },
    }
  },
);

my %TOURNAMENTS_FRIENDLY =
(
  'Australia Challenge' => 
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Challenge Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SESSION',
            DATE_START => '2007-05-30', # Wed
            DATE_END => '2007-05-30' # Wed
          } 
        }
      },
    }
  },

  'Australia Practice' => 
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2013A',
        GENDER => 'Open',
        AGE => 'U21',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-01-19', # Sat
            DATE_END => '2013-01-20' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2014A',
        GENDER => 'Open',
        AGE => 'U21',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-01-18', # Sat
            DATE_END => '2014-01-19' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016G',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-05-28', # Sat
            DATE_END => '2016-05-28' # Sat
          } 
        }
      },
    }
  },

  'Bay Area Challenge' => 
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'Interuniversity',
    ZONE => 'North America',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Challenge Match',
        MEET_TAG => '2014A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-05-18', # Sun
            DATE_END => '2014-05-18' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Challenge Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SEGMENT',
            DATE_START => '2015-11-02', # Mon
            DATE_END => '2015-11-02' # Mon
          } 
        }
      },
    }
  },

  'Brighton Exhibition' => 
  {
    ORGANIZATION => 'EBU',
    COUNTRY => 'England',
    CITY => 'Brighton',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Exhibition Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SET',
            DATE_START => '2007-08-19', # Sun
            DATE_END => '2007-08-19' # Sun
          } 
        }
      },
    }
  },

  'Canada Practice' => 
  {
    ORGANIZATION => 'CBF',
    COUNTRY => 'Canada',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2015A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2015F',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-06-27', # Sat
            DATE_END => '2015-06-28' # Sun
          } 
        }
      },
    }
  },

  'Chile Practice' => 
  {
    ORGANIZATION => 'FCB',
    COUNTRY => 'Chile',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2009B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-13', # Wed
            DATE_END => '2009-05-13' # Wed
          } 
        }
      },
    }
  },

  'China Friendly' => 
  {
    ORGANIZATION => 'CCBA',
    COUNTRY => 'China',
    ORIGIN => 'National',
    ZONE => 'Asia',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2012H',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-09-12', # Wed
            DATE_END => '2012-09-13' # Thu
          } 
        }
      },
    }
  },

  'Denmark Friendly' => 
  {
    ORGANIZATION => 'DBF',
    COUNTRY => 'Denmark',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016A',
        MOVEMENT => 'Triangle',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-02-19', # Fri
            DATE_END => '2016-02-21' # Sun
          } 
        }
      },
    }
  },

  'Denmark Practice' => 
  {
    ORGANIZATION => 'DBF',
    COUNTRY => 'Denmark',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2013B',
        GENDER => 'Open',
        AGE => 'Seniors',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-01-27', # Sun
            DATE_END => '2013-01-27' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2014E',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-11-28', # Fri
            DATE_END => '2014-11-30' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2015A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-02-21', # Sat
            DATE_END => '2015-02-22' # Sun
          } 
        }
      },
    }
  },

  'France Friendly' => 
  {
    ORGANIZATION => 'FFB',
    COUNTRY => 'France',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2006A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SEGMENT',
            DATE_START => '2006-04-23', # Sun
            DATE_END => '2006-04-23' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2007A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
          } 
        }
      },
      '2010A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2010C',
        GENDER => 'Open',
        AGE => 'Seniors',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-06-04', # Fri
            DATE_END => '2010-06-04' # Fri
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2010C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Actually also 2010-06-04, but simplest way to separate.
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-06-05', # Sat
            DATE_END => '2010-06-05' # Sat
          } 
        }
      },
      '2012A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2012B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-02-24', # Fri
            DATE_END => '2012-02-26' # Sun
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2012E',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-05-03', # Thu
            DATE_END => '2012-05-04' # Fri
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2015B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SEGMENT',
            DATE_START => '2015-10-30', # Fri
            DATE_END => '2015-11-01' # Sun
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2015C',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Really same time, but easiest way to separate.
            YEAR => 2015,
            major => 'SEGMENT',
            DATE_START => '2015-11-02', # Mon
            DATE_END => '2015-11-02' # Mon
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016E',
        GENDER => 'Open',
        AGE => 'U21',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-07-01', # Fri
            DATE_END => '2016-07-03' # Sun
          } 
        }
      },
    }
  },

  'France Friendly Pairs' => 
  {
    ORGANIZATION => 'FFB',
    COUNTRY => 'France',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Friendly Pairs',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-05-27', # Thu
            DATE_END => '2010-05-27' # Thu
          } 
        }
      },
    }
  },

  'France Practice' => 
  {
    ORGANIZATION => 'FFB',
    COUNTRY => 'France',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2007A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007C',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2007-03-05', # Mon
            DATE_END => '2007-03-06' # Tue
          } 
        }
      },
      '2007B' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007F',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-06-01', # Fri
            DATE_END => '2007-06-01' # Fri
          } 
        }
      },
      '2007C' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007G',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-06-03', # Sun
            DATE_END => '2007-06-03' # Sun
          } 
        }
      },
      '2007D' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007I',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-06-07', # Thu
            DATE_END => '2007-06-07' # Thu
          } 
        }
      },
      '2007E' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007J',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-06-08', # Fri
            DATE_END => '2007-06-08' # Fri
          } 
        }
      },
      '2007F' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007K',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-06-09', # Sat
            DATE_END => '2007-06-09' # Sat
          } 
        }
      },
      '2008A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2008A',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'SEGMENT',
            DATE_START => '2008-04-16', # Wed
            DATE_END => '2008-04-16' # Wed
          } 
        }
      },
      '2008B' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2008C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-09-27', # Sat
            DATE_END => '2008-09-27' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2015G',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-09-05', # Sat
            DATE_END => '2015-09-06' # Sun
          } 
        }
      },
      '2016A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-03-26', # Sat
            DATE_END => '2016-03-27' # Sun
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-04-16', # Sat
            DATE_END => '2016-04-17' # Sun
          },
        }
      },
      '2016C' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016F',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-05-20', # Fri
            DATE_END => '2016-05-22' # Sun
          } 
        }
      },
    }
  },

  'Germany Friendly Pairs' => 
  {
    ORIGIN => 'National',
    COUNTRY => 'Germany',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'Friendly Pairs',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-02-13', # Fri
            DATE_END => '2015-02-15' # Sun
          } 
        }
      },
    }
  },

  'Goulash Practice' => 
  {
    ORIGIN => 'Transnational',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007M',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SET',
            DATE_START => '2007-11-05', # Mon
            DATE_END => '2007-11-05' # Mon
          } 
        }
      },
    }
  },

  'Hong Kong Friendly' => 
  {
    ORGANIZATION => 'HKCBA',
    COUNTRY => 'Hong Kong',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2013A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2013B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-06-11', # Tue
            DATE_END => '2013-06-11' # Tue
          },
        }
      },
      '2013B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2013C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-06-18', # Tue
            DATE_END => '2013-06-18' # Tue
          },
        }
      },
      '2013C' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2013E',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-06-25', # Tue
            DATE_END => '2013-06-25' # Tue
          } 
        }
      },
    }
  },

  'Hungary Challenge' => 
  {
    ORGANIZATION => 'MBSZ',
    COUNTRY => 'Hungary',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Challenge Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-06-08', # Tue
            DATE_END => '2010-06-08' # Tue
          } 
        }
      },
    }
  },

  'Hungary Exhibition' => 
  {
    ORGANIZATION => 'MBSZ',
    COUNTRY => 'Hungary',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Exhibition Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'SEGMENT',
            DATE_START => '2004-11-29', # Mon
            DATE_END => '2004-11-29' # Mon
          } 
        }
      },
    }
  },

  'Hungary Friendly' => 
  {
    ORGANIZATION => 'MBSZ',
    CITY => 'Budapest',
    COUNTRY => 'Hungary',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2014C',
        GENDER => 'Open',
        AGE => 'Seniors',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-04-18', # Fri
            DATE_END => '2014-04-18' # Fri
          } 
        }
      },
    }
  },

  'Hungary Practice' => 
  {
    ORGANIZATION => 'MBSZ',
    COUNTRY => 'Hungary',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2011B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-08-23', # Tue
            DATE_END => '2011-08-23' # Tue
          } 
        }
      },
    }
  },

  'Iceland Exhibition' => 
  {
    ORGANIZATION => 'IceBF',
    COUNTRY => 'Iceland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Exhibition Match',
        MEET_TAG => '2005A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            DATE_START => '2005-02-17', # Thu
            DATE_END => '2005-02-17' # Thu
          } 
        }
      },
    }
  },

  'Ireland Friendly' => 
  {
    ORGANIZATION => 'IBU',
    COUNTRY => 'Ireland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2011C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'MATCH',
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-14' # Sat
          } 
        }
      },
    }
  },

  'Italy Friendly' => 
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2014A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2014C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-04-18', # Fri
            DATE_END => '2014-04-20' # Sun
          } 
        }
      },
      '2014B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2014G',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-06-08', # Sun
            DATE_END => '2014-06-08' # Sun
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2015A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SEGMENT',
            DATE_START => '2015-10-18', # Sun
            DATE_END => '2015-10-18' # Sun
          } 
        }
      },
    }
  },

  'Italy Practice' => 
  {
    ORGANIZATION => 'FIGB',
    COUNTRY => 'Italy',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2014C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-06-08', # Sun
            DATE_END => '2014-06-08' # Sun
          } 
        }
      },
    }
  },

  'Morocco Friendly' => 
  {
    ORGANIZATION => 'FRM',
    COUNTRY => 'Morocco',
    ORIGIN => 'National',
    ZONE => 'Africa',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2014B',
        GENDER => 'Open',
        AGE => 'Open',
        CITY => 'Hammamet',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-03-27', # Thu
            DATE_END => '2014-03-29' # Sat
          } 
        }
      },
    }
  },

  'Netherlands Friendly' => 
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2005A' =>
      {
        MEET => 'Friendly Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'SESSION',
            DATE_START => '2005-03-20', # Sun
            DATE_END => '2005-03-20' # Sun
          } 
        }
      },
      '2005B' =>
      {
        MEET => 'Friendly Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'SESSION',
            DATE_START => '2005-06-13', # Mon
            DATE_END => '2005-06-13' # Mon
          } 
        }
      },
      '2005C' =>
      {
        MEET => 'Friendly Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'SET',
            DATE_START => '2005-09-01', # Thu
            DATE_END => '2005-09-01' # Thu
          } 
        }
      },
      '2006A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2006C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SEGMENT',
            DATE_START => '2006-05-14', # Sun
            DATE_END => '2006-05-14' # Sun
          } 
        }
      },
      '2007A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2007B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-06-02', # Sat
            DATE_END => '2007-06-05' # Tue
          } 
        }
      },
      '2007B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2007C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-09-02', # Sun
            DATE_END => '2007-09-02' # Sun
          } 
        }
      },
      '2008A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2008A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-06-21', # Sat
            DATE_END => '2008-06-21' # Sat
          } 
        }
      },
      '2009A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2009A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-05-22', # Fri
            DATE_END => '2009-05-24' # Sun
          } 
        }
      },
      '2010A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2010A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-04-09', # Fri
            DATE_END => '2010-04-11' # Sun
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2010B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'MATCH',
            DATE_START => '2010-04-23', # Fri
            DATE_END => '2010-04-25' # Sun
          } 
        }
      },
      '2011A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2011A',
        GENDER => 'Open',
        AGE => 'Seniors',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Really simultaneous
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-06', # Wed
            DATE_END => '2011-04-06' # Wed
          } 
        }
      },
      '2011B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2011A',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-07', # Thu
            DATE_END => '2011-04-07' # Thu
          } 
        }
      },
      '2011C' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2011B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-08', # Fri
            DATE_END => '2011-04-10' # Sun
          } 
        }
      },
      '2011D' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2011D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-20', # Fri
            DATE_END => '2011-05-22' # Sun
          } 
        }
      },
      '2012A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2012C',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-04-06', # Fri
            DATE_END => '2012-04-07' # Sat
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2012D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-04-20', # Fri
            DATE_END => '2012-04-22' # Sun
          } 
        }
      },
      '2014A' =>
      {
        MEET => 'Friendly Match',
        GENDER => 'Open',
        AGE => 'Seniors',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-02-14', # Fri
            DATE_END => '2014-02-15' # Sat
          } 
        }
      },
      '2016A' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-02-19', # Fri
            DATE_END => '2016-02-21' # Sun
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016C',
        GENDER => 'Open',
        AGE => 'Seniors',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-03-25', # Fri
            DATE_END => '2016-03-27' # Sun
          } 
        }
      },
      '2016C' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Really same time, but easier to separate like this.
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-03-28', # Mon
            DATE_END => '2016-03-28' # Mon
          } 
        }
      },
      '2016D' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016D',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-04-17', # Sun
            DATE_END => '2016-04-17' # Sun
          } 
        }
      },
      '2016E' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Really same time
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-04-18', # Mon
            DATE_END => '2016-04-18' # Mon
          } 
        }
      },
    }
  },

  'Netherlands Friendly Pairs' => 
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'International',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Friendly Pairs',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          } 
        }
      },
    }
  },

  'Netherlands Practice' => 
  {
    ORGANIZATION => 'NBB',
    COUNTRY => 'Netherlands',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2007A' =>
      {
        MEET => 'Practice Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-01-24', # Wed
            DATE_END => '2007-01-24' # Wed
          } 
        }
      },
      '2007B' =>
      {
        MEET => 'Practice Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-02-22', # Thu
            DATE_END => '2007-02-22' # Thu
          } 
        }
      },
      '2007C' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007E',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-06' # Sun
          } 
        }
      },
      '2007D' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007H',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SESSION',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          } 
        }
      },
      '2007E' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007L',
        GENDER => 'Open',
        AGE => 'U21',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-09-02', # Sun
            DATE_END => '2007-09-02' # Sun
          } 
        }
      },
      '2007F' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007N',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-12-10', # Mon
            DATE_END => '2007-12-10' # Mon
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2008B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'MATCH',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
          } 
        }
      },
      '2010A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2010B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-05-20', # Thu
            DATE_END => '2010-05-22' # Sat
          } 
        }
      },
      '2011A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2011C',
        GENDER => 'Open',
        AGE => 'Seniors',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-02', # Fri
            DATE_END => '2011-09-03' # Sat
          } 
        }
      },
      '2011B' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2011D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-10-02', # Sun
            DATE_END => '2011-10-02' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2012C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-04-20', # Fri
            DATE_END => '2012-04-21' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2013C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            minor => 'TABLE',
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-09' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2014B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-05-16', # Fri
            DATE_END => '2014-05-18' # Sun
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2015B',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-16', # Sat
            DATE_END => '2015-05-17' # Sun
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2015D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-06-05', # Fri
            DATE_END => '2015-06-07' # Sun
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016E',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-05-19', # Thu
            DATE_END => '2016-05-19' # Thu
          } 
        }
      },
    }
  },

  'Norway Practice' => 
  {
    ORGANIZATION => 'NBF',
    COUNTRY => 'Norway',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2011A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-05-26', # Thu
            DATE_END => '2011-05-29' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2012A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'HALF',
            DATE_START => '2012-03-03', # Sat
            DATE_END => '2012-03-03' # Sat
          } 
        }
      },
    }
  },

  'Online Friendly' => 
  {
    ORGANIZATION => 'BrBaOn',
    ORIGIN => 'Transnational',
    ZONE => 'World',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2013F',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SEGMENT',
            DATE_START => '2013-10-06', # Sun
            DATE_END => '2013-10-06' # Sun
          } 
        }
      },
    }
  },

  'Poland Friendly' => 
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2006B',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'SEGMENT',
            DATE_START => '2006-05-06', # Sat
            DATE_END => '2006-05-08' # Mon
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2012A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-02-11', # Sat
            DATE_END => '2012-02-11' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2013A',
        GENDER => 'Open',
        AGE => 'U26',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SEGMENT',
            DATE_START => '2013-05-24', # Fri
            DATE_END => '2013-05-24' # Fri
          } 
        }
      },
    }
  },

  'Poland Mixed Friendly Pairs' => 
  {
    ORGANIZATION => 'PZBS',
    ORIGIN => 'National',
    COUNTRY => 'Poland',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'Friendly Pairs',
        GENDER => 'Mixed',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-07-16', # Sat
            DATE_END => '2016-07-17' # Sun
          } 
        }
      },
    }
  },

  'Poland Practice' => 
  {
    ORGANIZATION => 'PYBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Practice Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'SESSION',
            DATE_START => '2004-05-09', # Sun
            DATE_END => '2004-05-10' # Mon
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2014D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            DATE_START => '2014-07-08', # Tue
            DATE_END => '2014-07-08' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2015C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SEGMENT',
            DATE_START => '2015-06-03', # Wed
            DATE_END => '2015-06-03' # Wed
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016H',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-08-18', # Thu
            DATE_END => '2016-08-20' # Sat
          } 
        }
      },
    }
  },

  'Portugal Friendly' => 
  {
    ORGANIZATION => 'FPB',
    COUNTRY => 'Portugal',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2014F',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-05-24', # Sat
            DATE_END => '2014-05-25' # Sun
          } 
        }
      },
    }
  },

  'Portugal Practice' => 
  {
    ORGANIZATION => 'FPB',
    COUNTRY => 'Portugal',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2015E',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-06-13', # Sat
            DATE_END => '2015-06-14' # Sun
          } 
        }
      },
    }
  },

  'Scotland Exhibition' => 
  {
    ORGANIZATION => 'SBU',
    COUNTRY => 'Scotland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Exhibition Match',
        MEET_TAG => '2005B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            major => 'SESSION',
            DATE_START => '2005-05-22', # Sun
            DATE_END => '2005-05-22' # Sun
          } 
        }
      },
    }
  },

  'Scotland Friendly' => 
  {
    ORGANIZATION => 'SBU',
    COUNTRY => 'Scotland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2010D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SESSION',
            DATE_START => '2010-11-27', # Sat
            DATE_END => '2010-11-27' # Sat
          } 
        }
      },
    }
  },

  'Scotland Practice' => 
  {
    ORGANIZATION => 'SBU',
    COUNTRY => 'Scotland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2009A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-02-22', # Sun
            DATE_END => '2009-02-22' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2010A',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-03-03', # Wed
            DATE_END => '2010-03-03' # Wed
          } 
        }
      },
    }
  },

  'Spain Challenge' => 
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Challenge Match',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-05-18', # Sat
            DATE_END => '2013-05-18' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Challenge Match',
        MEET_TAG => '2014B',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-11-02', # Sun
            DATE_END => '2014-11-02' # Sun
          } 
        }
      },
    }
  },

  'Spain Friendly' => 
  {
    ORGANIZATION => 'AEB',
    COUNTRY => 'Spain',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2014E',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-05-16', # Fri
            DATE_END => '2014-05-18' # Sun
          } 
        }
      },
    }
  },

  'Sweden Friendly' => 
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2011E',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2011-10-08', # Sat
            DATE_END => '2011-10-09' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2012F',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-06-01', # Fri
            DATE_END => '2012-06-01' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2014D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            DATE_START => '2014-05-10', # Sat
            DATE_END => '2014-05-11' # Sun
          } 
        }
      },
    }
  },

  'Sweden Practice' => 
  {
    ORGANIZATION => 'SBF',
    COUNTRY => 'Sweden',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2012B',
        GENDER => 'Women',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-04-06', # Fri
            DATE_END => '2012-04-07' # Sat
          } 
        }
      },
    }
  },

  'Taiwan Practice' => 
  {
    ORGANIZATION => 'CTCBA',
    COUNTRY => 'Taiwan',
    ORIGIN => 'National',
    ZONE => 'Asi',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2007D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-04-16', # Mon
            DATE_END => '2007-04-16' # Mon
          },
        }
      },
    }
  },

  'Tunisia Friendly' => 
  {
    ORGANIZATION => 'SBF',
    CITY => 'Hammamet',
    COUNTRY => 'Tunisia',
    ORIGIN => 'National',
    ZONE => 'Africa',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2013D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-06-22', # Sat
            DATE_END => '2013-06-25' # Tue
          } 
        }
      },
    }
  },

  'Turkey Practice' => 
  {
    ORGANIZATION => 'FFB',
    COUNTRY => 'Turkey',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',

    EDITIONS =>
    {
      '2016A' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016C',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-04-19', # Tue
            DATE_END => '2016-04-21' # Thu
          },
        }
      },
      '2016B' =>
      {
        MEET => 'Practice Match',
        MEET_TAG => '2016D',
        GENDER => 'Open',
        AGE => 'Open',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            DATE_START => '2016-05-14', # Sat
            DATE_END => '2016-05-15' # Sun
          } 
        }
      },
    }
  },

  'Zulawski Friendly' => 
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'Friendly Match',
        MEET_TAG => '2016B',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-03-03', # Thu
            DATE_END => '2016-03-03' # Thu
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_FRIENDLY, \%TOURNAMENTS_FRIENDLY, 'Friendly');
}

1;
