#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::USA;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_USA =
(
  'North American Bridge Championship' =>
  {
    # https://www.acbl.org/past-nabcs/

    ORGANIZATION => 'ACBL',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    ZONE => 'North America',

    EDITIONS => 
    {
      '1996A' =>
      {
        ORDINAL => 39,
        YEAR => 1996,
        CITY => 'Philadelphia',
        DATE_START => '1996-03-01', # Fri
        DATE_END => '1996-03-10' # Sun
      },
      '1996B' =>
      {
        ORDINAL => 68,
        YEAR => 1996,
        CITY => 'Miami Beach',
        DATE_START => '1996-08-01', # Thu
        DATE_END => '1996-08-11' # Sun
      },
      '1996C' =>
      {
        ORDINAL => 70,
        YEAR => 1996,
        CITY => 'San Francisco',
        DATE_START => '1996-11-21', # Thu
        DATE_END => '1996-12-01' # Sun
      },
      '1997A' =>
      {
        ORDINAL => 40,
        YEAR => 1997,
        CITY => 'Dallas',
        DATE_START => '1997-03-06', # Thu
        DATE_END => '1997-03-16' # Sun
      },
      '1997B' =>
      {
        ORDINAL => 69,
        YEAR => 1997,
        CITY => 'Albuquerque',
        DATE_START => '1997-07-24', # Thu
        DATE_END => '1997-08-03' # Sun
      },
      '1997C' =>
      {
        ORDINAL => 71,
        YEAR => 1997,
        CITY => 'St. Louis',
        DATE_START => '1997-11-20', # Thu
        DATE_END => '1997-11-30' # Sun
      },
      '1998A' =>
      {
        ORDINAL => 41,
        YEAR => 1998,
        CITY => 'Reno',
        DATE_START => '1998-03-19', # Thu
        DATE_END => '1998-03-29' # Sun
      },
      '1998B' =>
      {
        ORDINAL => 70,
        YEAR => 1998,
        CITY => 'Chicago',
        DATE_START => '1998-07-23', # Thu
        DATE_END => '1998-08-02' # Sun
      },
      '1998C' =>
      {
        ORDINAL => 72,
        YEAR => 1998,
        CITY => 'Orlando',
        DATE_START => '1998-11-19', # Thu
        DATE_END => '1998-11-29' # Sun
      },
      '1999A' =>
      {
        ORDINAL => 42,
        YEAR => 1999,
        CITY => 'Vancouver',
        DATE_START => '1999-03-18', # Thu
        DATE_END => '1999-03-28' # Sun
      },
      '1999B' =>
      {
        ORDINAL => 71,
        YEAR => 1999,
        CITY => 'San Antonio',
        DATE_START => '1999-07-21', # Wed
        DATE_END => '1999-07-31' # Sat
      },
      '1999C' =>
      {
        ORDINAL => 73,
        YEAR => 1999,
        CITY => 'Boston',
        DATE_START => '1999-11-18', # Thu
        DATE_END => '1999-11-18' # Thu
      },
      '2000A' =>
      {
        ORDINAL => 43,
        YEAR => 2000,
        CITY => 'Cincinnati',
        DATE_START => '2000-03-19', # Sun
        DATE_END => '2000-03-29' # Wed
      },
      '2000B' =>
      {
        ORDINAL => 72,
        YEAR => 2000,
        CITY => 'Anaheim',
        DATE_START => '2000-08-10', # Thu
        DATE_END => '2000-08-20' # Sun
      },
      '2000C' =>
      {
        ORDINAL => 74,
        YEAR => 2000,
        CITY => 'Birmingham',
        DATE_START => '2000-11-16', # Thu
        DATE_END => '2000-11-26' # Sun
      },
      '2001A' =>
      {
        ORDINAL => 44,
        YEAR => 2001,
        CITY => 'Kansas City',
        DATE_START => '2001-03-15', # Thu
        DATE_END => '2001-03-25' # Sun
      },
      '2001B' =>
      {
        ORDINAL => 73,
        YEAR => 2001,
        CITY => 'Toronto',
        DATE_START => '2001-07-19', # Thu
        DATE_END => '2001-07-29' # Sun
      },
      '2001C' =>
      {
        ORDINAL => 75,
        YEAR => 2001,
        CITY => 'Las Vegas',
        DATE_START => '2001-11-18', # Sun
        DATE_END => '2001-11-27' # Tue
      },
      '2002A' =>
      {
        ORDINAL => 45,
        YEAR => 2002,
        CITY => 'Houston',
        DATE_START => '2002-03-07', # Thu
        DATE_END => '2002-03-17' # Sun
      },
      '2002B' =>
      {
        ORDINAL => 74,
        YEAR => 2002,
        CITY => 'Washington, DC',
        DATE_START => '2002-07-18', # Thu
        DATE_END => '2002-07-28' # Sun
      },
      '2002C' =>
      {
        ORDINAL => 76,
        YEAR => 2002,
        CITY => 'Phoenix',
        DATE_START => '2002-11-28', # Thu
        DATE_END => '2002-12-08' # Sun
      },
      '2003A' =>
      {
        ORDINAL => 46,
        YEAR => 2003,
        CITY => 'Philadelphia',
        DATE_START => '2003-03-06', # Thu
        DATE_END => '2003-03-16' # Sun
      },
      '2003B' =>
      {
        ORDINAL => 75,
        YEAR => 2003,
        CITY => 'Long Beach',
        DATE_START => '2003-07-17', # Thu
        DATE_END => '2003-07-27' # Sun
      },
      '2003C' =>
      {
        ORDINAL => 77,
        YEAR => 2003,
        CITY => 'New Orleans',
        DATE_START => '2003-11-20', # Thu
        DATE_END => '2003-11-30' # Sun
      },
      '2004A' =>
      {
        ORDINAL => 47,
        YEAR => 2004,
        CITY => 'Reno',
        DATE_START => '2004-03-18', # Thu
        DATE_END => '2004-03-28' # Sun
      },
      '2004B' =>
      {
        ORDINAL => 76,
        YEAR => 2004,
        CITY => 'New York City',
        DATE_START => '2004-07-21', # Wed
        DATE_END => '2004-07-31' # Sat
      },
      '2004C' =>
      {
        ORDINAL => 78,
        YEAR => 2004,
        CITY => 'Orlando',
        DATE_START => '2004-11-19', # Fri
        DATE_END => '2004-11-29' # Mon
      },
      '2005A' =>
      {
        ORDINAL => 48,
        YEAR => 2005,
        CITY => 'Pittsburgh',
        DATE_START => '2005-03-10', # Thu
        DATE_END => '2005-03-21' # Mon
      },
      '2005B' =>
      {
        ORDINAL => 77,
        YEAR => 2005,
        CITY => 'Atlanta',
        DATE_START => '2005-07-21', # Thu
        DATE_END => '2005-07-31' # Sun
      },
      '2005C' =>
      {
        ORDINAL => 79,
        YEAR => 2005,
        CITY => 'Denver',
        DATE_START => '2005-11-21', # Mon
        DATE_END => '2005-11-31' # Thu
      },
      '2006A' =>
      {
        ORDINAL => 49,
        YEAR => 2006,
        CITY => 'Dallas',
        DATE_START => '2006-03-30', # Thu
        DATE_END => '2006-04-09' # Sun
      },
      '2006B' =>
      {
        ORDINAL => 78,
        YEAR => 2006,
        CITY => 'Chicago',
        DATE_START => '2006-07-13', # Thu
        DATE_END => '2006-07-23' # Sun
      },
      '2006C' =>
      {
        ORDINAL => 79, # Should be 80?
        YEAR => 2006, 
        CITY => 'Honolulu',
        DATE_START => '2006-11-16', # Thu
        DATE_END => '2006-11-27' # Mon
      },
      '2007A' =>
      {
        ORDINAL => 50,
        YEAR => 2007,
        CITY => 'St. Louis',
        DATE_START => '2007-03-08', # Thu
        DATE_END => '2007-03-18' # Sun
      },
      '2007B' =>
      {
        ORDINAL => 79,
        YEAR => 2007,
        CITY => 'Nashville',
        DATE_START => '2007-07-19', # Thu
        DATE_END => '2007-07-29' # Sun
      },
      '2007C' =>
      {
        ORDINAL => 81,
        YEAR => 2007,
        CITY => 'San Francisco',
        DATE_START => '2007-11-22', # Thu
        DATE_END => '2007-12-02' # Sun
      },
      '2008A' =>
      {
        ORDINAL => 51,
        YEAR => 2008,
        CITY => 'Detroit',
        DATE_START => '2008-03-06', # Thu
        DATE_END => '2008-03-16' # Sun
      },
      '2008B' =>
      {
        ORDINAL => 80,
        YEAR => 2008,
        CITY => 'Las Vegas',
        DATE_START => '2008-07-16', # Wed
        DATE_END => '2008-07-27' # Sun
      },
      '2008C' =>
      {
        ORDINAL => 81,
        YEAR => 2008,
        CITY => 'Boston',
        DATE_START => '2008-11-20', # Thu
        DATE_END => '2008-11-30' # Sun
      },
      '2009A' =>
      {
        ORDINAL => 52,
        YEAR => 2009,
        CITY => 'Houston',
        DATE_START => '2009-03-12', # Thu
        DATE_END => '2009-03-22' # Sun
      },
      '2009B' =>
      {
        ORDINAL => 81,
        YEAR => 2009,
        CITY => 'Washington DC',
        DATE_START => '2009-07-22', # Wed
        DATE_END => '2009-08-02' # Sun
      },
      '2009C' =>
      {
        ORDINAL => 83,
        YEAR => 2009,
        CITY => 'San Diego',
        DATE_START => '2009-11-26', # Thu
        DATE_END => '2009-12-06' # Sun
      },
      '2010A' =>
      {
        ORDINAL => 53,
        YEAR => 2010,
        CITY => 'Reno',
        DATE_START => '2010-03-11', # Thu
        DATE_END => '2010-03-22' # Mon
      },
      '2010B' =>
      {
        ORDINAL => 82,
        YEAR => 2010,
        CITY => 'New Orleans',
        DATE_START => '2010-07-22', # Thu
        DATE_END => '2010-08-01' # Sun
      },
      '2010C' =>
      {
        ORDINAL => 83,
        YEAR => 2010,
        CITY => 'Orlando',
        DATE_START => '2010-11-25', # Thu
        DATE_END => '2010-12-05' # Sun
      },
      '2011A' =>
      {
        ORDINAL => 54,
        YEAR => 2011,
        CITY => 'Louisville',
        DATE_START => '2011-03-10', # Thu
        DATE_END => '2011-03-20' # Sun
      },
      '2011B' =>
      {
        ORDINAL => 83,
        YEAR => 2011,
        CITY => 'Toronto',
        DATE_START => '2011-07-21', # Thu
        DATE_END => '2011-07-31' # Sun
      },
      '2011C' =>
      {
        ORDINAL => 85,
        YEAR => 2011,
        CITY => 'Seattle',
        DATE_START => '2011-11-24', # Thu
        DATE_END => '2011-12-04' # Sun
      },
      '2012A' =>
      {
        ORDINAL => 55,
        YEAR => 2012,
        CITY => 'Memphis',
        DATE_START => '2012-03-15', # Thu
        DATE_END => '2012-03-25' # Sun
      },
      '2012B' =>
      {
        ORDINAL => 84,
        YEAR => 2012,
        CITY => 'Philadelphia',
        DATE_START => '2012-07-12', # Thu
        DATE_END => '2012-07-23' # Mon
      },
      '2012C' =>
      {
        ORDINAL => 85,
        YEAR => 2012,
        CITY => 'New Orleans',
        DATE_START => '2012-11-22', # Thu
        DATE_END => '2012-12-03' # Mon
      },
      '2013A' =>
      {
        ORDINAL => 56,
        YEAR => 2013,
        CITY => 'St. Louis',
        DATE_START => '2013-03-14', # Thu
        DATE_END => '2013-03-25' # Mon
      },
      '2013B' =>
      {
        ORDINAL => 85,
        YEAR => 2013,
        CITY => 'Atlanta',
        DATE_START => '2013-08-01', # Thu
        DATE_END => '2013-08-12' # Mon
      },
      '2013C' =>
      {
        ORDINAL => 87,
        YEAR => 2013,
        CITY => 'Phoenix',
        DATE_START => '2013-11-28', # Thu
        DATE_END => '2013-12-09' # Mon
      },
      '2014A' =>
      {
        ORDINAL => 57,
        YEAR => 2014,
        CITY => 'Dallas',
        DATE_START => '2014-03-19', # Wed
        DATE_END => '2014-03-31' # Mon
      },
      '2014B' =>
      {
        ORDINAL => 86,
        YEAR => 2014,
        CITY => 'Las Vegas',
        DATE_START => '2014-07-17', # Thu
        DATE_END => '2014-07-28' # Mon
      },
      '2014C' =>
      {
        ORDINAL => 87,
        YEAR => 2014,
        CITY => 'Providence',
        DATE_START => '2014-11-27', # Thu
        DATE_END => '2014-12-08' # Mon
      },
      '2015A' =>
      {
        ORDINAL => 58,
        YEAR => 2015,
        CITY => 'New Orleans',
        DATE_START => '2015-03-12', # Thu
        DATE_END => '2015-03-23' # Mon
      },
      '2015B' =>
      {
        ORDINAL => 87,
        YEAR => 2015,
        CITY => 'Chicago',
        DATE_START => '2015-08-06', # Thu
        DATE_END => '2015-08-17' # Mon
      },
      '2015C' =>
      {
        ORDINAL => 88,
        YEAR => 2015,
        CITY => 'Denver',
        DATE_START => '2015-11-26', # Thu
        DATE_END => '2015-12-07' # Mon
      },
      '2016A' =>
      {
        ORDINAL => 59,
        YEAR => 2016,
        CITY => 'Reno',
        DATE_START => '2016-03-09', # Wed
        DATE_END => '2016-03-21' # Mon
      },
      '2016B' =>
      {
        ORDINAL => 88,
        YEAR => 2016,
        CITY => 'Washington DC',
        DATE_START => '2016-07-20', # Wed
        DATE_END => '2016-08-03' # Wed
      },
      '2016C' =>
      {
        ORDINAL => 89,
        YEAR => 2016,
        CITY => 'Orlando',
        DATE_START => '2016-11-24', # Thu
        DATE_END => '2016-12-04' # Sun
      },
      '2017A' =>
      {
        ORDINAL => 60,
        YEAR => 2017,
        CITY => 'Kansas City',
        DATE_START => '2017-03-08', # Wed
        DATE_END => '2017-03-19' # Sun
      },
      '2017B' =>
      {
        ORDINAL => 89,
        YEAR => 2017,
        CITY => 'Toronto',
        DATE_START => '2017-07-19', # Wed
        DATE_END => '2017-07-30' # Sun
      },
      '2017C' =>
      {
        ORDINAL => 90,
        YEAR => 2017,
        CITY => 'San Diego',
        DATE_START => '2017-11-23', # Thu
        DATE_END => '2017-12-03' # Sun
      },
      '2018A' =>
      {
        ORDINAL => 61,
        YEAR => 2018,
        CITY => 'Philadelphia',
        DATE_START => '2018-03-07', # Wed
        DATE_END => '2018-03-18' # Sun
      },
      '2018B' =>
      {
        ORDINAL => 90,
        YEAR => 2018,
        CITY => 'Atlanta',
        DATE_START => '2018-07-25', # Wed
        DATE_END => '2018-08-05' # Sun
      },
      '2018C' =>
      {
        ORDINAL => 91,
        YEAR => 2018,
        CITY => 'Honolulu',
        DATE_START => '2018-11-22', # Thu
        DATE_END => '2018-12-02' # Sun
      },
      '2019A' =>
      {
        ORDINAL => 61, # Should be 62?
        YEAR => 2019,
        CITY => 'Memphis',
        DATE_START => '2019-03-20', # Wed
        DATE_END => '2019-03-31' # Sun
      },
      '2019B' =>
      {
        ORDINAL => 91,
        YEAR => 2019,
        CITY => 'Las Vegas',
        DATE_START => '2019-07-17', # Wed
        DATE_END => '2019-07-28' # Sun
      },
      '2019C' =>
      {
        ORDINAL => 92,
        YEAR => 2019,
        CITY => 'San Francisco',
        DATE_START => '2019-11-28', # Thu
        DATE_END => '2019-12-08' # Sun
      },
      '2021C' =>
      {
        ORDINAL => 93,
        YEAR => 2021,
        CITY => 'Austin',
        DATE_START => '2021-11-25', # Thu
        DATE_END => '2021-12-05' # Sun
      },
      '2022A' =>
      {
        ORDINAL => 62,
        YEAR => 2022,
        CITY => 'Reno',
        DATE_START => '2022-03-09', # Wed
        DATE_END => '2022-03-20' # Sun
      },
      '2022B' =>
      {
        ORDINAL => 92,
        YEAR => 2022,
        CITY => 'Providence',
        DATE_START => '2022-07-13', # Wed
        DATE_END => '2022-07-24' # Sun
      },
      '2022C' =>
      {
        ORDINAL => 94,
        YEAR => 2022,
        CITY => 'Phoenix',
        DATE_START => '2022-11-24', # Thu
        DATE_END => '2022-12-04' # Sun
      },
      '2023A' =>
      {
        ORDINAL => 63,
        YEAR => 2023,
        CITY => 'New Orleans',
        DATE_START => '2023-03-09', # Thu
        DATE_END => '2023-03-20' # Mon
      },
      '2023B' =>
      {
        ORDINAL => 93,
        YEAR => 2023,
        CITY => 'Chicago',
        DATE_START => '2023-07-12', # Wed
        DATE_END => '2023-07-24' # Mon
      },
      '2023C' =>
      {
        ORDINAL => 95,
        YEAR => 2023,
        CITY => 'Atlanta',
        DATE_START => '2023-11-23', # Thu
        DATE_END => '2023-12-03' # Sun
      },
      '2024A' =>
      {
        ORDINAL => 64,
        YEAR => 2024,
        CITY => 'Louisville',
        DATE_START => '2024-03-13', # Wed
        DATE_END => '2024-03-24' # Sun
      },
      '2024B' =>
      {
        ORDINAL => 94,
        YEAR => 2024,
        CITY => 'Toronto',
        DATE_START => '2024-07-17', # Wed
        DATE_END => '2024-07-28' # Sun
      },
      '2024C' =>
      {
        ORDINAL => 96,
        YEAR => 2024,
        CITY => 'Las Vegas',
        DATE_START => '2024-11-28', # Thu
        DATE_END => '2024-12-08' # Sun
      },
    }
  },

  'United States Bridge Championship' =>
  {
    # https://usbf.org/past-tournaments/past-usbf-tournaments/index.php

    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    ZONE => 'North America',

    EDITIONS => 
    {
      '1997' =>
      {
        YEAR => 1997,
        DATE_START => '1997-06-06', # Fri
        DATE_END => '1997-06-09' # Mon
      },
      '1998' =>
      {
        YEAR => 1998,
        CITY => 'Tunica',
        DATE_START => '1998-06-17', # Wed
        DATE_END => '1998-06-20' # Sat
      },
      '1999' =>
      {
        YEAR => 1999,
        DATE_START => '1999-06-17', # Thu
        DATE_END => '1999-06-19' # Sat
      },
      '2000' =>
      {
        YEAR => 2000,
        DATE_START => '2000-06-14', # Wed
        DATE_END => '2000-06-17' # Sat
      },
      '2001' =>
      {
        YEAR => 2001,
        CITY => 'Houston',
        DATE_START => '2001-05-11', # Fri
        DATE_END => '2001-05-20' # Sun
      },
      '2002' =>
      {
        YEAR => 2002,
        CITY => 'Houston',
        DATE_START => '2002-05-10', # Fri
        DATE_END => '2002-05-19' # Sun
      },
      '2004' =>
      {
        YEAR => 2004,
        CITY => 'Memphis',
        DATE_START => '2004-06-04', # Fri
        DATE_END => '2004-06-13' # Sun
      },
      '2005' =>
      {
        YEAR => 2005,
        CITY => 'Houston',
        DATE_START => '2005-05-13', # Fri
        DATE_END => '2005-05-22' # Sun
      },
      '2006' =>
      {
        YEAR => 2006,
        CITY => 'White Plains',
        DATE_START => '2006-08-19', # Sat
        DATE_END => '2006-08-27' # Sun
      },
      '2007' =>
      {
        YEAR => 2007,
        CITY => 'Schaumburg',
        DATE_START => '2007-06-08', # Fri
        DATE_END => '2007-06-11' # Mon
      },
      '2008' =>
      {
        # Approximate
        YEAR => 2008,
        DATE_START => '2008-06-03', # Tue
        DATE_END => '2008-06-07' # Sat
      },
      '2009' =>
      {
        YEAR => 2009,
        CITY => 'White Plains',
        DATE_START => '2009-06-06', # Sat
        DATE_END => '2009-06-15' # Mon
      },
      '2010' =>
      {
        YEAR => 2010,
        CITY => 'White Plains',
        DATE_START => '2010-06-20', # Sun
        DATE_END => '2010-06-27' # Sun
      },
      '2011' =>
      {
        YEAR => 2011,
        CITY => 'Las Vegas',
        DATE_START => '2011-05-10', # Tue
        DATE_END => '2011-05-17' # Tue
      },
      '2012' =>
      {
        YEAR => 2012,
        CITY => 'Schaumburg',
        DATE_START => '2012-04-27', # Fri
        DATE_END => '2012-05-06' # Sun
      },
      '2013' =>
      {
        YEAR => 2013,
        CITY => 'Orlando',
        DATE_START => '2013-06-01', # Sat
        DATE_END => '2013-06-10' # Mon
      },
      '2014' =>
      {
        YEAR => 2014,
        CITY => 'Phoenix',
        DATE_START => '2014-05-11', # Sun
        DATE_END => '2014-05-19' # Mon
      },
      '2015' =>
      {
        YEAR => 2015,
        CITY => 'Schaumburg',
        DATE_START => '2015-05-08', # Fri
        DATE_END => '2015-05-17' # Sun
      },
      '2016' =>
      {
        YEAR => 2016,
        CITY => 'Denver',
        DATE_START => '2016-05-08', # Sun
        DATE_END => '2016-05-15' # Sun
      },
      '2016B' =>
      {
        # Trial
        YEAR => 2016,
        CITY => 'Denver',
        DATE_START => '2016-05-30', # Mon
        DATE_END => '2016-06-05' # Sun
      },
      '2016C' =>
      {
        # Trial
        YEAR => 2016,
        CITY => 'Denver',
        DATE_START => '2016-06-17', # Fri
        DATE_END => '2016-06-22' # Wed
      },
      '2017' =>
      {
        YEAR => 2017,
        CITY => 'Schaumburg',
        DATE_START => '2017-04-30', # Sun
        DATE_END => '2017-05-06' # Sat
      },
      '2018' =>
      {
        YEAR => 2018,
        CITY => 'Houston',
        DATE_START => '2018-05-11', # Fri
        DATE_END => '2018-05-20' # Sun
      },
      '2019' =>
      {
        YEAR => 2019,
        CITY => 'Schaumburg',
        DATE_START => '2019-05-10', # Fri
        DATE_END => '2019-05-19' # Sun
      },
      '2021' =>
      {
        YEAR => 2021,
        CITY => 'Schaumburg',
        DATE_START => '2021-10-05', # Tue
        DATE_END => '2021-10-12' # Tue
      },
      '2022' =>
      {
        YEAR => 2022,
        CITY => 'Schaumburg',
        DATE_START => '2022-05-16', # Mon
        DATE_END => '2022-05-23' # Mon
      },
      '2023' =>
      {
        YEAR => 2023,
        CITY => 'Schaumburg',
        DATE_START => '2023-05-01', # Mon
        DATE_END => '2023-05-08' # Mon
      },
      '2024' =>
      {
        YEAR => 2024,
        CITY => 'Schaumburg',
        DATE_START => '2024-05-01', # Wed
        DATE_END => '2024-05-08' # Wed
      },
    }
  },

  'United States Youth Bridge Championship' =>
  {
    # https://usbf.org/past-tournaments/past-usbf-tournaments/index.php

    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    ZONE => 'North America',

    EDITIONS => 
    {
      '2013-14' =>
      {
        CITY => 'Atlanta',
        DATE_START => '2013-12-29', # Sun
        DATE_END => '2014-01-02' # Thu
      },
      '2015-16' =>
      {
        DATE_START => '2015-12-27', # Sun
        DATE_END => '2015-12-31' # Thu
      },
      '2017-18' =>
      {
        DATE_START => '2017-12-27', # Wed
        DATE_END => '2017-12-31' # Sun
      },
      '2019-20' =>
      {
        DATE_START => '2019-12-27', # Fri
        DATE_END => '2019-12-31' # Tue
      },
      '2024-25' =>
      {
        DATE_START => '2024-12-27', # Fri
        DATE_END => '2025-01-02' # Thu
      },
    }
  },
);

