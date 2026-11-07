#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Australia;

# https://www.abf.com.au/archives/#results


our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_AUSTRALIA =
(
  'Australian ANC Championships' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2005' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=05ANCN&header=abf
        YEAR => 2005,
        CITY => 'Sydney',
        DATE_START => '2005-07-22', # Fri
        DATE_END => '2005-08-05' # Fri
      },
      '2008' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=08ANCW&header=abf
        YEAR => 2008,
        CITY => 'Surfers Paradise', # Sic
        DATE_START => '2008-07-25', # Fri
        DATE_END => '2008-08-08' # Fri
      },
      '2009' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=09ANCT&header=abf
        YEAR => 2009,
        CITY => 'Canberra',
        DATE_START => '2009-07-03', # Fri
        DATE_END => '2009-07-18' # Sat
      },
      '2010' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=ANCT10&header=abf
        YEAR => 2010,
        CITY => 'Hobart',
        DATE_START => '2010-07-17', # Sat
        DATE_END => '2010-07-29' # Thu
      },
      '2011' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2011&dir=anc
        YEAR => 2011,
        CITY => 'Melbourne',
        DATE_START => '2011-07-24', # Sun
        DATE_END => '2011-07-29' # Fri
      },
      '2012' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=12ANCD&header=abf
        YEAR => 2012,
        CITY => 'Darwin',
        DATE_START => '2012-07-12', # Thu
        DATE_END => '2012-07-19' # Thu
      },
      '2013' =>
      {
        # http://abfevents.com.au/events/anc/2013/
        YEAR => 2013,
        CITY => 'Adelaide',
        DATE_START => '2013-07-06', # Sat
        DATE_END => '2013-07-18' # Thu
      },
      '2014' =>
      {
        # https://abfevents.com.au/events/anc/2014/
        YEAR => 2014,
        CITY => 'Sydney',
        DATE_START => '2014-07-12', # Sat
        DATE_END => '2014-07-24' # Thu
      },
      '2015' =>
      {
        # http://abfevents.com.au/events/anc/2016/
        YEAR => 2015,
        CITY => 'Fremantle',
        DATE_START => '2015-07-11', # Sat
        DATE_END => '2015-07-23' # Thu
      },
      '2016' =>
      {
        # http://abfevents.com.au/events/anc/2016/
        YEAR => 2016,
        CITY => 'Brisbane',
        DATE_START => '2016-06-25', # Sat
        DATE_END => '2016-07-07' # Thu
      },
      '2017' =>
      {
        # http://abfevents.com.au/events/anc/2017/
        YEAR => 2017,
        CITY => 'Canberra',
        DATE_START => '2017-07-15', # Sat
        DATE_END => '2017-07-27' # Thu
      },
      '2018' =>
      {
        # https://abfevents.com.au/events/anc/2018/
        YEAR => 2018,
        CITY => 'Hobart',
        DATE_START => '2018-07-28', # Sat
        DATE_END => '2018-08-09' # Thu
      },
      '2019' =>
      {
        # http://abfevents.com.au/events/anc/2019/
        YEAR => 2019,
        CITY => 'Melbourne',
        DATE_START => '2019-07-13', # Sat
        DATE_END => '2019-07-25' # Thu
      },
      '2022' =>
      {
        # https://abfevents.com.au/events/anc/2022/
        YEAR => 2022,
        CITY => 'Adelaide',
        DATE_START => '2022-07-02', # Sat
        DATE_END => '2022-07-14' # Thu
      },
      '2023' =>
      {
        # https://www.myabf.com.au/events/congress/view/472
        YEAR => 2023,
        CITY => 'Perth',
        DATE_START => '2023-07-09', # Sun
        DATE_END => '2023-07-20' # Thu
      },
      '2024' =>
      {
        # https://www.myabf.com.au/events/congress/view/798
        YEAR => 2024,
        CITY => 'Orange',
        DATE_START => '2024-07-06', # Sat
        DATE_END => '2024-07-18' # Thu
      },
    }
  },

  'Australian Autumn Nationals' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2004' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=ANOT04&header=abf
        YEAR => 2004,
        CITY => 'Adelaide',
        DATE_START => '2004-05-14', # Fri
        DATE_END => '2004-05-17' # Mon
      },
      '2005' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=05ANOT&header=abf
        YEAR => 2005,
        CITY => 'Adelaide',
        DATE_START => '2005-05-12', # Thu
        DATE_END => '2005-05-16' # Mon
      },
      '2006' =>
      {
        # https://www.abf.com.au/events/anot/2006.html
        YEAR => 2006,
        CITY => 'Adelaide',
        DATE_START => '2006-05-11', # Thu
        DATE_END => '2006-05-15' # Mon
      },
      '2007' =>
      {
        # https://www.abf.com.au/events/anot/2007.html
        YEAR => 2007,
        CITY => 'Adelaide',
        DATE_START => '2007-05-10', # Thu
        DATE_END => '2007-05-14' # Mon
      },
      '2008' =>
      {
        # https://abfevents.com.au/events/anot/2008.html
        YEAR => 2008,
        CITY => 'Adelaide',
        DATE_START => '2008-05-01', # Thu
        DATE_END => '2008-05-05' # Mon
      },
      '2009' =>
      {
        # https://abfevents.com.au/events/anot/2009.html
        YEAR => 2009,
        CITY => 'Adelaide',
        DATE_START => '2009-04-30', # Thu
        DATE_END => '2009-05-04' # Mon
      },
      '2010' =>
      {
        # https://abfevents.com.au/events/anot/2010.html
        YEAR => 2010,
        CITY => 'Adelaide',
        DATE_START => '2010-04-29', # Thu
        DATE_END => '2010-05-03' # Mon
      },
      '2011' =>
      {
        # https://abfevents.com.au/events/anot/2011.html
        YEAR => 2011,
        CITY => 'Adelaide',
        DATE_START => '2011-04-28', # Thu
        DATE_END => '2011-05-02' # Mon
      },
      '2012' =>
      {
        # https://abfevents.com.au/events/anot/2012/index.html
        YEAR => 2012,
        CITY => 'Adelaide',
        DATE_START => '2012-04-26', # Thu
        DATE_END => '2012-04-30' # Mon
      },
      '2013' =>
      {
        # https://abfevents.com.au/events/anot/2013/
        YEAR => 2013,
        CITY => 'Adelaide',
        DATE_START => '2013-05-02', # Thu
        DATE_END => '2013-05-06' # Mon
      },
      '2014' =>
      {
        # https://abfevents.com.au/events/anot/2014/
        YEAR => 2014,
        CITY => 'Adelaide',
        DATE_START => '2014-05-01', # Thu
        DATE_END => '2014-05-05' # Mon
      },
      '2015' =>
      {
        # https://abfevents.com.au/events/anot/2015/
        YEAR => 2015,
        CITY => 'Adelaide',
        DATE_START => '2015-04-30', # Thu
        DATE_END => '2015-05-04' # Mon
      },
      '2016' =>
      {
        # https://abfevents.com.au/events/anot/2016/
        YEAR => 2016,
        CITY => 'Adelaide',
        DATE_START => '2016-04-28', # Thu
        DATE_END => '2016-05-02' # Mon
      },
      '2017' =>
      {
        # https://abfevents.com.au/events/anot/2017/
        YEAR => 2017,
        CITY => 'Adelaide',
        DATE_START => '2017-05-04', # Thu
        DATE_END => '2017-05-08' # Mon
      },
      '2018' =>
      {
        # https://abfevents.com.au/events/anot/2018/
        YEAR => 2018,
        CITY => 'Adelaide',
        DATE_START => '2018-05-03', # Thu
        DATE_END => '2018-05-07' # Mon
      },
      '2019' =>
      {
        # https://abfevents.com.au/events/anot/2019/
        YEAR => 2019,
        CITY => 'Adelaide',
        DATE_START => '2019-05-02', # Thu
        DATE_END => '2019-05-06' # Mon
      },
      '2021' =>
      {
        # https://www.myabf.com.au/events/congress/view/4
        YEAR => 2021,
        CITY => 'Adelaide',
        DATE_START => '2021-04-29', # Thu
        DATE_END => '2021-05-03' # Mon
      },
      '2022' =>
      {
        # https://www.myabf.com.au/events/congress/view/155
        YEAR => 2022,
        CITY => 'Adelaide',
        DATE_START => '2022-04-28', # Thu
        DATE_END => '2022-05-02' # Mon
      },
      '2023' =>
      {
        # https://www.myabf.com.au/events/congress/view/493
        YEAR => 2023,
        CITY => 'Adelaide',
        DATE_START => '2023-05-04', # Thu
        DATE_END => '2023-05-08' # Mon
      },
      '2024' =>
      {
        # https://www.myabf.com.au/events/congress/view/1187
        YEAR => 2024,
        CITY => 'Adelaide',
        DATE_START => '2024-05-02', # Thu
        DATE_END => '2024-05-06' # Mon
      },
    }
  },

  'Australian Spring Nationals' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2004' =>
      {
        # https://abfevents.com.au/events/spnot/2004/results.asp
        YEAR => 2004,
        CITY => 'Sydney',
        DATE_START => '2004-11-11', # Thu
        DATE_END => '2004-11-18' # Thu
      },
      '2006' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2006&dir=sn
        YEAR => 2006,
        CITY => 'Sydney',
        DATE_START => '2006-10-18', # Wed
        DATE_END => '2006-10-26' # Thu
      },
      '2007' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2007&dir=sn
        YEAR => 2007,
        CITY => 'Sydney',
        DATE_START => '2007-10-24', # Wed
        DATE_END => '2007-11-01' # Thu
      },
      '2008' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2008&dir=sn
        YEAR => 2008,
        CITY => 'Sydney',
        DATE_START => '2008-10-22', # Wed
        DATE_END => '2008-10-30' # Thu
      },
      '2009' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2009&dir=sn
        YEAR => 2009,
        CITY => 'Sydney',
        DATE_START => '2009-10-21', # Wed
        DATE_END => '2009-10-29' # Thu
      },
      '2010' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2010&dir=sn
        YEAR => 2010,
        CITY => 'Sydney',
        DATE_START => '2010-10-20', # Wed
        DATE_END => '2010-10-28' # Thu
      },
      '2011' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2011&dir=sn
        YEAR => 2011,
        CITY => 'Sydney',
        DATE_START => '2011-10-19', # Wed
        DATE_END => '2011-10-27' # Thu
      },
      '2012' =>
      {
        # http://abfevents.com.au/events/results/results.asp?yr=2012&dir=sn
        YEAR => 2012,
        CITY => 'Sydney',
        DATE_START => '2012-10-24', # Wed
        DATE_END => '2012-11-01' # Thu
      },
      '2013' =>
      {
        # http://abfevents.com.au/events/spnot/2013/
        YEAR => 2013,
        CITY => 'Sydney',
        DATE_START => '2013-10-23', # Wed
        DATE_END => '2013-10-31' # Thu
      },
      '2014' =>
      {
        # http://abfevents.com.au/events/spnot/2014/
        YEAR => 2014,
        CITY => 'Sydney',
        DATE_START => '2014-10-29', # Wed
        DATE_END => '2014-11-06' # Thu
      },
      '2015' =>
      {
        # http://abfevents.com.au/events/spnot/2015/
        YEAR => 2015,
        CITY => 'Sydney',
        DATE_START => '2015-10-21', # Wed
        DATE_END => '2015-10-29' # Thu
      },
      '2016' =>
      {
        # http://abfevents.com.au/events/spnot/2016/
        YEAR => 2016,
        CITY => 'Sydney',
        DATE_START => '2016-10-19', # Wed
        DATE_END => '2016-10-27' # Thu
      },
      '2017' =>
      {
        # http://abfevents.com.au/events/spnot/2017/
        YEAR => 2017,
        CITY => 'Sydney',
        DATE_START => '2017-10-18', # Wed
        DATE_END => '2017-10-26' # Thu
      },
      '2018' =>
      {
        # http://abfevents.com.au/events/spnot/2018/
        YEAR => 2018,
        CITY => 'Sydney',
        DATE_START => '2018-10-17', # Wed
        DATE_END => '2018-10-25' # Thu
      },
      '2019' =>
      {
        # http://abfevents.com.au/events/spnot/2019/
        YEAR => 2019,
        CITY => 'Sydney',
        DATE_START => '2019-10-16', # Wed
        DATE_END => '2019-10-24' # Thu
      },
      '2021' =>
      {
        # https://www.myabf.com.au/events/congress/view/82
        YEAR => 2021,
        CITY => 'Online',
        DATE_START => '2021-10-14', # Thu
        DATE_END => '2021-10-24' # Sun
      },
      '2022' =>
      {
        # https://www.myabf.com.au/events/congress/view/39
        YEAR => 2022,
        CITY => 'Sydney',
        DATE_START => '2022-10-19', # Wed
        DATE_END => '2022-10-28' # Fri
      },
      '2023' =>
      {
        # https://www.myabf.com.au/events/congress/view/638
        YEAR => 2023,
        CITY => 'Sydney',
        DATE_START => '2023-10-18', # Wed
        DATE_END => '2023-10-25' # Wed
      },
      '2024' =>
      {
        # https://www.myabf.com.au/events/congress/view/967
        YEAR => 2024,
        CITY => 'Sydney',
        DATE_START => '2024-10-19', # Sat
        DATE_END => '2024-10-27' # Sun
      },
    }
  },

  'Australian Summer Festival' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2005' =>
      {
        # https://abfevents.com.au/events/not/2005/index.html
        YEAR => 2005,
        CITY => 'Canberra',
        DATE_START => '2005-01-11', # Tue
        DATE_END => '2005-01-25' # Tue
      },
      '2006' =>
      {
        # https://abfevents.com.au/events/not/2006/index.html
        YEAR => 2006,
        CITY => 'Canberra',
        DATE_START => '2006-01-18', # Wed
        DATE_END => '2006-01-30' # Mon
      },
      '2007' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=07SUMF&header=abf
        YEAR => 2007,
        CITY => 'Canberra',
        DATE_START => '2007-01-15', # Mon
        DATE_END => '2007-01-29' # Mon
      },
      '2008' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=08SUMF&header=abf
        YEAR => 2008,
        CITY => 'Canberra',
        DATE_START => '2008-01-14', # Mon
        DATE_END => '2008-01-28' # Mon
      },
      '2009' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=10SUMF&header=abf
        YEAR => 2009,
        CITY => 'Canberra',
        DATE_START => '2009-01-12', # Mon
        DATE_END => '2009-01-26' # Mon
      },
      '2010' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=10SUMF&header=abf
        YEAR => 2010,
        CITY => 'Canberra',
        DATE_START => '2010-01-11', # Mon
        DATE_END => '2010-01-25' # Mon
      },
      '2011' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=11sumf&header=abf
        YEAR => 2011,
        CITY => 'Canberra',
        DATE_START => '2011-01-17', # Mon
        DATE_END => '2011-01-31' # Mon
      },
      '2012' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=12sumf&header=abf
        YEAR => 2012,
        CITY => 'Canberra',
        DATE_START => '2012-01-16', # Mon
        DATE_END => '2012-01-29' # Sun
      },
      '2013' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=13sumf&header=abf
        YEAR => 2013,
        CITY => 'Canberra',
        DATE_START => '2013-01-15', # Tue
        DATE_END => '2013-01-27' # Sun
      },
      '2014' =>
      {
        # No link.
        YEAR => 2014,
        CITY => 'Canberra',
        DATE_START => '2014-01-14', # Tue
        DATE_END => '2014-01-26' # Sun
      },
      '2015' =>
      {
        # No link.
        YEAR => 2015,
        CITY => 'Canberra',
        DATE_START => '2015-01-13', # Tue
        DATE_END => '2015-01-25' # Sun
      },
      '2016' =>
      {
        # No link.
        YEAR => 2016,
        CITY => 'Canberra',
        DATE_START => '2016-01-12', # Tue
        DATE_END => '2016-01-24' # Sun
      },
      '2017' =>
      {
        # https://abfevents.com.au/events/not/2017/index.asp
        YEAR => 2017,
        CITY => 'Canberra',
        DATE_START => '2017-01-10', # Tue
        DATE_END => '2017-01-22' # Sun
      },
      '2018' =>
      {
        # https://abfevents.com.au/events/not/2018/
        YEAR => 2018,
        CITY => 'Canberra',
        DATE_START => '2018-01-10', # Wed
        DATE_END => '2018-01-21' # Sun
      },
      '2019' =>
      {
        # https://abfevents.com.au/events/not/2019/
        YEAR => 2019,
        CITY => 'Canberra',
        DATE_START => '2019-01-09', # Wed
        DATE_END => '2019-01-20' # Sun
      },
      '2020' =>
      {
        # https://abfevents.com.au/events/not/2020/
        YEAR => 2020,
        CITY => 'Canberra',
        DATE_START => '2020-01-08', # Wed
        DATE_END => '2020-01-19' # Sun
      },
      '2022' =>
      {
        # https://www.myabf.com.au/events/congress/view/122
        YEAR => 2022,
        CITY => 'Online',
        DATE_START => '2022-01-13', # Thu
        DATE_END => '2022-01-23' # Sun
      },
      '2023' =>
      {
        # https://www.myabf.com.au/events/congress/view/343
        YEAR => 2024,
        CITY => 'Canberra',
        DATE_START => '2024-01-10', # Wed
        DATE_END => '2024-01-22' # Mon
      },
      '2024' =>
      {
        # https://www.myabf.com.au/events/congress/view/790
        YEAR => 2024,
        CITY => 'Canberra',
        DATE_START => '2024-01-09', # Tue
        DATE_END => '2024-01-21' # Sun
      },
    }
  },

  'Australian Youth Week' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2006' =>
      {
        # https://abfevents.com.au/youth/events/ayc/2007/results.asp
        YEAR => 2006,
        CITY => 'Canberra',
        DATE_START => '2006-01-14', # Sat
        DATE_END => '2006-01-22' # Sun
      },
      '2007' =>
      {
        # https://abfevents.com.au/youth/events/ayc/2007/results.asp
        YEAR => 2007,
        CITY => 'Canberra',
        DATE_START => '2007-01-13', # Sat
        DATE_END => '2007-01-20' # Sat
      },
      '2008' =>
      {
        # https://abfevents.com.au/youth/events/ayc/2008/results.asp
        YEAR => 2008,
        CITY => 'Canberra',
        DATE_START => '2008-01-12', # Sat
        DATE_END => '2008-01-19' # Sat
      },
      '2009' =>
      {
        # https://abfevents.com.au/youth/events/ayc/2009/results.asp
        YEAR => 2009,
        CITY => 'Canberra',
        DATE_START => '2009-01-10', # Sat
        DATE_END => '2009-01-17' # Sat
      },
      '2010' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2010&dir=ayc
        YEAR => 2010,
        CITY => 'Canberra',
        DATE_START => '2010-01-09', # Sat
        DATE_END => '2010-01-16' # Sat
      },
      '2011' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2011&dir=ayc
        YEAR => 2011,
        CITY => 'Canberra',
        DATE_START => '2011-01-15', # Sat
        DATE_END => '2011-01-23' # Sun
      },
      '2012' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2012&dir=ayc
        YEAR => 2012,
        CITY => 'Canberra',
        DATE_START => '2012-01-14', # Sat
        DATE_END => '2012-01-22' # Sun
      },
      '2013' =>
      {
        # https://abfevents.com.au/youth/events/ayc/2013/
        YEAR => 2013,
        CITY => 'Canberra',
        DATE_START => '2013-01-12', # Sat
        DATE_END => '2013-01-20' # Sun
      },
      '2014' =>
      {
        # https://abfevents.com.au/events/ayc/2014/
        YEAR => 2014,
        CITY => 'Canberra',
        DATE_START => '2014-01-11', # Sat
        DATE_END => '2014-01-19' # Sun
      },
      '2015' =>
      {
        # https://abfevents.com.au/events/ayc/2015/
        YEAR => 2015,
        CITY => 'Canberra',
        DATE_START => '2015-01-10', # Sat
        DATE_END => '2015-01-17' # Sat
      },
      '2016' =>
      {
        # https://abfevents.com.au/events/ayc/2016/
        YEAR => 2016,
        CITY => 'Canberra',
        DATE_START => '2016-01-09', # Sat
        DATE_END => '2016-01-15' # Fri
      },
      '2017' =>
      {
        # https://abfevents.com.au/events/ayc/2017/
        YEAR => 2017,
        CITY => 'Canberra',
        DATE_START => '2017-01-07', # Sat
        DATE_END => '2017-01-13' # Fri
      },
      '2018' =>
      {
        # https://abfevents.com.au/events/ayc/2018/
        YEAR => 2018,
        CITY => 'Canberra',
        DATE_START => '2018-01-06', # Sat
        DATE_END => '2018-01-12' # Fri
      },
      '2019' =>
      {
        # https://abfevents.com.au/events/ayc/2019/
        YEAR => 2019,
        CITY => 'Canberra',
        DATE_START => '2019-01-05', # Sat
        DATE_END => '2019-01-11' # Fri
      },
      '2020' =>
      {
        # https://abfevents.com.au/events/ayc/2020/
        YEAR => 2020,
        CITY => 'Canberra',
        DATE_START => '2020-01-04', # Sat
        DATE_END => '2020-01-10' # Fri
      },
      '2023' =>
      {
        # https://www.myabf.com.au/events/congress/view/479
        YEAR => 2023,
        CITY => 'Canberra',
        DATE_START => '2023-01-07', # Sat
        DATE_END => '2023-01-13' # Fri
      },
      '2024' =>
      {
        # https://abfevents.com.au/events/ayc/2024/
        YEAR => 2024,
        CITY => 'Canberra',
        DATE_START => '2024-01-06', # Sat
        DATE_END => '2024-01-12' # Fri
      },
    }
  },

  'Gold Coast Congress' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS => 
    {
      '2005' =>
      {
        # https://abfevents.com.au/events/gcc/2005.html
        YEAR => 2005,
        CITY => 'Surfers Paradise',
        DATE_START => '2005-02-19', # Sat
        DATE_END => '2005-02-26' # Sat
      },
      '2006' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=06SURF&header=abf
        YEAR => 2006,
        CITY => 'Gold Coast',
        DATE_START => '2006-02-18', # Sat
        DATE_END => '2006-02-25' # Sat
      },
      '2007' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=07SURF&header=abf
        YEAR => 2007,
        CITY => 'Gold Coast',
        DATE_START => '2007-02-17', # Sat
        DATE_END => '2007-02-24' # Sat
      },
      '2008' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=08GCCC&header=abf
        YEAR => 2008,
        CITY => 'Gold Coast',
        DATE_START => '2008-02-17', # Sun
        DATE_END => '2008-03-01' # Sat
      },
      '2009' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2009
        YEAR => 2009,
        CITY => 'Gold Coast',
        DATE_START => '2009-02-28', # Sat
        DATE_END => '2009-03-07' # Sat
      },
      '2010' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2010
        YEAR => 2010,
        CITY => 'Gold Coast',
        DATE_START => '2010-02-27', # Sat
        DATE_END => '2010-03-06' # Sat
      },
      '2011' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2011
        YEAR => 2011,
        CITY => 'Broadbeach',
        DATE_START => '2011-02-26', # Sat
        DATE_END => '2011-03-05' # Sat
      },
      '2012' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2012
        YEAR => 2012,
        CITY => 'Broadbeach',
        DATE_START => '2012-02-25', # Sat
        DATE_END => '2012-03-03' # Sat
      },
      '2013' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2013
        YEAR => 2013,
        CITY => 'Broadbeach',
        DATE_START => '2013-02-23', # Sat
        DATE_END => '2013-03-02' # Sat
      },
      '2014' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2014
        YEAR => 2014,
        CITY => 'Broadbeach',
        DATE_START => '2014-02-22', # Sat
        DATE_END => '2014-03-01' # Sat
      },
      '2015' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2015
        YEAR => 2015,
        CITY => 'Broadbeach',
        DATE_START => '2015-02-21', # Sat
        DATE_END => '2015-02-28' # Sat
      },
      '2016' =>
      {
        # https://abfevents.com.au/events/results/gcc.asp?yr=2016
        YEAR => 2016,
        CITY => 'Broadbeach',
        DATE_START => '2016-02-19', # Fri
        DATE_END => '2016-02-27' # Sat
      },
    }
  },

  'Victor Champion Cup' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',

    EDITIONS =>
    {
      '2004' =>
      {
        # https://www.abfevents.com.au/events/vcc/2004/
        CITY => 'Melbourne',
        YEAR => 2004,
        DATE_START => '2004-06-10', # Thu
        DATE_END => '2004-06-14' # Mon
      },
      '2005' =>
      {
        # https://www.abfevents.com.au/events/vcc/2005/
        CITY => 'Melbourne',
        YEAR => 2005,
        DATE_START => '2005-06-09', # Thu
        DATE_END => '2005-06-13' # Mon
      },
      '2006' =>
      {
        # https://www.abfevents.com.au/events/vcc/2006/
        CITY => 'Melbourne',
        YEAR => 2006,
        DATE_START => '2006-06-08', # Thu
        DATE_END => '2006-06-12' # Mon
      },
      '2007' =>
      {
        # https://www.abfevents.com.au/events/vcc/2007/
        CITY => 'Melbourne',
        YEAR => 2007,
        DATE_START => '2007-06-07', # Thu
        DATE_END => '2007-06-11' # Mon
      },
      '2008' =>
      {
        # https://www.abfevents.com.au/events/vcc/2008/
        CITY => 'Melbourne',
        YEAR => 2008,
        DATE_START => '2008-06-05', # Thu
        DATE_END => '2008-06-09' # Mon
      },
      '2009' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=09VCCC&header=abf
        CITY => 'Melbourne',
        YEAR => 2009,
        DATE_START => '2009-06-04', # Thu
        DATE_END => '2009-06-08' # Mon
      },
      '2010' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=vccc10&header=abf
        CITY => 'Melbourne',
        YEAR => 2010,
        DATE_START => '2010-06-10', # Thu
        DATE_END => '2010-06-14' # Mon
      },
      '2011' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2011&dir=vcc
        CITY => 'Melbourne',
        YEAR => 2011,
        DATE_START => '2011-06-09', # Thu
        DATE_END => '2011-06-13' # Mon
      },
      '2012' =>
      {
        CITY => 'Melbourne',
        YEAR => 2012,
        DATE_START => '2012-06-07', # Thu
        DATE_END => '2012-06-11' # Mon
      },
      '2013' =>
      {
        # https://www.abfevents.com.au/events/vcc/2013/
        CITY => 'Melbourne',
        YEAR => 2013,
        DATE_START => '2013-06-06', # Thu
        DATE_END => '2013-06-10' # Mon
      },
      '2014' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?header=abf&code=14VCCC
        CITY => 'Melbourne',
        YEAR => 2014,
        DATE_START => '2014-06-05', # Thu
        DATE_END => '2014-06-09' # Mon
      },
      '2015' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2015&dir=vcc
        CITY => 'Melbourne',
        YEAR => 2015,
        DATE_START => '2015-06-04', # Thu
        DATE_END => '2015-06-08' # Mon
      },
      '2016' =>
      {
        # https://www.abfevents.com.au/events/vcc/2016/
        CITY => 'Melbourne',
        YEAR => 2016,
        DATE_START => '2016-06-09', # Thu
        DATE_END => '2016-06-13' # Mon
      },
      '2017' =>
      {
        # https://www.abfevents.com.au/events/vcc/2017/
        CITY => 'Melbourne',
        YEAR => 2017,
        DATE_START => '2017-06-08', # Thu
        DATE_END => '2017-06-12' # Mon
      },
      '2018' =>
      {
        # https://www.abfevents.com.au/events/vcc/2018/
        CITY => 'Melbourne',
        YEAR => 2018,
        DATE_START => '2018-06-07', # Thu
        DATE_END => '2018-06-11' # Mon
      },
      '2019' =>
      {
        # https://www.abfevents.com.au/events/vcc/2019/
        CITY => 'Melbourne',
        YEAR => 2019,
        DATE_START => '2019-06-06', # Thu
        DATE_END => '2019-06-10' # Mon
      },
      '2020' =>
      {
        # https://www.abf.com.au/event/2020-victor-champion-cup/
        # https://www.abfevents.com.au/events/vcc/2020/
        CITY => 'Melbourne',
        YEAR => 2020,
        DATE_START => '2020-06-04', # Thu
        DATE_END => '2020-06-08' # Mon
      },
      '2021' =>
      {
        # https://www.abf.com.au/event/2021-victor-champion-cup/
        CITY => 'Melbourne',
        YEAR => 2021,
        DATE_START => '2021-08-26', # Thu
        DATE_END => '2021-08-29' # Sun
      },
      '2022' =>
      {
        # https://www.abf.com.au/event/2022-victor-champion-cup/
        CITY => 'Melbourne',
        YEAR => 2022,
        DATE_START => '2022-09-06', # Tue
        DATE_END => '2022-09-13' # Tue
      },
      '2023' =>
      {
        # https://www.abf.com.au/event/2023-victor-champion-cup/
        CITY => 'Moonee Ponds',
        YEAR => 2023,
        DATE_START => '2023-06-08', # Thu
        DATE_END => '2023-06-12' # Mon
      },
      '2024' =>
      {
        # https://www.abf.com.au/event/2024-victor-champion-cup/
        CITY => 'Moonee Ponds',
        YEAR => 2024,
        DATE_START => '2024-06-06', # Thu
        DATE_END => '2024-06-10' # Mon
      },
    }
  },
);