my %TOURNAMENTS_USA =
(
  '0 to 1500 Spingold' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2007B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            DATE_START => '2007-07-24', # Tue
            DATE_END => '2007-07-24' # Tue
          },
        }
      },
    }
  },

  'Collegiate Bowl' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2014B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'MATCH',
            DATE_START => '2014-07-19', # Sat
            DATE_END => '2014-07-20' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-20', # Sun
            DATE_END => '2014-07-20' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-21', # Mon
            DATE_END => '2014-07-21' # Mon
          }
        }
      },
      '2015' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2015B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-08', # Sat
            DATE_END => '2015-08-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2015-08-09', # Sun
            DATE_END => '2015-08-10' # Mon
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-09', # Sun
            DATE_END => '2015-08-10' # Mon
          }
        }
      },
      '2016' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2016B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-23', # Sat
            DATE_END => '2016-07-24' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2016-07-24', # Sun
            DATE_END => '2016-07-25' # Mon
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-24', # Sun
            DATE_END => '2016-07-25' # Mon
          }
        }
      },
    }
  },

  'Grand National Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2010B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-07-24', # Sat
            DATE_END => '2010-07-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-07-25', # Sun
            DATE_END => '2010-07-26' # Mon
          },
        }
      },
      '2011' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2011B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-07-24', # Sun
            DATE_END => '2011-07-25' # Mon
          },
        }
      },
      '2012' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-14', # Sat
            DATE_END => '2012-07-15' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-15', # Sun
            DATE_END => '2012-07-16' # Mon
          }
        }
      },
      '2013' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2013B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-03', # Sat
            DATE_END => '2013-08-03' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-04', # Sun
            DATE_END => '2013-08-04' # Sun
          },
        }
      },
      '2014' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2014B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-19', # Sat
            DATE_END => '2014-07-20' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-20', # Sun
            DATE_END => '2014-07-21' # Mon
          },
        }
      },
      '2015' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2015B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-08', # Sat
            DATE_END => '2015-08-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-09', # Sun
            DATE_END => '2015-08-10' # Mon
          },
        }
      },
      '2016' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2016B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-23', # Sat
            DATE_END => '2016-07-24' # Sun
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-24', # Sun
            DATE_END => '2016-07-25' # Mon
          },
        }
      },
    }
  },

  "Missouri Braggin' Rights" => 
  {
    ORGANIZATION => 'ACBL',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    ZONE => 'North America',
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
          'C0' => 
          {
            YEAR => 2009,
            major => 'QUARTER',
            DATE_START => '2009-08-22', # Sat
            DATE_END => '2009-08-22' # Sat
          },
        }
      },
      '2010' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            DATE_START => '2010-08-14', # Sat
            DATE_END => '2010-08-14' # Sat
          },
        }
      },
    }
  },

  'Philadelphia Solomon Teams' => 
  {
    ORGANIZATION => 'ACBL',
    COUNTRY => 'USA',
    CITY => 'Philadelphia',
    ORIGIN => 'National',
    ZONE => 'North America',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-05-15', # Sat
            DATE_END => '2010-05-15' # Sat
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
            major => 'SEGMENT',
            DATE_START => '2011-07-13', # Wed
            DATE_END => '2011-07-13' # Wed
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
            DATE_START => '2013-09-11', # Wed
            DATE_END => '2013-09-11' # Wed
          },
        }
      },
      '2014' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-11-05', # Wed
            DATE_END => '2014-11-05' # Wed
          },
        }
      },
    }
  },

  'Reisinger BAM Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2004C',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-11-29', # Mon
            DATE_END => '2004-11-29' # Mon
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-29', # Mon
            DATE_END => '2004-11-29' # Mon
          } 
        }
      },
      '2006' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2006C',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-11-26', # Sun
            DATE_END => '2006-11-27' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            DATE_START => '2006-11-26', # Sun
            DATE_END => '2006-11-27' # Mon
          } 
        }
      },
      '2007' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2007C',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-12-02', # Sun
            DATE_END => '2007-12-02' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2008C',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-11-30', # Sun
            DATE_END => '2008-11-30' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2009C',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-12-06', # Sun
            DATE_END => '2009-12-06' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2010C',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-05', # Sun
            DATE_END => '2010-12-05' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2011C',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-04', # Sun
            DATE_END => '2011-12-04' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2012C',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-02', # Sun
            DATE_END => '2012-12-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-02', # Sun
            DATE_END => '2012-12-03' # Mon
          },
        }
      },
      '2013' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2013C',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-08', # Sun
            DATE_END => '2013-12-09' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-08', # Sun
            DATE_END => '2013-12-09' # Mon
          } 
        }
      },
      '2014' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2014C',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-06', # Sat
            DATE_END => '2014-12-07' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2014-12-07', # Sun
            DATE_END => '2014-12-08' # Mon
          },
        }
      },
      '2015' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2015C',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2015-12-05', # Sat
            DATE_END => '2015-12-05' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2015-12-06', # Sun
            DATE_END => '2015-12-06' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-06', # Sun
            DATE_END => '2015-12-07' # Mon
          },
        }
      },
    }
  },

  'Spingold Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1996' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '1996B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Actually ended on Saturday August 10, but no matter.
            YEAR => 1996,
            STAGE => 'Final',
            DATE_START => '1996-08-10', # Sat
            DATE_END => '1996-08-11' # Sun
          } 
        }
      },
      '1997' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '1997B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1997,
            STAGE => 'Rof16',
            DATE_START => '1997-07-27', # Sun
            DATE_END => '1997-07-27' # Sun
          },
          'C1' => 
          {
            YEAR => 1997,
            STAGE => 'Quarterfinal',
            DATE_START => '1997-07-27', # Sun
            DATE_END => '1997-07-28' # Mon
          },
          'C2' => 
          {
            YEAR => 1997,
            STAGE => 'Semifinal',
            DATE_START => '1997-07-30', # Wed
            DATE_END => '1997-07-31' # Thu
          },
          'C3' => 
          {
            YEAR => 1997,
            STAGE => 'Final',
            DATE_START => '1997-08-01', # Fri
            DATE_END => '1997-08-02' # Sat
          },
        }
      },
      '1998' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '1998B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1998-07-27', # Mon
            DATE_END => '1998-08-01' # Sat
          } 
        }
      },
      '1999' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '1999B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1999,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1999-07-28', # Wed
            DATE_END => '1999-07-31' # Sat
          } 
        }
      },
      '2000' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2000B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2000-08-13', # Sun
            DATE_END => '2000-08-19' # Sat
          } 
        }
      },
      '2001' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2001B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2001,
            STAGE => 'Rof128',
            DATE_START => '2001-07-19', # Thu
            DATE_END => '2001-07-19' # Thu
          },
          'C1' => 
          {
            YEAR => 2001,
            STAGE => 'Rof64',
            DATE_START => '2001-07-20', # Fri
            DATE_END => '2001-07-20' # Fri
          },
          'C2' => 
          {
            YEAR => 2001,
            STAGE => 'Rof32',
            DATE_START => '2001-07-21', # Sat
            DATE_END => '2001-07-21' # Sat
          },
          'C3' => 
          {
            YEAR => 2001,
            STAGE => 'Rof16',
            DATE_START => '2001-07-22', # Sun
            DATE_END => '2001-07-22' # Sun
          },
          'C4' => 
          {
            YEAR => 2001,
            STAGE => 'Quarterfinal',
            DATE_START => '2001-07-23', # Mon
            DATE_END => '2001-07-24' # Tue
          },
          'C5' => 
          {
            YEAR => 2001,
            STAGE => 'Semifinal',
            DATE_START => '2001-07-25', # Wed
            DATE_END => '2001-07-26' # Thu
          },
          'C6' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            DATE_START => '2001-07-27', # Fri
            DATE_END => '2001-07-28' # Sat
          } 
        }
      },
      '2004' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2004B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-07-28', # Wed
            DATE_END => '2004-07-29' # Thu
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-07-30', # Fri
            DATE_END => '2004-07-31' # Sat
          } 
        }
      },
      '2005' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2005B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-07-27', # Wed
            DATE_END => '2005-07-28' # Thu
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-07-29', # Fri
            DATE_END => '2005-07-30' # Sat
          } 
        }
      },
      '2006' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2006B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2006-07-14', # Fri
            DATE_END => '2006-07-14' # Fri
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2006-07-15', # Sat
            DATE_END => '2006-07-15' # Sat
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2006-07-16', # Sun
            DATE_END => '2006-07-16' # Sun
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-07-17', # Mon
            DATE_END => '2006-07-18' # Tue
          },
          'C4' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-07-19', # Wed
            DATE_END => '2006-07-20' # Thu
          },
          'C5' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-07-21', # Fri
            DATE_END => '2006-07-22' # Sat
          },
        }
      },
      '2007' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2007B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2007-07-22', # Sun
            DATE_END => '2007-07-22' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-07-23', # Mon
            DATE_END => '2007-07-24' # Tue
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-07-25', # Wed
            DATE_END => '2007-07-26' # Thu
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-07-27', # Fri
            DATE_END => '2007-07-28' # Sat
          },
        }
      },
      '2008' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2008B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2008-07-19', # Sat
            DATE_END => '2008-07-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2008-07-20', # Sun
            DATE_END => '2008-07-20' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2008-07-21', # Mon
            DATE_END => '2008-07-21' # Mon
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-07-22', # Tue
            DATE_END => '2008-07-23' # Wed
          },
          'C4' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-07-24', # Thu
            DATE_END => '2008-07-25' # Fri
          },
          'C5' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-07-26', # Sat
            DATE_END => '2008-07-27' # Sun
          },
        }
      },
      '2009' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2009B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2009-07-28', # Tue
            DATE_END => '2009-07-28' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2009-07-29', # Wed
            DATE_END => '2009-07-29' # Wed
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-07-30', # Thu
            DATE_END => '2009-07-30' # Thu
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-31', # Fri
            DATE_END => '2009-08-01' # Sat
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-08-01', # Sat
            DATE_END => '2009-08-02' # Sun
          },
          'C5' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-02', # Sun
            DATE_END => '2009-08-02' # Sun
          },
        }
      },
      '2010' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2010B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2010-07-27', # Tue
            DATE_END => '2010-07-28' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-07-28', # Wed
            DATE_END => '2010-07-29' # Thu
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-07-29', # Thu
            DATE_END => '2010-07-30' # Fri
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-07-30', # Fri
            DATE_END => '2010-07-31' # Sat
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-07-31', # Sat
            DATE_END => '2010-08-01' # Sun
          },
        }
      },
      '2011' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2011B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2011-07-27', # Wed
            DATE_END => '2011-07-27' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2011-07-28', # Thu
            DATE_END => '2011-07-28' # Thu
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-07-29', # Fri
            DATE_END => '2011-07-30' # Sat
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-07-30', # Sat
            DATE_END => '2011-07-30' # Sat
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-07-31', # Sun
            DATE_END => '2011-07-31' # Sun
          },
        }
      },
      '2012' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2012B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2012-07-18', # Wed
            DATE_END => '2012-07-19' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-07-19', # Thu
            DATE_END => '2012-07-20' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-20', # Fri
            DATE_END => '2012-07-21' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-21', # Sat
            DATE_END => '2012-07-22' # Sun
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-22', # Sun
            DATE_END => '2012-07-23' # Mon
          },
        }
      },
      '2013' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2013B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2013-08-07', # Wed
            DATE_END => '2013-08-08' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-08-08', # Thu
            DATE_END => '2013-08-09' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-09', # Fri
            DATE_END => '2013-08-10' # Sat
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-10', # Sat
            DATE_END => '2013-08-11' # Sun
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-11', # Sun
            DATE_END => '2013-08-12' # Mon
          },
        }
      },
      '2014' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2014B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-07-23', # Wed
            DATE_END => '2014-07-24' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-07-24', # Thu
            DATE_END => '2014-07-25' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-25', # Fri
            DATE_END => '2014-07-26' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-26', # Sat
            DATE_END => '2014-07-27' # Sun
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-27', # Sun
            DATE_END => '2014-07-28' # Mon
          },
        }
      },
      '2015' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2015B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2015-08-13', # Thu
            DATE_END => '2015-08-13' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-08-13', # Thu
            DATE_END => '2015-08-14' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-14', # Fri
            DATE_END => '2015-08-15' # Sat
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-15', # Sat
            DATE_END => '2015-08-16' # Sun
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-16', # Sun
            DATE_END => '2015-08-17' # Mon
          },
        }
      },
      '2016' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2016B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2016-07-27', # Wed
            DATE_END => '2016-07-28' # Thu
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-07-28', # Thu
            DATE_END => '2016-07-29' # Fri
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-29', # Fri
            DATE_END => '2016-07-30' # Sat
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-30', # Sat
            DATE_END => '2016-07-31' # Sun
          },
          'C4' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-31', # Sun
            DATE_END => '2016-08-01' # Mon
          },
        }
      },
    }
  },

  "Sternberg Women's BAM Teams" => 
  {
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2004C',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-29', # Mon
            DATE_END => '2004-11-29' # Mon
          },
        }
      },
    }
  },

  'US Girls Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2013-14' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2013-junior-usbc/index.php
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-31', # Tue
            DATE_END => '2014-01-02' # Thu
          } 
        }
      },
      '2015-16' =>
      {
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-28', # Mon
            DATE_END => '2015-12-30' # Wed
          } 
        }
      },
    }
  },

  'US Juniors Training',
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Juniors',

    EDITIONS =>
    {
      '2013-14' =>
      {
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            DATE_START => '2013-12-29', # Sun
            DATE_END => '2013-12-30' # Mon
          } 
        }
      },
    }
  },

  'US Junior Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2008B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-07-16', # Wed
            DATE_END => '2008-07-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-07-18', # Fri
            DATE_END => '2008-07-19' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2009B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-22', # Wed
            DATE_END => '2009-07-22' # Wed
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-22', # Wed
            DATE_END => '2009-07-23' # Thu
          } 
        }
      },
      '2013-14' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2013-junior-usbc/index.php
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-31', # Tue
            DATE_END => '2014-01-01' # Wed
          },
          'C1' => 
          {
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-01', # Wed
            DATE_END => '2014-01-02' # Thu
          } 
        }
      },
      '2015-16' =>
      {
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-12-28', # Mon
            DATE_END => '2015-12-29' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-29', # Tue
            DATE_END => '2015-12-31' # Thu
          } 
        }
      },
      '2017-18' =>
      {
        # https://www.usbf.org/2017-michael-seamon-junior-usbcs/2017-junior-usbc
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-12-27', # Wed
            DATE_END => '2017-12-31' # Sun
          } 
        }
      },
      '2019-20' =>
      {
        # https://www.usbf.org/2019-michael-seamon-jusbc/2019-michael-seamon-jusbc
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-12-27', # Fri
            DATE_END => '2019-12-31' # Tue
          } 
        }
      },
      '2024-25' =>
      {
        # https://www.usbf.org/2024-sam-amer-jusbc/2024-sam-amer-jusbc/index.php
        MEET => 'United States Youth Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            DATE_START => '2024-12-27', # Fri
            DATE_END => '2025-01-02' # Thu
          } 
        }
      },
    }
  },

  'US Open Trials',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    # https://www.usbf.org/usbcs-before-2014/past-usbf-tournaments/usbf-tournaments-before-2014/index.php

    EDITIONS =>
    {
      '1997' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1997,
            STAGE => 'Semifinal',
            DATE_START => '1997-06-06', # Fri
            DATE_END => '1997-06-07' # Sat
          },
          'C1' => 
          {
            YEAR => 1997,
            STAGE => 'Playoff',
            DATE_START => '1997-06-08', # Sun
            DATE_END => '1997-06-09' # Mon
          } 
        }
      },
      '1998' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1998,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '1998-06-17', # Wed
            DATE_END => '1998-06-18' # Thu
          },
          'C1' => 
          {
            YEAR => 1998,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1998-06-19', # Fri
            DATE_END => '1998-06-20' # Sat
          } 
        }
      },
      '1999' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 1999,
            STAGE => 'Semifinal',
            DATE_START => '1999-06-17', # Thu
            DATE_END => '1999-06-17' # Thu
          },
          'C1' => 
          {
            YEAR => 1999,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1999-06-18', # Fri
            DATE_END => '1999-06-19' # Sat
          } 
        }
      },
      '2000' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2000,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2000-06-14', # Wed
            DATE_END => '2000-06-15' # Thu
          },
          'C1' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2000-06-16', # Fri
            DATE_END => '2000-06-17' # Sat
          } 
        }
      },
      '2001' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2001,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2001-05-19', # Sat
            DATE_END => '2001-05-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-05-20', # Sun
            DATE_END => '2001-05-20' # Sun
          } 
        }
      },
      '2002' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2002,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2002-05-18', # Sat
            DATE_END => '2002-05-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2002,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2002-05-19', # Sun
            DATE_END => '2002-05-19' # Sun
          } 
        }
      },
      '2004' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-11', # Fri
            DATE_END => '2004-06-11' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-06-12', # Sat
            DATE_END => '2004-06-12' # Sat
          },
          'C2' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-06-13', # Sun
            DATE_END => '2004-06-13' # Sun
          } 
        }
      },
      '2005' =>
      {
        # https://www.usbf.org/2005-open-usbc/2005-united-states-bridge-championship
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2005-05-19', # Thu
            DATE_END => '2005-05-19' # Thu
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-05-20', # Fri
            DATE_END => '2005-05-20' # Fri
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-05-21', # Sat
            DATE_END => '2005-05-21' # Sat
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-05-22', # Sun
            DATE_END => '2005-05-22' # Sun
          } 
        }
      },
      '2006' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2006-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2006-08-22', # Tue
            DATE_END => '2006-08-22' # Tue
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2006-08-23', # Wed
            DATE_END => '2006-08-23' # Wed
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-08-24', # Thu
            DATE_END => '2006-08-24' # Thu
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-08-25', # Fri
            DATE_END => '2006-08-25' # Fri
          },
          'C4' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-08-26', # Sat
            DATE_END => '2006-08-26' # Sat
          } 
        }
      },
      '2007' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2007-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2007-06-08', # Fri
            DATE_END => '2007-06-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-06-09', # Sat
            DATE_END => '2007-06-09' # Sat
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-06-10', # Sun
            DATE_END => '2007-06-10' # Sun
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-06-11', # Mon
            DATE_END => '2007-06-11' # Mon
          } 
        }
      },
      '2008' =>
      {
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2008-06-04', # Wed
            DATE_END => '2008-06-04' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-06-05', # Thu
            DATE_END => '2008-06-05' # Thu
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-06-06', # Fri
            DATE_END => '2008-06-06' # Fri
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-06-07', # Sat
            DATE_END => '2008-06-07' # Sat
          } 
        }
      },
      '2009' =>
      {
        # https://www.usbf.org/2009-open-usbc/2009-usbc-daily-bulletin
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2009-06-06', # Sat
            DATE_END => '2009-06-07' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-06-07', # Sun
            DATE_END => '2009-06-08' # Mon
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-08', # Mon
            DATE_END => '2009-06-09' # Tue
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-10', # Wed
            DATE_END => '2009-06-11' # Thu
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-12', # Fri
            DATE_END => '2009-06-13' # Sat
          },
          # Two teams were selected separately
          'D0' => 
          {
            YEAR => 2009,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2009-06-09', # Tue
            DATE_END => '2009-06-09' # Tue
          },
          'D1' => 
          {
            YEAR => 2009,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2009-06-10', # Wed
            DATE_END => '2009-06-10' # Wed
          },
          'D2' => 
          {
            YEAR => 2009,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-06-11', # Thu
            DATE_END => '2009-06-11' # Thu
          },
          'D3' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-12', # Fri
            DATE_END => '2009-06-12' # Fri
          },
          'D4' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-06-13', # Sat
            DATE_END => '2009-06-14' # Sun
          },
          'D5' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-14', # Sun
            DATE_END => '2009-06-15' # Mon
          },
        }
      },
      '2010' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2010-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-06-20', # Sun
            DATE_END => '2010-06-21' # Mon
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-22', # Tue
            DATE_END => '2010-06-23' # Wed
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-24', # Thu
            DATE_END => '2010-06-25' # Fri
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-26', # Sat
            DATE_END => '2010-06-27' # Sun
          } 
        }
      },
      '2011' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2011-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2011-05-10', # Tue
            DATE_END => '2011-05-11' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-12', # Thu
            DATE_END => '2011-05-13' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-15' # Sun
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-16', # Mon
            DATE_END => '2011-05-17' # Tue
          } 
        }
      },
      '2012' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2012-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-04-27', # Fri
            DATE_END => '2012-05-06' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2013-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-03' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-06-03', # Mon
            DATE_END => '2013-06-05' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-06-05', # Wed
            DATE_END => '2013-06-07' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-08' # Sat
          },
          'D0' => 
          {
            YEAR => 2013,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2013-06-04', # Tue
            DATE_END => '2013-06-05' # Wed
          },
          'D1' => 
          {
            YEAR => 2013,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2013-06-05', # Wed
            DATE_END => '2013-06-06' # Thu
          },
          'D2' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-06-06', # Thu
            DATE_END => '2013-06-07' # Fri
          },
          'D3' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-08' # Sat
          },
          'D4' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-06-08', # Sat
            DATE_END => '2013-06-09' # Sun
          },
          'D5' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-09', # Sun
            DATE_END => '2013-06-10' # Mon
          },
        }
      },
      '2014' =>
      {
        # https://www.usbf.org/2014-open-usbc/2014-open-usbc
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-05-11', # Sun
            DATE_END => '2014-05-13' # Tue
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-05-13', # Tue
            DATE_END => '2014-05-15' # Thu
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-05-15', # Thu
            DATE_END => '2014-05-17' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-17', # Sat
            DATE_END => '2014-05-19' # Mon
          } 
        }
      },
      '2015' =>
      {
        # https://www.usbf.org/2015-open-usbc/2015-open-usbc
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-05-08', # Fri
            DATE_END => '2015-05-17' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://www.usbf.org/2016-open-usbc/2016-open-usbc
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-05-08', # Sun
            DATE_END => '2016-05-10' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-10', # Tue
            DATE_END => '2016-05-12' # Thu
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-12', # Thu
            DATE_END => '2016-05-14' # Sat
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-14', # Sat
            DATE_END => '2016-05-15' # Sun
          } 
        }
      },
      '2017' =>
      {
        # https://www.usbf.org/2017-open-usbc/2017-open-usbc/2017-open-usbc-results/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-04-30', # Sun
            DATE_END => '2017-05-06' # Sat
          } 
        }
      },
      '2018' =>
      {
        # https://www.usbf.org/2018-open-usbc/2018-open-usbc
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-05-11', # Fri
            DATE_END => '2018-05-20' # Sun
          } 
        }
      },
      '2019' =>
      {
        # https://www.usbf.org/2019-open-usbc/2019-open-usbc
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-05-10', # Fri
            DATE_END => '2019-05-19' # Sun
          } 
        }
      },
      '2021' =>
      {
        # https://www.usbf.org/2021-open-usbc/2021-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-10-05', # Tue
            DATE_END => '2021-10-12' # Tue
          } 
        }
      },
      '2022' =>
      {
        # https://www.usbf.org/2022-open-usbc/2022-open-usbc/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-05-16', # Mon
            DATE_END => '2022-05-23' # Mon
          } 
        }
      },
      '2023' =>
      {
        # https://www.usbf.org/2023-usbcs/2023-usbcs/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-05-01', # Mon
            DATE_END => '2023-05-08' # Mon
          } 
        }
      },
      '2024' =>
      {
        # https://www.usbf.org/2024-united-states-bridge-championships/2024-united-states-bridge-championships/index.php
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-05-01', # Wed
            DATE_END => '2024-05-08' # Wed
          } 
        }
      },
    }
  },

  'US Mixed Teams',
  {
    ORGANIZATION => 'ACBL',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2016B',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            DATE_START => '2016-08-01', # Mon
            DATE_END => '2016-08-03' # Wed
          },

        }
      },
    }
  },

  'US Senior Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2004C',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Quarterfinal',
            major => 'QUARTER',
            DATE_START => '2004-11-26', # Fri
            DATE_END => '2004-11-26' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'QUARTER',
            DATE_START => '2004-11-27', # Sat
            DATE_END => '2004-11-27' # Sat
          },
          'C2' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'QUARTER',
            DATE_START => '2004-11-28', # Sun
            DATE_END => '2004-11-28' # Sun
          } 
        }
      },
      '2006' =>
      {
        # https://s3.amazonaws.com/cdn.acbl.org/nabc/2006/03/results/November19.html
        MEET => 'North American Bridge Championship',
        MEET_TAG => '2006C',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'QUARTER',
            DATE_START => '2006-11-26', # Sun
            DATE_END => '2006-11-26' # Sun
          } 
        }
      },
      '2007B' =>
      {
        # Probably not at an NABC.
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-07-05', # Thu
            DATE_END => '2007-07-05' # Thu
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-07-05', # Thu
            DATE_END => '2007-07-05' # Thu
          } 
        }
      },
      '2007C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-12-02', # Sun
            DATE_END => '2007-12-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-12-02', # Sun
            DATE_END => '2007-12-02' # Sun
          } 
        }
      },
      '2008B' =>
      {
        # Probably not at an NABC.
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-06-21', # Sat
            DATE_END => '2008-06-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-06-21', # Sat
            DATE_END => '2008-06-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-06-21', # Sat
            DATE_END => '2008-06-21' # Sat
          } 
        }
      },
      '2008C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-11-30', # Sun
            DATE_END => '2008-11-30' # Sun
          },
        }
      },
      '2009C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-12-01', # Tue
            DATE_END => '2009-12-01' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-12-02', # Wed
            DATE_END => '2009-12-02' # Wed
          } 
        }
      },
      '2010C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-11-28', # Sun
            DATE_END => '2010-11-28' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-29', # Mon
            DATE_END => '2010-11-29' # Mon
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-30', # Tue
            DATE_END => '2010-12-01' # Wed
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-12-01', # Wed
            DATE_END => '2010-12-01' # Wed
          } 
        }
      },
      '2011A' =>
      {
        # https://usbf.org/2011-senior-usbc/2011-susbc-daily-bulletin
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-06-07', # Tue
            DATE_END => '2011-06-09' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-06-08', # Wed
            DATE_END => '2011-06-09' # Thu
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-06-09', # Thu
            DATE_END => '2011-06-11' # Sat
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2011-06-09', # Thu
            DATE_END => '2011-06-11' # Sat
          } 
        }
      },
      '2011C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-11-28', # Mon
            DATE_END => '2011-11-29' # Tue
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-11-29', # Tue
            DATE_END => '2011-11-30' # Wed
          } 
        }
      },
      '2012A' =>
      {
        # https://usbf.org/2012-senior-usbc/2012-susbc-daily-bulletin
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-06-01', # Fri
            DATE_END => '2012-06-02' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-02', # Sat
            DATE_END => '2012-06-04' # Mon
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-04', # Mon
            DATE_END => '2012-06-05' # Tue
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-05', # Tue
            DATE_END => '2012-06-07' # Thu
          } 
        }
      },
      '2012C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-11-26', # Mon
            DATE_END => '2012-11-27' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-11-27', # Tue
            DATE_END => '2012-11-28' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-28', # Wed
            DATE_END => '2012-11-29' # Thu
          },
        }
      },
      '2013C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-11-30', # Sat
            DATE_END => '2013-12-01' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-01', # Sun
            DATE_END => '2013-12-02' # Mon
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-02', # Mon
            DATE_END => '2013-12-03' # Tue
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-03', # Tue
            DATE_END => '2013-12-04' # Wed
          },
        }
      },
      '2014C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-11-30', # Sun
            DATE_END => '2014-12-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-12-01', # Mon
            DATE_END => '2014-12-02' # Tue
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-02', # Tue
            DATE_END => '2014-12-03' # Wed
          },
        }
      },
      '2015C' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-11-28', # Sat
            DATE_END => '2015-11-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-29', # Sun
            DATE_END => '2015-11-30' # Mon
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-11-30', # Mon
            DATE_END => '2015-12-01' # Tue
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-01', # Tue
            DATE_END => '2015-12-02' # Wed
          },
        }
      },
    }
  },

  'US Senior Trials',
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

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
            major => 'QUARTER',
            DATE_START => '2004-06-24', # Thu
            DATE_END => '2004-06-24' # Thu
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'QUARTER',
            DATE_START => '2004-06-25', # Fri
            DATE_END => '2004-06-25' # Fri
          } 
        }
      },
      '2005' =>
      {
        # https://www.usbf.org/2005-senior-usbc/2005-united-states-senior-bridge-championship
        CITY => 'San Antonio',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            DATE_START => '2005-07-04', # Mon
            DATE_END => '2005-07-05' # Tue
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            DATE_START => '2005-07-06', # Wed
            DATE_END => '2005-07-07' # Thu
          } 
        }
      },
      '2007' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2007-senior-usbc/index.php
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-07-06', # Fri
            DATE_END => '2007-07-06' # Fri
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-07-07', # Sat
            DATE_END => '2007-07-08' # Sun
          } 
        }
      },
      '2009' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2009-senior-usbc/index.php
        CITY => 'Summerlin',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-06', # Mon
            DATE_END => '2009-07-06' # Mon
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-07', # Tue
            DATE_END => '2009-07-08' # Wed
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-09', # Thu
            DATE_END => '2009-07-10' # Fri
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-07-09', # Thu
            DATE_END => '2009-07-10' # Fri
          } 
        }
      },
      '2011' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2011-senior-usbc/index.php
        CITY => 'Detroit',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-06-05', # Sun
            DATE_END => '2011-06-10' # Fri
          } 
        }
      },
      '2012' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2012-senior-usbc/index.php
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-06-01', # Fri
            DATE_END => '2012-06-06' # Wed
          } 
        }
      },
      '2013' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2013-senior-usbc/index.php
        CITY => 'Orlando',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-07-12', # Fri
            DATE_END => '2013-07-20' # Sat
          } 
        }
      },
      '2015' =>
      {
        # https://www.usbf.org/2024-united-states-bridge-championships/2024-united-states-bridge-championships/index.php
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-06-05', # Fri
            DATE_END => '2015-06-13' # Sat
          } 
        }
      },
      '2016' =>
      {
        # https://www.usbf.org/2016-senior-usbc/2016-senior-usbc
        MEET => 'United States Bridge Championship',
        MEET_TAG => '2016C',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-06-17', # Fri
            DATE_END => '2016-06-22' # Wed
          } 
        }
      },
      '2017' =>
      {
        # https://www.usbf.org/2017-senior-usbc/2017-senior-usbc
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-05-15', # Mon
            DATE_END => '2017-05-17' # Wed
          } 
        }
      },
      '2019' =>
      {
        # https://www.usbf.org/2019-senior-usbc/2019-senior-usbc
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-05-31', # Fri
            DATE_END => '2019-06-01' # Sat
          } 
        }
      },
      '2021' =>
      {
        # https://www.usbf.org/2021-senior-usbc/2021-senior-usbc/index.php
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-10-23', # Sat
            DATE_END => '2021-10-30' # Sat
          } 
        }
      },
      '2023' =>
      {
        # https://www.usbf.org/2023-usbcs/2023-usbcs/index.php
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-05-19', # Fri
            DATE_END => '2023-05-24' # Wed
          } 
        }
      },
      '2024' =>
      {
        # https://www.usbf.org/2024-united-states-bridge-championships/2024-united-states-bridge-championships/index.php
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-05-19', # Sun
            DATE_END => '2024-05-26' # Sun
          } 
        }
      },
    }
  },

  'US University Trials',
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2008' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-08-12', # Tue
            DATE_END => '2008-08-12' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-08-12', # Tue
            DATE_END => '2008-08-12' # Tue
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2008-08-12', # Tue
            DATE_END => '2008-08-12' # Tue
          } 
        }
      },
    }
  },

  'US Women Teams' =>
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2001' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            # Estimated.
            YEAR => 2001,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2001-06-16', # Sat
            DATE_END => '2001-06-17' # Sun
          },
          'C1' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-06-18', # Mon
            DATE_END => '2001-06-19' # Tue
          } 
        }
      },
      '2004' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-05-31', # Mon
            DATE_END => '2004-05-31' # Mon
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-06-01', # Tue
            DATE_END => '2004-06-02' # Wed
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
            DATE_START => '2005-06-10', # Fri
            DATE_END => '2005-06-11' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-06-12', # Sun
            DATE_END => '2005-06-13' # Mon
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2005-06-12', # Sun
            DATE_END => '2005-06-13' # Mon
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
            DATE_START => '2006-06-12', # Mon
            DATE_END => '2006-06-12' # Mon
          } 
        }
      },
      '2007A' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            DATE_START => '2007-02-27', # Tue
            DATE_END => '2007-02-28' # Wed
          } 
        }
      },
      '2007B' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-06-05', # Tue
            DATE_END => '2007-06-05' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-06-06', # Wed
            DATE_END => '2007-06-07' # Thu
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2007-06-06', # Wed
            DATE_END => '2007-06-07' # Thu
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
            DATE_START => '2008-06-03', # Tue
            DATE_END => '2008-06-03' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-06-03', # Tue
            DATE_END => '2008-06-03' # Tue
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
            DATE_START => '2009-05-25', # Mon
            DATE_END => '2009-05-25' # Mon
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-26', # Tue
            DATE_END => '2009-05-29' # Fri
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-05-26', # Tue
            DATE_END => '2009-05-29' # Fri
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
            DATE_START => '2011-06-08', # Wed
            DATE_END => '2011-06-10' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-06-10', # Fri
            DATE_END => '2011-06-11' # Sat
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
            DATE_START => '2012-06-03', # Sun
            DATE_END => '2012-06-04' # Mon
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-05', # Tue
            DATE_END => '2012-06-06' # Wed
          } 
        }
      },
    }
  },

  'US Women Trials',
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        # https://www.usbf.org/2005-women-s-usbc/2005-united-states-womens-bridge-championship
        CITY => 'Las Vegas',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            DATE_START => '2005-06-06', # Mon
            DATE_END => '2005-06-12' # Sun
          } 
        }
      },
      '2007' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2007-women-s-usbc/index.php
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            DATE_START => '2007-06-01', # Fri
            DATE_END => '2007-06-07' # Thu
          } 
        }
      },
      '2009' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2009-women-s-usbc/index.php
        CITY => 'Sacramento',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-05-24', # Sun
            DATE_END => '2009-05-28' # Thu
          } 
        }
      },
      '2013' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2013-women-s-usbc/index.php
        CITY => 'Orlando',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-14', # Sun
            DATE_END => '2013-07-14' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-15', # Mon
            DATE_END => '2013-07-16' # Tue
          },
          'D0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-15', # Mon
            DATE_END => '2013-07-16' # Tue
          },
          'D1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-17', # Wed
            DATE_END => '2013-07-18' # Thu
          } 
        }
      },
      '2015' =>
      {
        # https://www.usbf.org/2015-women-s-usbc/2015-women-s-usbc
        CITY => 'Fort Lauderdale',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-14', # Tue
            DATE_END => '2015-04-15' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-04-15', # Wed
            DATE_END => '2015-04-17' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-04-17', # Fri
            DATE_END => '2015-04-18' # Sat
          } 
        }
      },
      '2016' =>
      {
        # https://www.usbf.org/2016-women-s-usbc/2016-women-s-usbc
        MEET => 'United States Bridge Championship',
        MEET_TAG => '2016B',
        CITY => 'Denver',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-05-30', # Mon
            DATE_END => '2016-06-01' # Wed
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-06-01', # Wed
            DATE_END => '2016-06-03' # Fri
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-06-03', # Fri
            DATE_END => '2016-06-05' # Sun
          } 
        }
      },
      '2017' =>
      {
        # https://www.usbf.org/2017-women-s-usbc/2017-women-s-usbc
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-05-04', # Thu
            DATE_END => '2017-05-11' # Thu
          } 
        }
      },
      '2019' =>
      {
        # https://www.usbf.org/2019-women-s-usbc/2019-women-s-usbc
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-05-14', # Tue
            DATE_END => '2019-05-20' # Mon
          } 
        }
      },
      '2023' =>
      {
        # https://www.usbf.org/2023-usbcs/2023-usbcs/index.php
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-05-20', # Sat
            DATE_END => '2023-05-25' # Thu
          } 
        }
      },
      '2024' =>
      {
        # https://www.usbf.org/2024-united-states-bridge-championships/2024-united-states-bridge-championships/index.php
        CITY => 'Schaumburg',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-05-21', # Tue
            DATE_END => '2024-05-26' # Sun
          } 
        }
      },
    }
  },

  'US Youngster Trials',
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2010' =>
      {
        # https://www.usbf.org/2010-junior-usbc/2010-under-21-trials
        MEET => 'United States Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-06-26', # Sat
            DATE_END => '2010-06-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-27', # Sun
            DATE_END => '2010-06-27' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://www.usbf.org/usbcs-before-2014/usbf-tournaments-before-2014/2013-junior-usbc/index.php
        MEET => 'United States Youth Bridge Championship',
        MEET_TAG => '2013-14',
        CITY => 'Atlanta',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            DATE_START => '2013-12-31', # Tue
            DATE_END => '2014-01-02' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'United States Youth Bridge Championship',
        MEET_TAG => '2015-16',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-12-27', # Sun
            DATE_END => '2015-12-29' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-12-29', # Tue
            DATE_END => '2015-12-30' # Wed
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-12-30', # Wed
            DATE_END => '2015-12-31' # Thu
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-30', # Wed
            DATE_END => '2015-12-31' # Thu
          } 
        }
      },
    }
  },

  'USBF Challenge Match',
  {
    ORGANIZATION => 'USBF',
    COUNTRY => 'USA',
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'MATCH',
            DATE_START => '2016-01-31', # Sun
            DATE_END => '2016-01-31' # Sun
          } 
        }
      },
    }
  },

  'Vanderbilt Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '1997A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1997,
            DATE_START => '1997-03-14', # Fri
            DATE_END => '1997-03-14' # Fri
          } 
        }
      },
      '1998A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1998-03-27', # Fri
            DATE_END => '1998-03-28' # Sat
          } 
        }
      },
      '1999A' =>
      {
        MEET => 'North American Bridge Championship',
        CITY => 'Vancouver',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1999,
            STAGE => 'Final',
            DATE_START => '1999-03-28', # Sun
            DATE_END => '1999-03-28' # Sun
          } 
        }
      },
      '2000A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2000,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2000-03-24', # Fri
            DATE_END => '2000-03-25' # Sat
          } 
        }
      },
      '2001A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-03-23', # Fri
            DATE_END => '2001-03-24' # Sat
          } 
        }
      },
      '2002A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2002,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2002-03-14', # Thu
            DATE_END => '2002-03-15' # Fri
          },
          'C1' => 
          {
            YEAR => 2002,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2002-03-16', # Sat
            DATE_END => '2002-03-17' # Sun
          } 
        }
      },
      '2004A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2004,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2004-03-25', # Thu
            DATE_END => '2004-03-26' # Fri
          },
          'C1' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-03-27', # Sat
            DATE_END => '2004-03-27' # Sat
          } 
        }
      },
      '2005A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2005-03-18', # Fri
            DATE_END => '2005-03-18' # Fri
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            minor => 'MATCH',
            DATE_START => '2005-03-18', # Fri
            DATE_END => '2005-03-19' # Sat
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-03-20', # Sun
            DATE_END => '2005-03-20' # Sun
          },
        }
      },
      '2006A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C9' => 
          {
            YEAR => 2006,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2006-04-03', # Mon
            DATE_END => '2006-04-03' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-04-06', # Thu
            DATE_END => '2006-04-06' # Thu
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-04-08', # Sat
            DATE_END => '2006-04-08' # Sat
          } 
        }
      },
      '2007A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2007-03-10', # Sat
            DATE_END => '2007-03-10' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-03-11', # Sun
            DATE_END => '2007-03-12' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-03-13', # Tue
            DATE_END => '2007-03-14' # Wed
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-03-15', # Thu
            DATE_END => '2007-03-16' # Fri
          },
        }
      },
      '2008A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2008-03-10', # Mon
            DATE_END => '2008-03-11' # Tue
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-03-11', # Tue
            DATE_END => '2008-03-12' # Wed
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-03-13', # Thu
            DATE_END => '2008-03-14' # Fri
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-03-15', # Sat
            DATE_END => '2008-03-16' # Sun
          },
        }
      },
      '2009A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2009-03-17', # Tue
            DATE_END => '2009-03-18' # Wed
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2009-03-18', # Wed
            DATE_END => '2009-03-19' # Thu
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-19', # Thu
            DATE_END => '2009-03-20' # Fri
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-20', # Fri
            DATE_END => '2009-03-21' # Sat
          },
          'C4' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-21', # Sat
            DATE_END => '2009-03-21' # Sat
          },
        }
      },
      '2010A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2010-03-16', # Tue
            DATE_END => '2010-03-17' # Wed
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2010-03-17', # Wed
            DATE_END => '2010-03-18' # Thu
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2010-03-18', # Thu
            DATE_END => '2010-03-19' # Fri
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-19', # Fri
            DATE_END => '2010-03-20' # Sat
          },
          'C4' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-20', # Sat
            DATE_END => '2010-03-21' # Sun
          },
          'C5' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-03-21', # Sun
            DATE_END => '2010-03-22' # Mon
          },
        }
      },
      '2011A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2011-03-16', # Wed
            DATE_END => '2011-03-17' # Thu
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2011-03-17', # Thu
            DATE_END => '2011-03-18' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-18', # Fri
            DATE_END => '2011-03-19' # Sat
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-19', # Sat
            DATE_END => '2011-03-20' # Sun
          },
          'C4' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-20', # Sun
            DATE_END => '2011-03-20' # Sun
          },
        }
      },
      '2012A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2012-03-21', # Wed
            DATE_END => '2012-03-22' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2012-03-22', # Thu
            DATE_END => '2012-03-23' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-23', # Fri
            DATE_END => '2012-03-24' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-25' # Sun
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-03-25', # Sun
            DATE_END => '2012-03-25' # Sun
          },
        }
      },
      '2013A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2013-03-20', # Wed
            DATE_END => '2013-03-21' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-03-21', # Thu
            DATE_END => '2013-03-22' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-22', # Fri
            DATE_END => '2013-03-23' # Sat
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-23', # Sat
            DATE_END => '2013-03-24' # Sun
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-24', # Sun
            DATE_END => '2013-03-25' # Mon
          },
        }
      },
      '2014A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2014-03-26', # Wed
            DATE_END => '2014-03-27' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2014-03-27', # Thu
            DATE_END => '2014-03-28' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-03-28', # Fri
            DATE_END => '2014-03-29' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-03-29', # Sat
            DATE_END => '2014-03-30' # Sun
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-30', # Sun
            DATE_END => '2014-03-31' # Mon
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2015-03-19', # Thu
            DATE_END => '2015-03-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-20', # Fri
            DATE_END => '2015-03-21' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-21', # Sat
            DATE_END => '2015-03-22' # Sun
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-22', # Sun
            DATE_END => '2015-03-23' # Mon
          } 
        }
      },
      '2016A' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Rof64',
            major => 'SEGMENT',
            DATE_START => '2016-03-15', # Tue
            DATE_END => '2016-03-16' # Wed
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2016-03-16', # Wed
            DATE_END => '2016-03-17' # Thu
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2016-03-17', # Thu
            DATE_END => '2016-03-18' # Fri
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-18', # Fri
            DATE_END => '2016-03-19' # Sat
          },
          'C4' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-19', # Sat
            DATE_END => '2016-03-20' # Sun
          },
          'C5' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-20', # Sun
            DATE_END => '2016-03-21' # Mon
          } 
        }
      },
    }
  },

  'Wagar Teams' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '1998B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 1998,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '1998-07-30', # Thu
            DATE_END => '1998-07-31' # Fri
          } 
        }
      },
      '2004B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-07-29', # Thu
            DATE_END => '2004-07-29' # Thu
          } 
        }
      },
      '2005B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-07-29', # Fri
            DATE_END => '2005-07-30' # Sat
          } 
        }
      },
      '2006B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            DATE_START => '2006-07-23', # Sun
            DATE_END => '2006-07-23' # Sun
          } 
        }
      },
      '2007B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-07-27', # Fri
            DATE_END => '2007-07-27' # Fri
          } 
        }
      },
      '2009B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-30', # Thu
            DATE_END => '2009-07-30' # Thu
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-07-29', # Thu
            DATE_END => '2010-07-30' # Fri
          } 
        }
      },
      '2011B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-07-28', # Thu
            DATE_END => '2011-07-29' # Fri
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-07-18', # Wed
            DATE_END => '2012-07-19' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-07-19', # Thu
            DATE_END => '2012-07-20' # Fri
          },
        }
      },
      '2013B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-08-07', # Wed
            DATE_END => '2013-08-08' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-08-08', # Thu
            DATE_END => '2013-08-09' # Fri
          } 
        }
      },
      '2014B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-23', # Wed
            DATE_END => '2014-07-24' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-24', # Thu
            DATE_END => '2014-07-25' # Fri
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-08-11', # Tue
            DATE_END => '2015-08-12' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-08-12', # Wed
            DATE_END => '2015-08-13' # Thu
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'North American Bridge Championship',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-27', # Wed
            DATE_END => '2016-07-28' # Thu
          } 
        }
      },
    }
  },
);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_USA, \%TOURNAMENTS_USA, 'United States');
}

1;