my %TOURNAMENTS_AUSTRALIA =
(
  'Altman Swiss Pairs',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Pairs',
    MOVEMENT => 'Swiss',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-13', # Wed
            DATE_END => '2011-04-13' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-20', # Wed
            DATE_END => '2011-04-20' # Wed
          },
          'C2' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-27', # Wed
            DATE_END => '2011-04-27' # Wed
          },
          'C3' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-04', # Wed
            DATE_END => '2011-05-04' # Wed
          },
        }
      },
    }
  },

  'Australian Autumn National Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2007-05-14', # Mon
            DATE_END => '2007-05-14' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Rof16',
            DATE_START => '2007-05-14', # Mon
            DATE_END => '2007-05-14' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-14', # Mon
            DATE_END => '2007-05-14' # Mon
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2008-05-05', # Mon
            DATE_END => '2008-05-05' # Mon
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-05-05', # Mon
            DATE_END => '2008-05-05' # Mon
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-03', # Sun
            DATE_END => '2009-05-04' # Mon
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-05-02', # Sun
            DATE_END => '2010-05-03' # Mon
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-01', # Sun
            DATE_END => '2011-05-02' # Mon
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-29', # Sun
            DATE_END => '2012-04-30' # Mon
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-06', # Mon
            DATE_END => '2013-05-06' # Mon
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-05-05', # Mon
            DATE_END => '2014-05-05' # Mon
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-04', # Mon
            DATE_END => '2015-05-04' # Mon
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Australian Autumn Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-02', # Mon
            DATE_END => '2016-05-02' # Mon
          } 
        }
      },
    }
  },

  'Australian Grand National Open Teams',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        # https://abfevents.com.au/events/gnot/2006/index.html
        CITY => 'Banora Point',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-11-19', # Sun
            DATE_END => '2006-11-19' # Sun
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-11-20', # Mon
            DATE_END => '2006-11-20' # Mon
          } 
        }
      },
      '2007' =>
      {
        # https://abfevents.com.au/events/gnot/2007/index.html
        CITY => 'Banora Point',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-11-30', # Fri
            DATE_END => '2007-11-30' # Fri
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-12-01', # Sat
            DATE_END => '2007-12-01' # Sat
          } 
        }
      },
      '2008' =>
      {
        # https://abfevents.com.au/events/gnot/2008/index.html
        CITY => 'Banora Point',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-11-28', # Fri
            DATE_END => '2008-12-01' # Mon
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-11-28', # Fri
            DATE_END => '2008-12-01' # Mon
          } 
        }
      },
      '2009' =>
      {
        # https://abfevents.com.au/events/gnot/2009/results.htm
        CITY => 'Banora Point',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Rof6',
            major => 'ROUND',
            DATE_START => '2009-11-27', # Fri
            DATE_END => '2009-11-27' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2009-11-28', # Sat
            DATE_END => '2009-11-29' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2009-11-30', # Mon
            DATE_END => '2009-11-30' # Mon
          } 
        }
      },
      '2010' =>
      {
        # https://abfevents.com.au/events/gnot/2010/results.htm
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-11-27', # Sat
            DATE_END => '2010-11-28' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-11-28', # Sun
            DATE_END => '2010-11-29' # Mon
          },
        }
      },
      '2011' =>
      {
        # https://abfevents.com.au/events/gnot/2011/results.htm
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-11-25', # Fri
            DATE_END => '2011-11-28' # Mon
          } 
        }
      },
      '2012' =>
      {
        # http://abfevents.com.au/events/gnot/2012/results.html
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-11-30', # Fri
            DATE_END => '2012-12-03' # Mon
          } 
        }
      },
      '2013' =>
      {
        # http://abfevents.com.au/events/gnot/2013/
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-11-29', # Fri
            DATE_END => '2013-12-04' # Wed
          } 
        }
      },
      '2014' =>
      {
        # http://abfevents.com.au/events/gnot/2014/
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-11-28', # Fri
            DATE_END => '2014-12-01' # Mon
          } 
        }
      },
      '2015' =>
      {
        # http://abfevents.com.au/events/gnot/2015/
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-11-27', # Fri
            DATE_END => '2015-11-30' # Mon
          } 
        }
      },
      '2016' =>
      {
        # http://abfevents.com.au/events/gnot/2016/
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-11-25', # Fri
            DATE_END => '2016-11-28' # Mon
          } 
        }
      },
      '2017' =>
      {
        # http://abfevents.com.au/events/gnot/2017/
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-11-24', # Fri
            DATE_END => '2017-11-27' # Mon
          } 
        }
      },
      '2018' =>
      {
        # http://abfevents.com.au/events/gnot/2018/
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-11-30', # Fri
            DATE_END => '2018-12-03' # Mon
          } 
        }
      },
      '2019' =>
      {
        # http://abfevents.com.au/events/gnot/2019/
        CITY => 'Tweed Heads',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-11-29', # Fri
            DATE_END => '2019-12-02' # Mon
          } 
        }
      },
      '2021' =>
      {
        # http://abfevents.com.au/events/gnot/2021/
        CITY => 'Online',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2021,
            DATE_START => '2021-11-26', # Fri
            DATE_END => '2021-11-28' # Sun
          } 
        }
      },
      '2022' =>
      {
        # https://abfevents.com.au/events/gnot/2022/
        CITY => 'Brisbane',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-11-25', # Fri
            DATE_END => '2022-11-28' # Mon
          } 
        }
      },
      '2023' =>
      {
        # https://abfevents.com.au/events/gnot/2023/
        CITY => 'Brisbane',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-12-01', # Fri
            DATE_END => '2023-12-04' # Mon
          } 
        }
      },
      '2024' =>
      {
        # https://abfevents.com.au/events/gnot/2024/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-11-23', # Sat
            DATE_END => '2024-11-24' # Sun
          } 
        }
      },
    }
  },

  'Australian Junior Teams',
  {
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-08-08', # Fri
            DATE_END => '2008-08-08' # Fri
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-07-17', # Fri
            DATE_END => '2009-07-18' # Sat
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-07-22', # Thu
            DATE_END => '2010-07-23' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-07-28', # Thu
            DATE_END => '2011-07-28' # Thu
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-07-12', # Thu
            DATE_END => '2012-07-13' # Fri
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-07-13', # Sun
            DATE_END => '2014-07-18' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-16', # Thu
            DATE_END => '2015-07-17' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-07-01', # Fri
            DATE_END => '2016-07-01' # Fri
          } 
        }
      },
    }
  },

  'Australian National Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2005-01-22', # Sat
            DATE_END => '2005-01-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-01-23', # Sun
            DATE_END => '2005-01-23' # Sun
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-01-23', # Sun
            DATE_END => '2005-01-23' # Sun
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-01-25', # Tue
            DATE_END => '2005-01-25' # Tue
          },
        }
      },
      '2006' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Qualifying',
            major => 'SEGMENT',
            DATE_START => '2006-01-28', # Sat
            DATE_END => '2006-01-30' # Mon
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-01-28', # Sat
            DATE_END => '2006-01-30' # Mon
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-01-28', # Sat
            DATE_END => '2006-01-30' # Mon
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Rof16',
            DATE_START => '2007-01-28', # Sun
            DATE_END => '2007-01-29' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-01-28', # Sun
            DATE_END => '2007-01-29' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-01-28', # Sun
            DATE_END => '2007-01-29' # Mon
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-01-28', # Sun
            DATE_END => '2007-01-29' # Mon
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2008-01-25', # Fri
            DATE_END => '2008-01-25' # Fri
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-01-27', # Sun
            DATE_END => '2008-01-27' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-01-27', # Sun
            DATE_END => '2008-01-27' # Sun
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-01-28', # Mon
            DATE_END => '2008-01-28' # Mon
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Rof12',
            major => 'SEGMENT',
            DATE_START => '2010-01-22', # Fri
            DATE_END => '2010-01-22' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-22', # Fri
            DATE_END => '2010-01-23' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-23', # Sat
            DATE_END => '2010-01-24' # Sun
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-24', # Sun
            DATE_END => '2010-01-25' # Mon
          },
        }
      },
      '2011' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Rof20',
            major => 'SEGMENT',
            DATE_START => '2011-01-28', # Fri
            DATE_END => '2011-01-28' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2011-01-28', # Fri
            DATE_END => '2011-01-29' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-01-29', # Sat
            DATE_END => '2011-01-30' # Sun
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-01-30', # Sun
            DATE_END => '2011-01-31' # Mon
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-26', # Thu
            DATE_END => '2012-01-27' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-01-27', # Fri
            DATE_END => '2012-01-28' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-01-28', # Sat
            DATE_END => '2012-01-29' # Sun
          },
        }
      },
      '2013' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-01-25', # Fri
            DATE_END => '2013-01-25' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-01-26', # Sat
            DATE_END => '2013-01-26' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-01-27', # Sun
            DATE_END => '2013-01-27' # Sun
          },
        }
      },
      '2014' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-24', # Fri
            DATE_END => '2014-01-24' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-25' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-26', # Sun
            DATE_END => '2014-01-26' # Sun
          }
        }
      },
      '2015' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-01-23', # Fri
            DATE_END => '2015-01-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-01-24', # Sat
            DATE_END => '2015-01-24' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-01-25', # Sun
            DATE_END => '2015-01-25' # Sun
          }
        }
      },
      '2016' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-22', # Fri
            DATE_END => '2016-01-22' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-23', # Sat
            DATE_END => '2016-01-23' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-01-24', # Sun
            DATE_END => '2016-01-24' # Sun
          },
        }
      },
    }
  },

  'Australian National Senior Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-01-20', # Sun
            DATE_END => '2008-01-25' # Fri
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-01-13', # Wed
            DATE_END => '2010-01-15' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-15', # Fri
            DATE_END => '2010-01-16' # Sat
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-16', # Sat
            DATE_END => '2010-01-17' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-01-22', # Sat
            DATE_END => '2011-01-23' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-01-20', # Fri
            DATE_END => '2012-01-22' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-01-19', # Sat
            DATE_END => '2013-01-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-01-20', # Sun
            DATE_END => '2013-01-20' # Sun
          },
        }
      },
      '2014' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-18', # Sat
            DATE_END => '2014-01-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-18', # Sat
            DATE_END => '2014-01-19' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-01-17', # Sat
            DATE_END => '2015-01-17' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-01-18', # Sun
            DATE_END => '2015-01-18' # Sun
          },
        }
      },
      '2016' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-16', # Sat
            DATE_END => '2016-01-16' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-01-16', # Sat
            DATE_END => '2016-01-17' # Sun
          } 
        }
      },
    }
  },

  'Australian National Women Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-01-20', # Sun
            DATE_END => '2008-01-20' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-01-16', # Sat
            DATE_END => '2010-01-16' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-01-16', # Sat
            DATE_END => '2010-01-17' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-01-22', # Sat
            DATE_END => '2011-01-23' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-01-21', # Sat
            DATE_END => '2012-01-22' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-01-19', # Sat
            DATE_END => '2013-01-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-01-20', # Sun
            DATE_END => '2013-01-20' # Sun
          }
        }
      },
      '2014' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-18', # Sat
            DATE_END => '2014-01-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-18', # Sat
            DATE_END => '2014-01-19' # Sun
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Australian Summer Festival',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-01-17', # Sat
            DATE_END => '2015-01-17' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-01-17', # Sat
            DATE_END => '2015-01-18' # Sun
          },
        }
      },
      '2015B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-16', # Thu
            DATE_END => '2015-07-17' # Fri
          },
        }
      },
      '2016' =>
      {
        MEET => 'Australian Summer Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-01-16', # Sat
            DATE_END => '2016-01-16' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-01-17', # Sun
            DATE_END => '2016-01-17' # Sun
          } 
        }
      },
    }
  },

  'Australian Open Teams',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005A' =>
      {
        # https://abfevents.com.au/events/results/2005.html
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=05PLAY&abf=yes
        CITY => 'Sydney',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-03-21', # Mon
            DATE_END => '2005-03-21' # Mon
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-03-21', # Mon
            DATE_END => '2005-03-21' # Mon
          } 
        }
      },
      '2005B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2005',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            DATE_START => '2005-07-29', # Fri
            DATE_END => '2005-07-29' # Fri
          } 
        }
      },
      '2006' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=06PLAY&abf=yes
        CITY => 'Sydney',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-03-23', # Thu
            DATE_END => '2006-03-27' # Mon
          } 
        }
      },
      '2007' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=07PLAY&header=abf
        CITY => 'Sydney',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-03-22', # Thu
            DATE_END => '2007-03-26' # Mon
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-03-22', # Thu
            DATE_END => '2007-03-26' # Mon
          } 
        }
      },
      '2008A' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=08PLAY&header=abf
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-03-26', # Wed
            DATE_END => '2008-03-30' # Sun
          } 
        }
      },
      '2008B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2008',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-08-08', # Fri
            DATE_END => '2008-08-08' # Fri
          } 
        }
      },
      '2009A' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=09PLAY&header=abf
        CITY => 'Sydney',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-23', # Mon
            DATE_END => '2009-03-24' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-24', # Tue
            DATE_END => '2009-03-24' # Tue
          } 
        }
      },
      '2009B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-07-17', # Fri
            DATE_END => '2009-07-18' # Sat
          } 
        }
      },
      '2010A' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=10PLAY&header=abf
        CITY => 'Sydney',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-03-20', # Sat
            DATE_END => '2010-03-24' # Wed
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-07-19', # Mon
            DATE_END => '2010-07-23' # Fri
          } 
        }
      },
      '2011A' =>
      {
        # https://abfevents.com.au/events/playoffs/2011/results/
        CITY => 'Sydney',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-03-26', # Sat
            DATE_END => '2011-03-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Repechage',
            major => 'ROUND',
            DATE_START => '2011-03-27', # Sun
            DATE_END => '2011-03-28' # Mon
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-28', # Mon
            DATE_END => '2011-03-29' # Tue
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-29', # Tue
            DATE_END => '2011-03-30' # Wed
          },
        }
      },
      '2011B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2011',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-07-28', # Thu
            DATE_END => '2011-07-28' # Thu
          } 
        }
      },
      '2012A' =>
      {
        # http://abfevents.com.au/events/results/results.asp?yr=2012&dir=owp
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-04-02', # Mon
            DATE_END => '2012-04-03' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-03', # Tue
            DATE_END => '2012-04-05' # Thu
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-07-12', # Thu
            DATE_END => '2012-07-13' # Fri
          } 
        }
      },
      '2012C' =>
      {
        # http://abfevents.com.au/events/playoffs/2013/OW/results.asp
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-12-11', # Tue
            DATE_END => '2012-12-11' # Tue
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-12', # Wed
            DATE_END => '2012-12-13' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-11', # Thu
            DATE_END => '2013-07-12' # Fri
          } 
        }
      },
      '2014A' =>
      {
        # http://abfevents.com.au/events/playoffs/2014/ow/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-02-05', # Wed
            DATE_END => '2014-02-09' # Sun
          } 
        }
      },
      '2014B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-07-13', # Sun
            DATE_END => '2014-07-18' # Fri
          } 
        }
      },
      '2015A' =>
      {
        # http://abfevents.com.au/events/playoffs/2015/OW/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-03', # Tue
            DATE_END => '2015-02-04' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-04', # Wed
            DATE_END => '2015-02-05' # Thu
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-16', # Thu
            DATE_END => '2015-07-17' # Fri
          },
        }
      },
      '2016A' =>
      {
        # http://abfevents.com.au/events/playoffs/2016/open/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-02-09', # Tue
            DATE_END => '2016-02-09' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-02-10', # Wed
            DATE_END => '2016-02-11' # Thu
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-07-01', # Fri
            DATE_END => '2016-07-01' # Fri
          } 
        }
      },
      '2016C' =>
      {
        # http://abfevents.com.au/events/playoffs/2017/open/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-11-12', # Sat
            DATE_END => '2016-11-17' # Thu
          } 
        }
      },
      '2017' =>
      {
        # http://abfevents.com.au/events/playoffs/2018/open/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-11-12', # Sun
            DATE_END => '2017-11-16' # Thu
          } 
        }
      },
      '2018' =>
      {
        # http://abfevents.com.au/events/playoffs/2019/open/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-11-10', # Sat
            DATE_END => '2018-11-15' # Thu
          } 
        }
      },
      '2019' =>
      {
        # http://abfevents.com.au/events/playoffs/2020/open/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-11-09', # Sat
            DATE_END => '2019-11-14' # Thu
          } 
        }
      },
      '2022A' =>
      {
        # http://abfevents.com.au/events/playoffs/2022/ows/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-04-18', # Mon
            DATE_END => '2022-04-23' # Sat
          } 
        }
      },
      '2022B' =>
      {
        # https://abfevents.com.au/events/playoffs/2023/open/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-11-12', # Sat
            DATE_END => '2022-11-17' # Thu
          } 
        }
      },
      '2023' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2024&dir=opo
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2023,
            DATE_START => '2023-11-11', # Sat
            DATE_END => '2023-11-16' # Thu
          } 
        }
      },
      '2024' =>
      {
        # https://abfevents.com.au/events/playoffs/2025/open/
        CITY => 'Canberra',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2024,
            DATE_START => '2024-11-16', # Sat
            DATE_END => '2024-11-21' # Thu
          } 
        }
      },
    }
  },

  'Australian Senior Pairs',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2010' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2010&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-04-07', # Wed
            DATE_END => '2010-04-11' # Sun
          } 
        }
      },
      '2014' =>
      {
        # http://abfevents.com.au/events/playoffs/2014/seniors/
        CITY => 'Coogee',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-04-07', # Mon
            DATE_END => '2014-04-08' # Tue
          } 
        }
      },
    }
  },

  'Australian Senior Teams',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2006' =>
      {
        # http://www.abf.com.au/events/results/results.asp?yr=2006&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'STAGE',
            minor => 'ROUND',
            DATE_START => '2006-04-20', # Thu
            DATE_END => '2006-04-24' # Mon
          } 
        }
      },
      '2007' =>
      {
        # http://www.abf.com.au/events/results/results.asp?yr=2007&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2007-04-22', # Sun
            DATE_END => '2007-04-22' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-04-19', # Thu
            DATE_END => '2007-04-23' # Mon
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-04-19', # Thu
            DATE_END => '2007-04-23' # Mon
          }
        }
      },
      '2008A' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2008&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-04-09', # Wed
            DATE_END => '2008-04-13' # Sun
          } 
        }
      },
      '2008B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2008',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-08-08', # Fri
            DATE_END => '2008-08-08' # Fri
          } 
        }
      },
      '2009' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2009&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-04-18', # Sat
            DATE_END => '2009-04-19' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-04-19', # Sun
            DATE_END => '2009-04-20' # Mon
          } 
        }
      },
      '2010A' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2010&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-04-07', # Wed
            DATE_END => '2010-04-11' # Sun
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-07-19', # Mon
            DATE_END => '2010-07-23' # Fri
          } 
        }
      },
      '2011A' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2011&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-04-07', # Thu
            DATE_END => '2011-04-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-04-08', # Fri
            DATE_END => '2011-04-09' # Sat
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-04-09', # Sat
            DATE_END => '2011-04-10' # Sun
          },
        }
      },
      '2011B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2011',
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
      '2012A' =>
      {
        # http://abfevents.com.au/events/results/results.asp?yr=2012&dir=spo
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'SEGMENT',
            DATE_START => '2012-04-18', # Wed
            DATE_END => '2012-04-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-04-20', # Fri
            DATE_END => '2012-04-22' # Sun
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-07-12', # Thu
            DATE_END => '2012-07-13' # Fri
          } 
        }
      },
      '2013A' =>
      {
        # http://abfevents.com.au/events/playoffs/2013/seniors/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-02-13', # Wed
            DATE_END => '2013-02-17' # Sun
          } 
        }
      },
      '2013B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-11', # Thu
            DATE_END => '2013-07-12' # Fri
          } 
        }
      },
      '2014' =>
      {
        # http://abfevents.com.au/events/playoffs/2014/seniors/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-04-04', # Fri
            DATE_END => '2014-04-08' # Tue
          } 
        }
      },
      '2015A' =>
      {
        # http://abfevents.com.au/events/playoffs/2015/seniors/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-13', # Fri
            DATE_END => '2015-03-18' # Wed
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-16', # Thu
            DATE_END => '2015-07-17' # Fri
          } 
        }
      },
      '2016A' =>
      {
        # http://abfevents.com.au/events/playoffs/2016/SW/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-12', # Sat
            DATE_END => '2016-03-17' # Thu
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-07-01', # Fri
            DATE_END => '2016-07-01' # Fri
          } 
        }
      },
      '2016C' =>
      {
        # http://abfevents.com.au/events/playoffs/2017/SW/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-12-03', # Sat
            DATE_END => '2016-12-08' # Thu
          } 
        }
      },
      '2017' =>
      {
        # http://abfevents.com.au/events/playoffs/2018/sw/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-12-03', # Sun
            DATE_END => '2017-12-07' # Thu
          } 
        }
      },
      '2018' =>
      {
        # http://abfevents.com.au/events/playoffs/2019/SW/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-12-08', # Sat
            DATE_END => '2018-12-13' # Thu
          } 
        }
      },
      '2019' =>
      {
        # http://abfevents.com.au/events/playoffs/2020/sw/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-12-07', # Sat
            DATE_END => '2019-12-12' # Thu
          } 
        }
      },
      '2022' =>
      {
        # http://abfevents.com.au/events/playoffs/2022/ows/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-04-18', # Mon
            DATE_END => '2022-04-23' # Sat
          } 
        }
      },
    }
  },

  'Australian Spring Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2004-11-18', # Thu
            DATE_END => '2004-11-18' # Thu
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-10-31', # Wed
            DATE_END => '2007-10-31' # Wed
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-10-30', # Thu
            DATE_END => '2008-10-30' # Thu
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-10-24', # Sat
            DATE_END => '2009-10-25' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-23', # Sat
            DATE_END => '2010-10-28' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-10-21', # Fri
            DATE_END => '2011-10-21' # Fri
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-22', # Sat
            DATE_END => '2011-10-22' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-10-27', # Sat
            DATE_END => '2012-10-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-10-28', # Sun
            DATE_END => '2012-10-28' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-26', # Sat
            DATE_END => '2013-10-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-27', # Sun
            DATE_END => '2013-10-27' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-11-01', # Sat
            DATE_END => '2014-11-01' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-02', # Sun
            DATE_END => '2014-11-02' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-10-24', # Sat
            DATE_END => '2015-10-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-25', # Sun
            DATE_END => '2015-10-25' # Sun
          } 
        }
      },
    }
  },

  'Australian Spring Senior Teams',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-11-01', # Thu
            DATE_END => '2007-11-01' # Thu
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-10-30', # Thu
            DATE_END => '2008-10-30' # Thu
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-10-28', # Wed
            DATE_END => '2009-10-29' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-27', # Wed
            DATE_END => '2010-10-28' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-26', # Wed
            DATE_END => '2011-10-27' # Thu
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-06', # Thu
            DATE_END => '2014-11-06' # Thu
          } 
        }
      },
    }
  },

  "Australian Spring Women Teams",
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-11-01', # Thu
            DATE_END => '2007-11-01' # Thu
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-10-30', # Thu
            DATE_END => '2008-10-30' # Thu
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-10-28', # Thu
            DATE_END => '2010-10-28' # Thu
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-10-26', # Wed
            DATE_END => '2011-10-26' # Wed
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-11-06', # Thu
            DATE_END => '2014-11-06' # Thu
          } 
        }
      },
    }
  },

  "Australian Women Teams",
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005A' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=05PLAY&abf=yes
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-03-20', # Sun
            DATE_END => '2005-03-21' # Mon
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Tiebreak',
            major => 'SEGMENT',
            DATE_START => '2005-03-20', # Sun
            DATE_END => '2005-03-21' # Mon
          } 
        }
      },
      '2005B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2005',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            DATE_START => '2005-07-29', # Fri
            DATE_END => '2005-07-29' # Fri
          } 
        }
      },
      '2006' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=06PLAY&abf=yes
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-03-23', # Thu
            DATE_END => '2006-03-27' # Mon
          } 
        }
      },
      '2007' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=07PLAY&header=abf
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-03-22', # Thu
            DATE_END => '2007-03-26' # Mon
          } 
        }
      },
      '2008A' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=08PLAY&header=abf
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-03-26', # Wed
            DATE_END => '2008-03-30' # Sun
          } 
        }
      },
      '2008B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2008',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-08-08', # Fri
            DATE_END => '2008-08-08' # Fri
          } 
        }
      },
      '2009A' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=09PLAY&header=abf
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-03-21', # Sat
            DATE_END => '2009-03-26' # Thu
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-03-21', # Sat
            DATE_END => '2009-03-26' # Thu
          } 
        }
      },
      '2009B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-07-17', # Fri
            DATE_END => '2009-07-18' # Sat
          } 
        }
      },
      '2010A' =>
      {
        # http://www.bridgeunlimited.com/bridge/ViewMasterEvent2?code=10PLAY&header=abf
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-03-20', # Sat
            DATE_END => '2010-03-24' # Wed
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-07-19', # Mon
            DATE_END => '2010-07-23' # Fri
          } 
        }
      },
      '2011A' =>
      {
        # https://abfevents.com.au/events/playoffs/2011/results/
        CITY => 'Newtown',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2011-03-26', # Sat
            DATE_END => '2011-03-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-03-28', # Mon
            DATE_END => '2011-03-29' # Tue
          } 
        }
      },
      '2011B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2011',
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
      '2012A' =>
      {
        # https://abfevents.com.au/events/results/results.asp?yr=2012&dir=owp
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-03-31', # Sat
            DATE_END => '2012-04-05' # Thu
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-07-12', # Thu
            DATE_END => '2012-07-13' # Fri
          } 
        }
      },
      '2012C' =>
      {
        # https://abfevents.com.au/events/playoffs/2013/OW/results.asp
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-12-11', # Tue
            DATE_END => '2012-12-13' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-11', # Thu
            DATE_END => '2013-07-12' # Fri
          } 
        }
      },
      '2014' =>
      {
        # https://abfevents.com.au/events/playoffs/2014/ow/
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2014-02-05', # Wed
            DATE_END => '2014-02-09' # Sun
          } 
        }
      },
      '2015A' =>
      {
        # https://abfevents.com.au/events/playoffs/2015/OW/
        CITY => 'Sydney',

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-03', # Tue
            DATE_END => '2015-02-03' # Tue
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-04', # Wed
            DATE_END => '2015-02-05' # Thu
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-16', # Thu
            DATE_END => '2015-07-17' # Fri
          } 
        }
      },
      '2016A' =>
      {
        # https://abfevents.com.au/events/playoffs/2016/SW/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-12', # Sat
            DATE_END => '2016-03-17' # Thu
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-07-01', # Fri
            DATE_END => '2016-07-01' # Fri
          } 
        }
      },
      '2016C' =>
      {
        # https://abfevents.com.au/events/playoffs/2017/SW/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-12-03', # Sat
            DATE_END => '2016-12-08' # Thu
          } 
        }
      },
      '2017' =>
      {
        # https://abfevents.com.au/events/playoffs/2018/sw/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2017,
            DATE_START => '2017-12-03', # Sun
            DATE_END => '2017-12-07' # Thu
          } 
        }
      },
      '2018' =>
      {
        # https://abfevents.com.au/events/playoffs/2019/SW/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2018,
            DATE_START => '2018-12-08', # Sat
            DATE_END => '2018-12-13' # Thu
          } 
        }
      },
      '2019' =>
      {
        # https://abfevents.com.au/events/playoffs/2020/sw/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2019,
            DATE_START => '2019-12-07', # Sat
            DATE_END => '2019-12-12' # Thu
          } 
        }
      },
      '2022' =>
      {
        # https://abfevents.com.au/events/playoffs/2022/ows/
        CITY => 'Canberra',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2022,
            DATE_START => '2022-03-12', # Sat
            DATE_END => '2022-03-17' # Thu
          } 
        }
      },
    }
  },

  'Australian Youth IMP Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-01-18', # Tue
            DATE_END => '2011-01-20' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-01-13', # Tue
            DATE_END => '2015-01-15' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-01-16', # Fri
            DATE_END => '2015-01-17' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-01-15', # Fri
            DATE_END => '2016-01-15' # Fri
          } 
        }
      },
    }
  },

  'Australian Youngster Teams',
  {
    # Some of these are really Juniors, I think.
    ORIGIN => 'National',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U21',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            DATE_START => '2008-08-08', # Fri
            DATE_END => '2008-08-08' # Fri
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-07-17', # Fri
            DATE_END => '2009-07-18' # Sat
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-07-19', # Mon
            DATE_END => '2010-07-23' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-07-12', # Thu
            DATE_END => '2012-07-13' # Fri
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-11', # Thu
            DATE_END => '2013-07-12' # Fri
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-07-16', # Thu
            DATE_END => '2015-07-17' # Fri
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Australian ANC Championships',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-07-01', # Fri
            DATE_END => '2016-07-01' # Fri
          } 
        }
      },
    }
  },

  'Australian Youth Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2008' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-01-18', # Fri
            DATE_END => '2008-01-18' # Fri
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-01-19', # Sat
            DATE_END => '2008-01-19' # Sat
          } 
        }
      },
      '2010A' =>
      {
        MEET => 'Australian Youth Week',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'STAGE',
            minor => 'ROUND',
            DATE_START => '2010-01-15', # Fri
            DATE_END => '2010-01-16' # Sat
          } 
        }
      },
      '2010B' =>
      {
        MEET => 'Australian ANC Championships',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-07-19', # Mon
            DATE_END => '2010-07-23' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-01-21', # Fri
            DATE_END => '2011-01-22' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-01-20', # Fri
            DATE_END => '2012-01-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Repechage',
            major => 'SEGMENT',
            DATE_START => '2012-01-21', # Sat
            DATE_END => '2012-01-22' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SEGMENT',
            DATE_START => '2013-01-19', # Sat
            DATE_END => '2013-01-20' # Sun
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-17', # Fri
            DATE_END => '2014-01-18' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Repechage',
            major => 'SEGMENT',
            DATE_START => '2014-01-19', # Sun
            DATE_END => '2014-01-19' # Sun
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-01-13', # Tue
            DATE_END => '2015-01-13' # Tue
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-01-11', # Mon
            DATE_END => '2016-01-15' # Fri
          } 
        }
      },
    }
  },

  'Australian Youth Tri Individual',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2011' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-12-03', # Sat
            DATE_END => '2011-12-03' # Sat
          } 
        }
      },
    }
  },

  'Australian Youth Tri Pairs',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2011' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-12-03', # Sat
            DATE_END => '2011-12-03' # Sat
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
            major => 'SESSION',
            DATE_START => '2013-12-08', # Sun
            DATE_END => '2013-12-08' # Sun
          } 
        }
      },
    }
  },

  'Australian Youth Tri Teams',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2011' =>
      {
        # No link
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-12-02', # Fri
            DATE_END => '2011-12-02' # Fri
          } 
        }
      },
    }
  },

  'Bobby Evans Senior Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-01', # Thu
            DATE_END => '2012-11-01' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-31', # Thu
            DATE_END => '2013-10-31' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-29', # Thu
            DATE_END => '2015-10-29' # Thu
          } 
        }
      },
    }
  },

  'Cliff Wake Challenge' =>
  {
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-01-18', # Tue
            DATE_END => '2011-01-18' # Tue
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Tiebreak',
            DATE_START => '2014-01-14', # Tue
            DATE_END => '2014-01-14' # Tue
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            DATE_START => '2015-01-13', # Tue
            DATE_END => '2015-01-13' # Tue
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Australian Youth Week',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-01-11', # Mon
            DATE_END => '2016-01-11' # Mon
          } 
        }
      },
    }
  },

  'Gold Coast Open Pairs' =>
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-03-03', # Tue
            DATE_END => '2009-03-03' # Tue
          } 
        }
      },
    }
  },

  'Gold Coast Open Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2005' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2005,
            DATE_START => '2005-02-26', # Sat
            DATE_END => '2005-02-26' # Sat
          } 
        }
      },
      '2006' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-02-25', # Sat
            DATE_END => '2006-02-25' # Sat
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            DATE_START => '2007-02-24', # Sat
            DATE_END => '2007-02-24' # Sat
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2008-03-01', # Sat
            DATE_END => '2008-03-01' # Sat
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-03-01', # Sat
            DATE_END => '2008-03-01' # Sat
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-03-05', # Thu
            DATE_END => '2009-03-06' # Fri
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-03-04', # Thu
            DATE_END => '2010-03-04' # Thu
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-03-04', # Thu
            DATE_END => '2010-03-05' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-03-05', # Fri
            DATE_END => '2010-03-06' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-03-03', # Thu
            DATE_END => '2011-03-04' # Fri
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-01', # Thu
            DATE_END => '2012-03-01' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-01', # Thu
            DATE_END => '2012-03-02' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-03-02', # Fri
            DATE_END => '2012-03-03' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-01', # Fri
            DATE_END => '2013-03-01' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-01', # Fri
            DATE_END => '2013-03-01' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-02', # Sat
            DATE_END => '2013-03-02' # Sat
          },
        }
      },
      '2014' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-02-28', # Fri
            DATE_END => '2014-02-28' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-02-28', # Fri
            DATE_END => '2014-02-28' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-01', # Sat
            DATE_END => '2014-03-01' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-27', # Fri
            DATE_END => '2015-02-27' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-27', # Fri
            DATE_END => '2015-02-27' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-28', # Sat
            DATE_END => '2015-02-28' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-02-26', # Fri
            DATE_END => '2016-02-26' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-02-26', # Fri
            DATE_END => '2016-02-26' # Fri
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-02-27', # Sat
            DATE_END => '2016-02-27' # Sat
          } 
        }
      },
    }
  },

  'Gold Coast Senior Teams' =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-02-28', # Fri
            DATE_END => '2014-03-01' # Sat
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-02-27', # Fri
            DATE_END => '2015-02-28' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Gold Coast Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-02-26', # Fri
            DATE_END => '2016-02-27' # Sat
          } 
        }
      },
    }
  },

  "Hans Rosendorff Memorial Women's Teams",
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'National',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            major => 'ROUND',
            DATE_START => '2009-09-27', # Sun
            DATE_END => '2009-09-28' # Mon
          },
        }
      },
    }
  },

  'John Arkinstall State Teams',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-10' # Sat
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-12-14', # Sun
            DATE_END => '2014-12-14' # Sun
          },
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
            DATE_START => '2015-12-13', # Sun
            DATE_END => '2015-12-13' # Sun
          },
        }
      },
    }
  },

  'Kings and Queens Blaine Howe Teams',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
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
            DATE_START => '2012-12-30', # Sun
            DATE_END => '2012-12-30' # Sun
          },
        }
      },
    }
  },

  "Linda Stern Women's Teams" =>
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-01', # Thu
            DATE_END => '2012-11-01' # Thu
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-31', # Thu
            DATE_END => '2013-10-31' # Thu
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Australian Spring Nationals',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-10-29', # Thu
            DATE_END => '2015-10-29' # Thu
          } 
        }
      },
    }
  },

  'New South Wales Open Teams' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-12-10', # Sat
            DATE_END => '2011-12-11' # Sun
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
            DATE_START => '2013-12-15', # Sun
            DATE_END => '2013-12-15' # Sun
          } 
        }
      },
    }
  },

  'New South Wales Open Trials' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
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
            major => 'SESSION',
            DATE_START => '2010-04-23', # Fri
            DATE_END => '2010-04-26' # Mon
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
            major => 'ROUND',
            DATE_START => '2012-04-13', # Fri
            DATE_END => '2012-04-15' # Sun
          } 
        }
      },
    }
  },

  'Northern Territory Gold Swiss Pairs' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Pairs',
    SCORING => 'IMP',
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
            major => 'ROUND',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          } 
        }
      },
    }
  },

  'Northern Territory Gold Teams' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
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
            major => 'ROUND',
            DATE_START => '2008-09-10', # Wed
            DATE_END => '2008-09-10' # Wed
          } 
        }
      },
    }
  },

  'Queensland Women Trials' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-21', # Sat
            DATE_END => '2011-05-21' # Sat
          } 
        }
      },
    }
  },

  'Queensland Senior Trials' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2011' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-20', # Fri
            DATE_END => '2011-05-21' # Sat
          } 
        }
      },
    }
  },

  'Smirnov Cup',
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
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
            DATE_START => '2012-05-05', # Sat
            DATE_END => '2012-05-06' # Sun
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
            major => 'ROUND',
            DATE_START => '2013-06-29', # Sat
            DATE_END => '2013-06-30' # Sun
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
            major => 'ROUND',
            DATE_START => '2014-05-24', # Sat
            DATE_END => '2014-05-25' # Sun
          },
        }
      },
    }
  },

  'Victor Swiss Pairs',
  {
    FORM => 'Pairs',
    MOVEMENT => 'Swiss',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-06-07', # Fri
            DATE_END => '2013-06-07' # Fri
          } 
        }
      },
    }
  },

  'Victor Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2004' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'ROUND',
            DATE_START => '2004-06-13', # Sun
            DATE_END => '2004-06-13' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'MATCH',
            DATE_START => '2007-06-10', # Sun
            DATE_END => '2007-06-10' # Sun
          } 
        }
      },
      '2008' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-06-08', # Sun
            DATE_END => '2008-06-08' # Sun
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'MATCH',
            DATE_START => '2009-06-06', # Sat
            DATE_END => '2009-06-07' # Sun
          } 
        }
      },
      '2010' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-06-12', # Sat
            DATE_END => '2010-06-13' # Sun
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-06-11', # Sat
            DATE_END => '2011-06-12' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-06-09', # Sat
            DATE_END => '2012-06-11' # Mon
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-06-08', # Sat
            DATE_END => '2013-06-10' # Mon
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-06-07', # Sat
            DATE_END => '2014-06-09' # Mon
          } 
        }
      },
      '2015' =>
      {
        MEET => 'Victor Champion Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-06-06', # Sat
            DATE_END => '2015-06-08' # Mon
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Victor Champion Cup',
        MOVEMENT => 'Swiss',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-06-11', # Sat
            DATE_END => '2016-06-13' # Mon
          } 
        }
      },
    }
  },

  'Victoria Cup' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-15', # Sun
            DATE_END => '2013-12-15' # Sun
          } 
        }
      },
    }
  },

  'Victorian Mixed Teams' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
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
            major => 'ROUND',
            DATE_START => '2010-05-26', # Wed
            DATE_END => '2010-05-26' # Wed
          } 
        }
      },
    }
  },

  'Victorian Open Trials' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
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
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2005-04-10', # Sun
            DATE_END => '2005-04-10' # Sun
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
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
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
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2010-03-26', # Fri
            DATE_END => '2010-03-28' # Sun
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
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2011-04-01', # Fri
            DATE_END => '2011-04-03' # Sun
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
            DATE_START => '2012-03-23', # Fri
            DATE_END => '2012-03-25' # Sun
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
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-04-07', # Sun
            DATE_END => '2013-04-07' # Sun
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
            STAGE => 'Rof6',
            major => 'ROUND',
            DATE_START => '2014-04-26', # Sat
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-22', # Sun
            DATE_END => '2015-03-22' # Sun
          } 
        }
      },
    }
  },

  'Victorian Pennant' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
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
            DATE_START => '2004-04-13', # Tue
            DATE_END => '2004-04-13' # Tue
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-04-02', # Sat
            DATE_END => '2005-04-02' # Sat
          },
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
            DATE_START => '2008-04-16', # Wed
            DATE_END => '2008-04-16' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-04-16', # Wed
            DATE_END => '2008-04-16' # Wed
          },
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
            DATE_START => '2009-04-03', # Fri
            DATE_END => '2009-04-04' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-04-04', # Sat
            DATE_END => '2009-04-05' # Sun
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2009-04-24', # Fri
            DATE_END => '2009-04-26' # Sun
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-11-21', # Sat
            DATE_END => '2009-11-22' # Sun
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
            DATE_START => '2011-11-19', # Sat
            DATE_END => '2011-11-20' # Sun
          },
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
            DATE_START => '2012-11-07', # Wed
            DATE_END => '2012-11-07' # Wed
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-11-14', # Wed
            DATE_END => '2012-11-14' # Wed
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Rof6',
            major => 'SEGMENT',
            DATE_START => '2012-11-24', # Sat
            DATE_END => '2012-11-24' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-11-24', # Sat
            DATE_END => '2012-11-24' # Sat
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-11-24', # Sat
            DATE_END => '2012-11-25' # Sun
          },
        }
      },
      '2013' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'MATCH',
            DATE_START => '2013-09-11', # Wed
            DATE_END => '2013-09-11' # Wed
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-11-16', # Sat
            DATE_END => '2013-11-16' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-11-17', # Sun
            DATE_END => '2013-11-17' # Sun
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
            DATE_START => '2014-11-23', # Sun
            DATE_END => '2014-11-23' # Sun
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
            DATE_START => '2015-11-22', # Sun
            DATE_END => '2015-11-22' # Sun
          } 
        }
      },
    }
  },

  'Victorian Senior Trials' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      '2016' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-04-03', # Sun
            DATE_END => '2016-04-09' # Sat
          } 
        }
      },
    }
  },

  'Victorian Women Trials' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'MP',
    GENDER => 'Women',
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
            DATE_START => '2016-04-16', # Sat
            DATE_END => '2016-04-16' # Sat
          } 
        }
      },
    }
  },

  'Victorian Youth Trials' =>
  {
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

    EDITIONS =>
    {
      '2013' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-05-25', # Sat
            DATE_END => '2013-05-25' # Sat
          } 
        }
      },
    }
  },

  'Watermark Open Teams',
  {
    # https://nsw.bridgeaustralia.org/resultslistbm.asp
    ORGANIZATION => 'AuBF',
    COUNTRY => 'Australia',
    ORIGIN => 'Regional',
    ZONE => 'South Pacific',
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-06-26', # Fri
            DATE_END => '2009-06-27' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-06-27', # Sat
            DATE_END => '2009-06-28' # Sun
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-06-25', # Fri
            DATE_END => '2010-06-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-26', # Sat
            DATE_END => '2010-06-27' # Sun
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
            DATE_START => '2011-07-14', # Thu
            DATE_END => '2011-07-14' # Thu
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-04-24', # Thu
            DATE_END => '2014-04-24' # Thu
          },
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
            DATE_START => '2015-04-23', # Thu
            DATE_END => '2015-04-23' # Thu
          },
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_AUSTRALIA, \%TOURNAMENTS_AUSTRALIA, 'Australia');
}

1;
