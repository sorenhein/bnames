#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Poland;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

# Poland has a number of congresses, and a grand prix system
# that cuts across many congresses and events.
#
# Useful links:
# https://stara.pzbs.pl/wyniki/default.htm
# https://stara.pzbs.pl/imprezy/kal08.html
# https://stara.pzbs.pl/imprezy/kal09.html

my %MEETS_POLAND =
(
  'Baltic Congress' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2009' =>
      {
        ORDINAL => 49,
        YEAR => 2009,
        CITY => 'Sopot',
        DATE_START => '2009-07-21', # Tue
        DATE_END => '2009-07-22' # Wed
      },
      '2010' =>
      {
        # https://bridge.gda.pl/kongres/10/k_baltycki10.htm
        ORDINAL => 50,
        YEAR => 2010,
        CITY => 'Sopot',
        DATE_START => '2010-07-14', # Wed
        DATE_END => '2010-07-25' # Sun
      },
      '2011' =>
      {
        # https://wyniki.pzbs.pl/2011/baltycki/
        ORDINAL => 51,
        YEAR => 2011,
        CITY => 'Sopot',
        DATE_START => '2011-07-21', # Thu
        DATE_END => '2011-07-31' # Sun
      },
      '2012' =>
      {
        # https://wyniki.pzbs.pl/2012/baltycki/
        ORDINAL => 52,
        YEAR => 2012,
        CITY => 'Sopot',
        DATE_START => '2012-07-26', # Thu
        DATE_END => '2012-08-05' # Sun
      },
      '2013' =>
      {
        # https://wyniki.pzbs.pl/2013/baltycki/
        ORDINAL => 53,
        YEAR => 2013,
        CITY => 'Sopot',
        DATE_START => '2013-07-19', # Fri
        DATE_END => '2013-07-27' # Sat
      },
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/baltycki/
        ORDINAL => 54,
        YEAR => 2014,
        CITY => 'Sopot',
        DATE_START => '2014-07-18', # Fri
        DATE_END => '2014-07-26' # Sat
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/baltycki/
        ORDINAL => 55,
        YEAR => 2015,
        CITY => 'Sopot',
        DATE_START => '2015-07-17', # Fri
        DATE_END => '2015-07-25' # Sat
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/baltycki/
        ORDINAL => 56,
        YEAR => 2016,
        CITY => 'Sopot',
        DATE_START => '2016-07-22', # Fri
        DATE_END => '2016-07-30' # Sat
      },
      '2017' =>
      {
        # https://wyniki.pzbs.pl/2017/baltycki/
        ORDINAL => 57,
        YEAR => 2017,
        CITY => 'Sopot',
        DATE_START => '2017-08-04', # Fri
        DATE_END => '2017-08-12' # Sat
      },
      '2018' =>
      {
        # https://wyniki.pzbs.pl/2018/baltycki/
        ORDINAL => 58,
        YEAR => 2018,
        CITY => 'Sopot',
        DATE_START => '2018-08-03', # Fri
        DATE_END => '2018-08-11' # Sat
      },
      '2019' =>
      {
        # https://wyniki.pzbs.pl/2019/baltycki/
        ORDINAL => 59,
        YEAR => 2019,
        CITY => 'Sopot',
        DATE_START => '2019-08-02', # Fri
        DATE_END => '2019-08-10' # Sat
      },
      '2021' =>
      {
        # https://wyniki.pzbs.pl/2021/baltycki/
        ORDINAL => 60,
        YEAR => 2021,
        CITY => 'Sopot',
        DATE_START => '2021-08-06', # Fri
        DATE_END => '2021-08-14' # Sat
      },
      '2022' =>
      {
        # https://wyniki.pzbs.pl/2022/baltycki/
        ORDINAL => 61,
        YEAR => 2022,
        CITY => 'Sopot',
        DATE_START => '2022-07-15', # Fri
        DATE_END => '2022-07-23' # Sat
      },
      '2023' =>
      {
        # https://wyniki.pzbs.pl/2023/baltycki/
        ORDINAL => 62,
        YEAR => 2023,
        CITY => 'Sopot',
        DATE_START => '2023-07-28', # Fri
        DATE_END => '2023-08-03' # Thu
      },
      '2024' =>
      {
        # https://wyniki.pzbs.pl/2024/baltycki/
        ORDINAL => 63,
        YEAR => 2024,
        CITY => 'Sopot',
        DATE_START => '2024-07-26', # Fri
        DATE_END => '2024-08-01' # Thu
      },
    }
  },

  'Beskids Slam' =>
  {
    # Seems to have stopped in 2019
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Szczyrk',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2011' =>
      {
        # https://wyniki.pzbs.pl/2011/111111szczyrk/W-szczyrk.html
        YEAR => 2011,
        DATE_START => '2011-11-11', # Fri
        DATE_END => '2011-11-13' # Sun
      },
      '2012' =>
      {
        # https://wyniki.pzbs.pl/2012/121109szczyrk/W-szczyrk2012_final.html
        YEAR => 2012,
        DATE_START => '2012-11-09', # Fri
        DATE_END => '2012-11-11' # Sun
      },
      '2013' =>
      {
        # https://wyniki.pzbs.pl/2013/131108szczyrk/
        ORDINAL => 1,
        YEAR => 2013,
        DATE_START => '2013-11-08', # Fri
        DATE_END => '2013-11-11' # Mon
      },
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/_gpp/02szczyrk/W-14szgpp.html
        ORDINAL => 2,
        YEAR => 2014,
        DATE_START => '2014-02-03', # Mon
        DATE_END => '2014-02-08' # Sat
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/01szczyrk/W-15szgpp.html
        ORDINAL => 3,
        YEAR => 2015,
        DATE_START => '2015-02-09', # Mon
        DATE_END => '2015-02-15' # Sun
      },
      '2016' =>
      {
        # https://www.pzbs.pl/wyniki/kadra/2016/jun/szlem.html
        ORDINAL => 4,
        YEAR => 2016,
        DATE_START => '2016-02-15', # Mon
        DATE_END => '2016-02-21' # Sun
      },
      '2017' =>
      {
        # https://wyniki.pzbs.pl/2017/gpp/01szczyrk/szlem.html
        ORDINAL => 5,
        YEAR => 2017,
        DATE_START => '2017-02-06', # Mon
        DATE_END => '2017-02-12' # Sun
      },
      '2018' =>
      {
        # https://wyniki.pzbs.pl/2018/gpp/01szczyrk/
        ORDINAL => 6,
        YEAR => 2018,
        DATE_START => '2018-02-02', # Fri
        DATE_END => '2018-02-04' # Sun
      },
      '2019' =>
      {
        # https://wyniki.pzbs.pl/2019/gpp/szczyrk/
        ORDINAL => 7,
        YEAR => 2019,
        DATE_START => '2019-01-11', # Fri
        DATE_END => '2019-01-13' # Sun
      },
    }
  },

  'Boleslawiec Festival' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Boleslawiec',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2009' =>
      {
        # ?
        ORDINAL => 18,
        YEAR => 2009,
        DATE_START => '2009-09-18', # Fri
        DATE_END => '2009-09-20' # Sun
      },
      '2010' =>
      {
        # https://www.pzbs.pl/wyniki-archiwum/wyniki2010/471-19-boleslawiecka-trzydniowka-wyniki
        ORDINAL => 19,
        YEAR => 2010,
        DATE_START => '2010-10-01', # Fri
        DATE_END => '2010-10-03' # Sun
      },
      '2011' =>
      {
        # https://wyniki.pzbs.pl/2011/110916boles/program.htm
        ORDINAL => 20,
        YEAR => 2011,
        DATE_START => '2011-09-16', # Fri
        DATE_END => '2011-09-18' # Sun
      },
      '2012' =>
      {
        # https://wyniki.pzbs.pl/2012/0920-boles/program.htm
        ORDINAL => 21,
        YEAR => 2012,
        DATE_START => '2012-09-21', # Fri
        DATE_END => '2012-09-23' # Sun
      },
      '2013' =>
      {
        # ?
        ORDINAL => 22,
        YEAR => 2013,
        DATE_START => '2013-10-03', # Thu
        DATE_END => '2013-10-06' # Sun
      },
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/_gpp/13boles/program.htm
        ORDINAL => 23,
        YEAR => 2014,
        DATE_START => '2014-09-25', # Thu
        DATE_END => '2014-09-28' # Sun
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/14boleslawiec/program.htm
        ORDINAL => 24,
        YEAR => 2015,
        DATE_START => '2015-09-17', # Thu
        DATE_END => '2015-09-20' # Sun
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/_gpp/15boles/program.htm
        ORDINAL => 25,
        YEAR => 2016,
        DATE_START => '2016-09-22', # Thu
        DATE_END => '2016-09-25' # Sun
      },
      '2017' =>
      {
        # https://wyniki.pzbs.pl/2017/gpp/1718boles/program.htm
        ORDINAL => 26,
        YEAR => 2017,
        DATE_START => '2017-09-22', # Fri
        DATE_END => '2017-09-24' # Sun
      },
      '2018' =>
      {
        # https://wyniki.pzbs.pl/2018/gpp1819/boles/program.htm
        ORDINAL => 27,
        YEAR => 2018,
        DATE_START => '2018-09-20', # Thu
        DATE_END => '2018-09-23' # Sun
      },
      '2019' =>
      {
        # https://wyniki.pzbs.pl/2019/gpp1920/01boles/program.htm
        ORDINAL => 28,
        YEAR => 2019,
        DATE_START => '2019-09-19', # Thu
        DATE_END => '2019-09-23' # Mon
      },
      '2024' =>
      {
        # http://mzbskarkonosze.internetdsl.pl/trzydniowka/2024/program.htm
        YEAR => 2024,
        DATE_START => '2024-08-30', # Fri
        DATE_END => '2024-09-01' # Sun
      },
    }
  },

  'Krakow Congress' =>
  {
    # This is Krakow Spring
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Krakow',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2012' =>
      {
        # https://wyniki.pzbs.pl/2012/gpp/05bydgoszcz/W-bydgpp.html
        ORDINAL => 49,
        YEAR => 2012,
        DATE_START => '2012-03-23', # Dates are a guess
        DATE_END => '2012-03-25' # Sun
      },
      '2013' =>
      {
        # https://wyniki.pzbs.pl/2013/_gpp/03krakow/13kwgpp.html
        YEAR => 2013,
        DATE_START => '2013-03-22', # Dates are a guess
        DATE_END => '2013-03-24' # Sun
      },
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/_gpp/04krakow/W-gpp2014.html
        YEAR => 2014,
        DATE_START => '2014-03-28', # Dates are a guess
        DATE_END => '2014-03-30' # Sun
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/03krakow/
        YEAR => 2015,
        DATE_START => '2015-03-20', # Fri
        DATE_END => '2015-03-22' # Sun
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/kwb/
        YEAR => 2016,
        DATE_START => '2016-03-11', # Fri
        DATE_END => '2016-03-13' # Sun
      },
      '2017' =>
      {
        # https://wyniki.pzbs.pl/2017/kwb/
        YEAR => 2017,
        DATE_START => '2017-03-24', # Fri
        DATE_END => '2017-03-26' # Sun
      },
      '2018' =>
      {
        # https://wyniki.pzbs.pl/2018/kwb/
        YEAR => 2018,
        DATE_START => '2018-03-23', # Fri
        DATE_END => '2018-03-25' # Sun
      },
      '2019' =>
      {
        # https://wyniki.pzbs.pl/2019/kwb/
        YEAR => 2019,
        DATE_START => '2019-03-22', # Fri
        DATE_END => '2019-03-24' # Sun
      },
      '2022' =>
      {
        # https://kwb.mzbs.pl/22/
        YEAR => 2022,
        DATE_START => '2022-03-18', # Fri
        DATE_END => '2022-03-20' # Sun
      },
      '2023' =>
      {
        # https://kwb.mzbs.pl/23/
        YEAR => 2023,
        DATE_START => '2023-03-17', # Fri
        DATE_END => '2023-03-19' # Sun
      },
      '2024' =>
      {
        # https://kwb.mzbs.pl/24/
        YEAR => 2024,
        DATE_START => '2024-03-15', # Fri
        DATE_END => '2024-03-17' # Sun
      },
    }
  },

  'Luczniczka Meeting' =>
  {
    # "Archer"
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Bydgoszcz',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      # 2006: No date found:
      # https://stara.pzbs.pl/wyniki/2006/krajowe/gpp2006/06bydg/luczniczka2006.htm

      '2007' =>
      {
        # https://stara.pzbs.pl/wyniki/2007/krajowe/gpp/11Bydgoszcz/LUCZ/LUCZ.html
        ORDINAL => 44,
        YEAR => 2007,
        DATE_START => '2007-07-15', # Probably more days
        DATE_END => '2007-07-15' # Sun
      },
      '2009' =>
      {
        # https://stara.pzbs.pl/wyniki/2009/krajowe/gpp/07bydgoszcz/luczniczka2009.html
        ORDINAL => 46,
        YEAR => 2009,
        DATE_START => '2009-06-05', # Fri
        DATE_END => '2009-06-07' # Sun
      },
      '2010' =>
      {
        # https://www.pzbs.pl/wyniki-archiwum/wyniki2010/222-47-ogolnopolski-kongres-brydzowy-luczniczka-wyniki
        ORDINAL => 47,
        YEAR => 2010,
        DATE_START => '2010-06-26', # Sat
        DATE_END => '2010-06-28' # Mon
      },
      '2011' =>
      {
        # http://kpzbs.host4u.pl/wyniki/GP2011/Luczniczka/luczniczka.html
        ORDINAL => 48,
        YEAR => 2011,
        DATE_START => '2011-06-10', # Fri
        DATE_END => '2011-06-12' # Sun
      },
      '2012' =>
      {
        # https://wyniki.pzbs.pl/2012/gpp/05bydgoszcz/W-bydgpp.html
        ORDINAL => 49,
        YEAR => 2012,
        DATE_START => '2012-04-27', # Guess
        DATE_END => '2012-04-29' # Sun
      },
      '2013' =>
      {
        # https://wyniki.pzbs.pl/2013/_gpp/08bydgoszcz/gp.html
        ORDINAL => 50,
        YEAR => 2013,
        DATE_START => '2013-06-14', # Fri
        DATE_END => '2013-06-16' # Sun
      },
      '2014' =>
      {
        # http://www.kpzbs.host4u.pl/wyniki/2014/luczniczka/luczniczka2014.html
        ORDINAL => 51,
        YEAR => 2014,
        DATE_START => '2014-03-14', # Fri
        DATE_END => '2014-03-16' # Sun
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/04bydgoszcz/
        ORDINAL => 52,
        YEAR => 2015,
        DATE_START => '2015-03-27', # Fri
        DATE_END => '2015-03-29' # Sun
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/_gpp/06bydgoszcz/
        ORDINAL => 53,
        YEAR => 2016,
        DATE_START => '2016-05-13', # Fri
        DATE_END => '2016-05-15' # Sun
      },
      '2017' =>
      {
        # https://wyniki.pzbs.pl/2017/gpp/06bydgoszcz/
        ORDINAL => 54,
        YEAR => 2017,
        DATE_START => '2017-05-12', # Fri
        DATE_END => '2017-05-14' # Sun
      },
      '2018' =>
      {
        # http://kpzbs.host4u.pl/wyniki/2018/Luczniczka/Luczniczka2018.html
        ORDINAL => 55,
        YEAR => 2018,
        DATE_START => '2018-07-27', # Fri
        DATE_END => '2018-07-29' # Sun
      },
      '2019' =>
      {
        # http://kpzbs.host4u.pl/wyniki/2019/Luczniczka/Luczniczka2019.html
        ORDINAL => 56,
        YEAR => 2019,
        DATE_START => '2019-07-19', # Fri
        DATE_END => '2019-07-21' # Sun
      },
      '2023' =>
      {
        # http://kpzbs.host4u.pl/zaproszenia/2023/luczniczka59.html
        ORDINAL => 59,
        YEAR => 2023,
        DATE_START => '2023-04-14', # Fri
        DATE_END => '2023-04-16' # Sun
      },
      '2024' =>
      {
        # http://kpzbs.host4u.pl/zaproszenia/2024/luczniczka60.html
        ORDINAL => 60,
        YEAR => 2024,
        DATE_START => '2024-07-19', # Fri
        DATE_END => '2024-07-21' # Sun
      },
    }
  },

  'Palace Cup' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Warsaw',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/palacecup/palace16.html
        YEAR => 2014,
        DATE_START => '2014-08-27', # Wed
        DATE_END => '2014-08-29' # Fri
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-06-22', # Mon
        DATE_END => '2015-06-25' # Thu
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-04-01', # Fri
        DATE_END => '2016-04-03' # Sun
      },
    }
  },

  'Polish Championships' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Poznan',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2007' =>
      {
        YEAR => 2007,
        DATE_START => '2007-05-05', # Probably more days
        DATE_END => '2007-05-05' # Sat
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2013-05-02', # Probably more days
        DATE_END => '2013-05-05' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-05-01', # Estimated
        DATE_END => '2012-05-05' # Sat
      },
      '2013' =>
      {
        YEAR => 2013,
        DATE_START => '2013-04-29', # Estimated
        DATE_END => '2013-05-04' # Sat
      },
      '2014A' =>
      {
        YEAR => 2014,
        DATE_START => '2014-05-01', # Thu
        DATE_END => '2014-05-04' # Sun
      },
      '2014B' =>
      {
        YEAR => 2014,
        DATE_START => '2014-11-22', # Sat
        DATE_END => '2014-11-23' # Sun
      },
      '2015' =>
      {
        YEAR => 2015,
        DATE_START => '2015-04-30', # Thu
        DATE_END => '2015-05-04' # Mon
      },
      '2016' =>
      {
        YEAR => 2016,
        DATE_START => '2016-04-30', # Sat
        DATE_END => '2016-05-03' # Tue
      },
    }
  },

  'Polish Pairs Championship' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',

    EDITIONS => 
    {
      '2006' =>
      {
        YEAR => 2006,
        DATE_START => '2006-05-07', # Sun
        DATE_END => '2006-05-07' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-05-05', # Sat
        DATE_END => '2012-05-06' # Sun
      },
    }
  },

  'Polish School Championship' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    AGE => 'Schools',

    EDITIONS => 
    {
      '2010' =>
      {
        YEAR => 2010,
        DATE_START => '2010-06-12', # Sat
        DATE_END => '2010-06-13' # Sun
      },
      '2012' =>
      {
        YEAR => 2012,
        DATE_START => '2012-06-07', # Thu
        DATE_END => '2012-06-08' # Fri
      },
    }
  },

  'Poznan Congress' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Poznan',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2004' =>
      {
        # https://stara.pzbs.pl/wyniki/2004/krajowe/gpp2004/6poznan/poznanski.htm
        ORDINAL => 44,
        YEAR => 2004,
        DATE_START => '2004-06-03', # Thu
        DATE_END => '2004-06-06' # Sun
      },
      '2005' =>
      {
        # https://stara.pzbs.pl/wyniki/2005/krajowe/gppolski/07poznan/poznan2005.htm
        ORDINAL => 45,
        YEAR => 2005,
        DATE_START => '2005-06-11', # Sat
        DATE_END => '2005-06-12' # Sun
      },
      '2006' =>
      {
        # https://stara.pzbs.pl/wyniki/2006/arajowe/poznanski06/poznanski2006.htm
        ORDINAL => 46,
        YEAR => 2006,
        DATE_START => '2006-06-30', # Fri
        DATE_END => '2006-07-02' # Sun
      },
      '2007' =>
      {
        # https://stara.pzbs.pl/wyniki/2007/krajowe/gpp/09poznan/poznanski2007.htm
        ORDINAL => 47,
        YEAR => 2007,
        DATE_START => '2007-06-08', # Fri
        DATE_END => '2007-06-11' # Mon
      },
      '2008' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2008
        ORDINAL => 48,
        YEAR => 2008,
        DATE_START => '2008-05-22', # Thu
        DATE_END => '2008-05-25' # Sun
      },
      '2009' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2009
        ORDINAL => 49,
        YEAR => 2009,
        DATE_START => '2009-06-11', # Thu
        DATE_END => '2009-06-14' # Sun
      },
      '2010' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2010
        ORDINAL => 50,
        YEAR => 2010,
        DATE_START => '2010-06-03', # Thu
        DATE_END => '2010-06-06' # Sun
      },
      '2011' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2011
        ORDINAL => 51,
        YEAR => 2011,
        DATE_START => '2011-04-30', # Sat
        DATE_END => '2011-05-03' # Tue
      },
      '2012' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2012
        ORDINAL => 52,
        YEAR => 2012,
        DATE_START => '2012-06-01', # Fri
        DATE_END => '2012-06-03' # Sun
      },
      '2013' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2013
        ORDINAL => 53,
        YEAR => 2013,
        DATE_START => '2013-05-30', # Thu
        DATE_END => '2013-06-02' # Sun
      },
      '2014' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2014
        ORDINAL => 54,
        YEAR => 2014,
        DATE_START => '2014-06-05', # Thu
        DATE_END => '2014-06-08' # Sun
      },
      '2015' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2015
        ORDINAL => 55,
        YEAR => 2015,
        DATE_START => '2015-06-03', # Wed
        DATE_END => '2015-06-07' # Sun
      },
      '2016' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2016
        ORDINAL => 56,
        YEAR => 2016,
        DATE_START => '2016-05-25', # Wed
        DATE_END => '2016-05-29' # Sun
      },
      '2017' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2017
        ORDINAL => 57,
        YEAR => 2017,
        DATE_START => '2017-06-15', # Thu
        DATE_END => '2017-06-18' # Sun
      },
      '2018' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2018
        ORDINAL => 58,
        YEAR => 2018,
        DATE_START => '2018-05-30', # Wed
        DATE_END => '2018-06-03' # Sun
      },
      '2019' =>
      {
        # https://kongres.brydz.wlkp.pl/arch2019
        ORDINAL => 59,
        YEAR => 2019,
        DATE_START => '2019-06-19', # Wed
        DATE_END => '2019-06-23' # Sun
      },
      '2021' =>
      {
        # http://60pkb.e-pab.pl/
        ORDINAL => 60,
        YEAR => 2021,
        DATE_START => '2021-09-23', # Thu
        DATE_END => '2021-09-26' # Sun
      },
      '2022' =>
      {
        # http://kongresy.brydz.wlkp.pl/index.php/harmonogram-wyniki-2022/
        ORDINAL => 61,
        YEAR => 2022,
        DATE_START => '2022-04-29', # Fri
        DATE_END => '2022-05-03' # Tue
      },
      '2023' =>
      {
        # https://kongrespoznanski.pl/historia/pkb-2023/
        ORDINAL => 62,
        YEAR => 2023,
        DATE_START => '2023-04-29', # Sat
        DATE_END => '2023-05-03' # Wed
      },
      '2024' =>
      {
        # https://kongrespoznanski.pl/
        ORDINAL => 63,
        YEAR => 2024,
        DATE_START => '2024-05-01', # Wed
        DATE_END => '2024-05-04' # Sat
      },
    }
  },

  'Slawa Congress' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Slawa',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2007' =>
      {
        # No link
        ORDINAL => 50,
        YEAR => 2007,
        DATE_START => '2007-07-06', # Fri
        DATE_END => '2007-07-15' # Sun
      },
      '2008' =>
      {
        # No link
        ORDINAL => 51,
        YEAR => 2008,
        DATE_START => '2008-07-04', # Fri
        DATE_END => '2008-07-13' # Sun
      },
      '2009' =>
      {
        # No link
        ORDINAL => 52,
        YEAR => 2009,
        DATE_START => '2009-07-03', # Fri
        DATE_END => '2009-07-11' # Sat
      },
      '2010' =>
      {
        # https://wyniki.pzbs.pl/2010/slawa/
        ORDINAL => 53,
        YEAR => 2010,
        DATE_START => '2010-07-02', # Fri
        DATE_END => '2010-07-11' # Sun
      },
      '2011' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2011
        ORDINAL => 54,
        YEAR => 2011,
        DATE_START => '2011-07-08', # Fri
        DATE_END => '2011-07-17' # Sun
      },
      '2012' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2012
        ORDINAL => 55,
        YEAR => 2012,
        DATE_START => '2012-07-06', # Fri
        DATE_END => '2012-07-15' # Sun
      },
      '2013' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2013
        ORDINAL => 56,
        YEAR => 2013,
        DATE_START => '2013-07-05', # Fri
        DATE_END => '2013-07-14' # Sun
      },
      '2014' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2014
        ORDINAL => 57,
        YEAR => 2014,
        DATE_START => '2014-07-03', # Thu
        DATE_END => '2014-07-12' # Sat
      },
      '2015' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2015
        ORDINAL => 58,
        YEAR => 2015,
        DATE_START => '2015-07-02', # Thu
        DATE_END => '2015-07-11' # Sat
      },
      '2016' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2016
        ORDINAL => 59,
        YEAR => 2016,
        DATE_START => '2016-06-30', # Thu
        DATE_END => '2016-07-09' # Sat
      },
      '2017' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2017
        ORDINAL => 60,
        YEAR => 2017,
        DATE_START => '2017-06-29', # Thu
        DATE_END => '2017-07-08' # Sat
      },
      '2018' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2018
        ORDINAL => 61,
        YEAR => 2018,
        DATE_START => '2018-06-28', # Thu
        DATE_END => '2018-07-07' # Sat
      },
      '2019' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2019
        ORDINAL => 62,
        YEAR => 2019,
        DATE_START => '2019-06-27', # Thu
        DATE_END => '2019-07-06' # Sat
      },
      '2020' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2020
        # Probably did not take place
        YEAR => 2020,
        ORDINAL => 63,
        DATE_START => '2020-07-02', # Thu
        DATE_END => '2020-07-11' # Sat
      },
      '2021' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2021
        YEAR => 2021,
        ORDINAL => 64,
        DATE_START => '2021-06-24', # Thu
        DATE_END => '2021-07-03' # Sat
      },
      '2022' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2022
        YEAR => 2022,
        ORDINAL => 65,
        DATE_START => '2022-06-23', # Thu
        DATE_END => '2022-07-02' # Sat
      },
      '2023' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2023
        YEAR => 2023,
        ORDINAL => 66,
        DATE_START => '2023-06-22', # Thu
        DATE_END => '2023-07-01' # Sat
      },
      '2024' =>
      {
        # https://www.kongres-slawa.pl/harmonogram/2024
        YEAR => 2024,
        ORDINAL => 67,
        DATE_START => '2024-06-20', # Thu
        DATE_END => '2024-06-29' # Sat
      },
    }
  },

  'Warsaw Grand Prix' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Warsaw',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2004' =>
      {
        # https://www.warsbrydz.pl/GPW2004/support/program.htm
        ORDINAL => 32,
        YEAR => 2004,
        DATE_START => '2004-08-20', # Fri
        DATE_END => '2004-08-29' # Sun
      },
      '2005' =>
      {
        # https://www.warsbrydz.pl/GPW2005/support/program.htm
        ORDINAL => 33,
        YEAR => 2005,
        DATE_START => '2005-08-19', # Fri
        DATE_END => '2005-08-28' # Sun
      },
      '2006' =>
      {
        # https://www.warsbrydz.pl/GPW2006/support/program.htm
        ORDINAL => 34,
        YEAR => 2006,
        DATE_START => '2006-08-25', # Fri
        DATE_END => '2006-09-03' # Sun
      },
      '2007' =>
      {
        # https://www.warsbrydz.pl/GPW/GPW2007/gp2007.htm
        ORDINAL => 35,
        YEAR => 2007,
        DATE_START => '2007-08-24', # Fri
        DATE_END => '2007-09-02' # Sun
      },
      '2008' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2008/gp2008.php?main=2
        ORDINAL => 36,
        YEAR => 2008,
        DATE_START => '2008-08-21', # Thu
        DATE_END => '2008-08-31' # Sun
      },
      '2009' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2009/gp2009.php?main=2
        ORDINAL => 37,
        YEAR => 2009,
        DATE_START => '2009-08-20', # Thu
        DATE_END => '2009-08-30' # Sun
      },
      '2010' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2010/gp2010.php?main=2
        ORDINAL => 38,
        YEAR => 2010,
        DATE_START => '2010-08-20', # Fri
        DATE_END => '2010-08-29' # Sun
      },
      '2011' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2011/gp2011.php?main=2
        ORDINAL => 39,
        YEAR => 2011,
        DATE_START => '2011-08-18', # Thu
        DATE_END => '2011-08-28' # Sun
      },
      '2012' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2012/gp2012.php?main=2
        ORDINAL => 40,
        YEAR => 2012,
        DATE_START => '2012-08-24', # Fri
        DATE_END => '2012-09-02' # Sun
      },
      '2013' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2013/gp2013.php?main=2
        ORDINAL => 41,
        YEAR => 2013,
        DATE_START => '2013-08-23', # Fri
        DATE_END => '2013-09-01' # Sun
      },
      '2014' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2014/gp2014.php?main=2
        ORDINAL => 42,
        YEAR => 2014,
        DATE_START => '2014-08-22', # Fri
        DATE_END => '2014-08-31' # Sun
      },
      '2015' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2015/gp2015.php?main=2
        ORDINAL => 43,
        YEAR => 2015,
        DATE_START => '2015-08-21', # Fri
        DATE_END => '2015-08-30' # Sun
      },
      '2016' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2016/gp2016.php?main=2
        ORDINAL => 44,
        YEAR => 2016,
        DATE_START => '2016-08-19', # Fri
        DATE_END => '2016-08-28' # Sun
      },
      '2017' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2017/gp2017.php?main=2
        ORDINAL => 45,
        YEAR => 2017,
        DATE_START => '2017-08-18', # Fri
        DATE_END => '2017-08-27' # Sun
      },
      '2018' =>
      {
        # https://www.warsbrydz.pl/gpw/gpw2018/gp2018.php?main=2
        ORDINAL => 46,
        YEAR => 2018,
        DATE_START => '2018-08-24', # Fri
        DATE_END => '2018-09-02' # Sun
      },
      '2019' =>
      {
        # https://www.warsbrydz.pl/GPW/GPW2019/new_program.php
        ORDINAL => 47,
        YEAR => 2019,
        DATE_START => '2019-08-23', # Fri
        DATE_END => '2019-09-01' # Sun
      },
      '2021' =>
      {
        # https://www.warsbrydz.pl/GPW/GPW2021/new_program.php
        ORDINAL => 48,
        YEAR => 2021,
        DATE_START => '2021-08-25', # Wed
        DATE_END => '2021-08-29' # Sun
      },
      '2022' =>
      {
        # https://www.warsbrydz.pl/GPW/GPW2022/new_program.php
        ORDINAL => 49,
        YEAR => 2022,
        DATE_START => '2022-07-29', # Fri
        DATE_END => '2022-08-07' # Sun
      },
      '2023' =>
      {
        # https://www.warsbrydz.pl/GPW/GPW2023/new_program.php
        ORDINAL => 50,
        YEAR => 2023,
        DATE_START => '2023-08-18', # Fri
        DATE_END => '2023-08-27' # Sun
      },
      '2024' =>
      {
        # https://www.warsbrydz.pl/GPW/GPW2024/new_program.php
        ORDINAL => 51,
        YEAR => 2024,
        DATE_START => '2024-08-16', # Fri
        DATE_END => '2024-08-25' # Sun
      },
    }
  },

  'Wroclaw Meeting' =>
  {
    # Also "Blue Ribbon of the Oder"
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2008' =>
      {
        # Link on https://stara.pzbs.pl/imprezy/kal08.html
        ORDINAL => 29,
        CITY => 'Wroclaw',
        YEAR => 2008,
        DATE_START => '2008-05-09', # Fri
        DATE_END => '2008-05-11' # Sun
      },
      '2009' =>
      {
        # https://stara.pzbs.pl/imprezy/OTP/2009/bwodry2009.html
        ORDINAL => 30,
        CITY => 'Wroclaw',
        YEAR => 2009,
        DATE_START => '2009-05-08', # Fri
        DATE_END => '2009-05-10' # Sun
      },
      '2010' =>
      {
        # https://michzimny.pl/bridge/2010/wroclaw/
        ORDINAL => 31,
        CITY => 'Wroclaw',
        YEAR => 2010,
        DATE_START => '2010-05-07', # Fri
        DATE_END => '2010-05-09' # Sun
      },
      '2011' =>
      {
        # https://michzimny.pl/bridge/2011/wroclaw/
        ORDINAL => 32,
        CITY => 'Wroclaw',
        YEAR => 2011,
        DATE_START => '2011-05-06', # Fri
        DATE_END => '2011-05-08' # Sun
      },
      '2012' =>
      {
        # https://michzimny.pl/bridge/2012/wroclaw/
        ORDINAL => 33,
        CITY => 'Wroclaw',
        YEAR => 2012,
        DATE_START => '2012-05-25', # Fri
        DATE_END => '2012-05-27' # Sun
      },
      '2013' =>
      {
        # https://michzimny.pl/bridge/2013/wroclaw/
        ORDINAL => 34,
        CITY => 'Wroclaw',
        YEAR => 2013,
        DATE_START => '2013-05-24', # Fri
        DATE_END => '2013-05-26' # Sun
      },
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/_gpp/07wroclaw/
        ORDINAL => 35,
        CITY => 'Wroclaw',
        YEAR => 2014,
        DATE_START => '2014-05-23', # Fri
        DATE_END => '2014-05-25' # Sun
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/07wroclaw/
        ORDINAL => 36,
        CITY => 'Wroclaw',
        YEAR => 2015,
        DATE_START => '2015-05-22', # Fri
        DATE_END => '2015-05-24' # Sun
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/_gpp/07wroclaw/
        ORDINAL => 37,
        CITY => 'Wroclaw',
        YEAR => 2016,
        DATE_START => '2016-05-20', # Fri
        DATE_END => '2016-05-22' # Sun
      },
      '2017' =>
      {
        # https://wyniki.pzbs.pl/2017/gpp/07wroclaw/
        ORDINAL => 38,
        CITY => 'Wroclaw',
        YEAR => 2017,
        DATE_START => '2017-05-26', # Fri
        DATE_END => '2017-05-28' # Sun
      },
      '2018' =>
      {
        # https://wyniki.pzbs.pl/2018/gpp/wroclaw/
        ORDINAL => 39,
        CITY => 'Wroclaw',
        YEAR => 2018,
        DATE_START => '2018-05-18', # Fri
        DATE_END => '2018-05-20' # Sun
      },
      '2019' =>
      {
        # https://wyniki.pzbs.pl/2019/gpp/wroclaw/
        ORDINAL => 40,
        CITY => 'Wroclaw',
        YEAR => 2019,
        DATE_START => '2019-05-24', # Fri
        DATE_END => '2019-05-26' # Sun
      },
      '2022' =>
      {
        # https://wyniki.pzbs.pl/2022/wroclaw/
        ORDINAL => 41,
        CITY => 'Wroclaw',
        YEAR => 2022,
        DATE_START => '2022-05-20', # Fri
        DATE_END => '2022-05-22' # Sun
      },
      '2023' =>
      {
        # https://wyniki.pzbs.pl/2023/wroclaw/
        ORDINAL => 42,
        CITY => 'Wroclaw',
        YEAR => 2023,
        DATE_START => '2023-05-12', # Fri
        DATE_END => '2023-05-14' # Sun
      },
      '2024' =>
      {
        # https://wyniki.pzbs.pl/2024/wroclaw/
        ORDINAL => 43,
        CITY => 'Wroclaw',
        YEAR => 2024,
        DATE_START => '2024-05-17', # Fri
        DATE_END => '2024-05-19' # Sun
      },
    }
  },

  'Zulawski Congress' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',

    EDITIONS => 
    {
      '2007' =>
      {
        # http://www.bridge.elblag.com.pl/zulawski07/index.html
        ORDINAL => 10,
        CITY => 'Elblag',
        YEAR => 2007,
        DATE_START => '2007-02-23', # Fri
        DATE_END => '2007-02-25' # Sun
      },
      '2008' =>
      {
        # http://www.bridge.elblag.com.pl/zulawski08/index.html
        ORDINAL => 11,
        CITY => 'Elblag',
        YEAR => 2008,
        DATE_START => '2008-02-22', # Fri
        DATE_END => '2008-02-24' # Sun
      },
      '2009' =>
      {
        # http://www.bridge.elblag.com.pl/zulawski09/index.html
        ORDINAL => 12,
        CITY => 'Elblag',
        YEAR => 2009,
        DATE_START => '2009-02-20', # Fri
        DATE_END => '2009-02-22' # Sun
      },
      '2010' =>
      {
        # http://www.bridge.elblag.com.pl/zulawski10/index.html
        ORDINAL => 13,
        CITY => 'Elblag',
        YEAR => 2010,
        DATE_START => '2010-02-19', # Fri
        DATE_END => '2010-02-21' # Sun
      },
      '2011' =>
      {
        # https://wyniki.pzbs.pl/2011/_gpp/01elblag/W-egpp.html
        ORDINAL => 14,
        CITY => 'Elblag',
        YEAR => 2011,
        DATE_START => '2011-02-18', # Fri
        DATE_END => '2011-02-20' # Sun
      },
      '2012' =>
      {
        # https://wyniki.pzbs.pl/2011/_gpp/2012/01elblag/
        ORDINAL => 15,
        CITY => 'Elblag',
        YEAR => 2012,
        DATE_START => '2012-02-10', # Fri
        DATE_END => '2012-02-12' # Sun
      },
      '2013' =>
      {
        # https://wyniki.pzbs.pl/2013/_gpp/02elblag/wyniki/
        ORDINAL => 16,
        CITY => 'Elblag',
        YEAR => 2013,
        DATE_START => '2013-03-08', # Fri
        DATE_END => '2013-03-10' # Sun
      },
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/_gpp/01elblag/
        ORDINAL => 17,
        CITY => 'Elblag',
        YEAR => 2014,
        DATE_START => '2014-01-24', # Fri
        DATE_END => '2014-01-26' # Sun
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/02elblag/
        ORDINAL => 18,
        CITY => 'Elblag',
        YEAR => 2015,
        DATE_START => '2015-03-06', # Fri
        DATE_END => '2015-03-08' # Sun
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/_gpp/02elblag/
        ORDINAL => 19,
        CITY => 'Elblag',
        YEAR => 2016,
        DATE_START => '2016-03-04', # Fri
        DATE_END => '2016-03-06' # Sun
      },
      '2017' =>
      {
        # https://wyniki.pzbs.pl/2017/gpp/02elblag/
        ORDINAL => 20,
        CITY => 'Elblag',
        YEAR => 2017,
        DATE_START => '2017-03-03', # Fri
        DATE_END => '2017-03-05' # Sun
      },
      '2018' =>
      {
        # https://wyniki.pzbs.pl/2018/gpp/06elblag/
        ORDINAL => 21,
        CITY => 'Elblag',
        YEAR => 2018,
        DATE_START => '2018-03-01', # Thu
        DATE_END => '2018-03-04' # Sun
      },
      '2019' =>
      {
        # https://wyniki.pzbs.pl/2019/gpp/elblag/
        ORDINAL => 22,
        CITY => 'Elblag',
        YEAR => 2019,
        DATE_START => '2019-03-07', # Thu
        DATE_END => '2019-03-10' # Sun
      },
      '2020' =>
      {
        # https://wyniki.pzbs.pl/2020/elblag/
        ORDINAL => 23,
        CITY => 'Elblag',
        YEAR => 2020,
        DATE_START => '2020-01-22', # Wed
        DATE_END => '2020-01-26' # Sun
      },
      '2022' =>
      {
        # https://wyniki.pzbs.pl/2022/elblag/
        ORDINAL => 25,
        CITY => 'Krynica Morska',
        YEAR => 2022,
        DATE_START => '2022-10-06', # Thu
        DATE_END => '2022-10-09' # Sun
      },
      '2023' =>
      {
        # https://wyniki.pzbs.pl/2023/elblag/
        ORDINAL => 26,
        CITY => 'Warlity Wielkie',
        YEAR => 2023,
        DATE_START => '2023-03-02', # Thu
        DATE_END => '2023-03-05' # Sun
      },
      '2024' =>
      {
        # https://wyniki.pzbs.pl/2024/elblag/
        ORDINAL => 27,
        CITY => 'Warlity Wielkie',
        YEAR => 2024,
        DATE_START => '2024-02-29', # Thu
        DATE_END => '2024-03-03' # Sun
      },
    }
  },

);

my %TOURNAMENTS_POLAND =
(
  'Andrzej Wilkosz Memorial Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/_gpp/04krakow/W-gpp2014.html
        MEET => 'Krakow Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-03-30', # Sun
            DATE_END => '2014-03-30' # Sun
          } 
        }
      },
    }
  },

  'Bermuda Triangle Cup' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'International',
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
          'C0' =>
          {
            YEAR => 2007,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2007-04-21', # Sat
            DATE_END => '2007-04-21' # Sat
          },
          'C1' =>
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-04-22', # Sun
            DATE_END => '2007-04-22' # Sun
          },
          'C2' =>
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-04-22', # Sun
            DATE_END => '2007-04-22' # Sun
          }
        }
      },
    }
  },

  'bridge24.pl Trophy' =>
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
      '2015' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-25', # Thu
            DATE_END => '2015-06-25' # Thu
          },
        }
      },
    }
  },

  'Forest Trophy' =>
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
      '2009' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-05-16', # Sat
            DATE_END => '2009-05-16' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-05-17', # Sun
            DATE_END => '2009-05-17' # Sun
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
            DATE_START => '2011-05-22', # Sun
            DATE_END => '2011-05-22' # Sun
          },
        }
      },
    }
  },

  'Grand Prix of Poland Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    # Overviews of annual GPPP tournaments:
    # 6th, 2005: https://stara.pzbs.pl/komunikaty/r2005/reg_gppp2005.htm
    # 7th, 2006: https://stara.pzbs.pl/komunikaty/r2006/reg_gppp2006.htm
    # 8th, 2007: https://stara.pzbs.pl/komunikaty/r2007/reg_gppp2007.htm
    # 9th, 2008: https://stara.pzbs.pl/komunikaty/r2008/gppp2008.htm
    # 10th, 2009: https://stara.pzbs.pl/komunikaty/r2009/gppp2009.html
    # 11th, 2010: https://stara.pzbs.pl/komunikaty/r2010/gppp2010reg.html
    # 12th, 2011: https://www.pzbs.pl/archiwum/regulaminy2011/598-budimex-gpp-2011-regulamin
    # 13th, 2012: https://www.pzbs.pl/archiwum/regulaminy2012/1162-budimex-grand-prix-polski-par-2012
    # 14th, 2013: https://www.pzbs.pl/archiwum/2013/1593-budimex-14-grand-prix-polski-par-2013
    # 15th, 2014: https://www.pzbs.pl/archiwum/2014/2268-15-budimex-grand-prix-polski-par-komunikat-2014
    # 16th, 2015: https://www.pzbs.pl/archiwum/regulaminy-2015/2596-komunikat-budimex-grand-prix-polski-par-2015
    # 17th, 2016: https://www.pzbs.pl/archiwum/regulainy-2016/3030-17-budimex-grand-prix-polski-par-komunikat-2016
    # 19th, 2017/18: https://www.pzbs.pl/archiwum/regulaminy-2018/3905-grand-prix-polski-par-2017-18
    # 21th, 2019/21: https://www.pzbs.pl/archiwum/regulaminy-2021/5301-grand-prix-polski-par-2019-20-komunikat
    # 22nd, 2022: https://www.pzbs.pl/archiwum/2022/6792-grand-prix-polski-par-2022-komunikat
    # 23rd, 2023: https://www.pzbs.pl/2023/7411-grand-prix-polski-par-2023-komunikat

    EDITIONS =>
    {
      '2005A' =>
      {
        # https://stara.pzbs.pl/komunikaty/r2005/reg_gppt2005.htm
        CITY => 'Warsaw',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            DATE_START => '2005-09-06', # Tue
            DATE_END => '2005-09-06' # Tue
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            DATE_START => '2005-09-06', # Tue
            DATE_END => '2005-09-06' # Tue
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            DATE_START => '2005-09-06', # Tue
            DATE_END => '2005-09-06' # Tue
          } 
        }
      },
      '2006A' =>
      {
        CITY => 'Warsaw',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            major => 'ROUND',
            DATE_START => '2006-12-15', # Fri
            DATE_END => '2006-12-17' # Sun
          } 
        }
      },
      '2007A' =>
      {
        CITY => 'Lodz',
        CHAPTERS =>
        {
          # https://stara.pzbs.pl/wyniki/2007/krajowe/gpp/05lodz/3/3.html
          'SINGLE' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-04-15', # Sun
            DATE_END => '2007-04-15' # Sun
          } 
        }
      },
      '2007B' =>
      {
        CITY => 'Warsaw',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-12-14', # Fri
            DATE_END => '2007-12-16' # Sun
          } 
        }
      },
      '2008A' =>
      {
        CITY => 'Warsaw',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2008,
            major => 'ROUND',
            DATE_START => '2008-12-19', # Fri
            DATE_END => '2008-12-21' # Sun
          } 
        }
      },
      '2009A' =>
      {
        CITY => 'Starachowice',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-03-08', # Sun
            DATE_END => '2009-03-08' # Sun
          } 
        }
      },
      '2009B' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-06-13', # Sat
            DATE_END => '2009-06-13' # Sat
          } 
        }
      },
      '2009C' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-09-20', # Sun
            DATE_END => '2009-09-20' # Sun
          } 
        }
      },
      '2009D' =>
      {
        # https://stara.pzbs.pl/wyniki/2009/krajowe/gpp/gppp2009final/www/el.html
        CITY => 'Starachowice',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'SESSION',
            DATE_START => '2009-12-18', # Fri
            DATE_END => '2009-12-18' # Fri
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-12-19', # Sat
            DATE_END => '2009-12-20' # Sun
          },
        }
      },
      '2010A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-02-20', # Sat
            DATE_END => '2010-02-20' # Sat
          } 
        }
      },
      '2010B' =>
      {
        CITY => 'Pila',
        CHAPTERS =>
        {
          # https://michzimny.pl/bridge/2010/pila/W-gp.html
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-03-06', # Sat
            DATE_END => '2010-03-07' # Sun
          } 
        }
      },
      '2010C' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-06-03', # Thu
            DATE_END => '2010-06-03' # Thu
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-06-04', # Fri
            DATE_END => '2010-06-04' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-06-05', # Sat
            DATE_END => '2010-06-05' # Sat
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-06', # Sun
            DATE_END => '2010-06-06' # Sun
          },
        }
      },
      '2010D' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'SEGMENT',
            DATE_START => '2010-10-03', # Sun
            DATE_END => '2010-10-03' # Sun
          } 
        }
      },
      '2010E' =>
      {
        # https://wyniki.pzbs.pl/2010/_gpp/final/f.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-12-17', # Fri
            DATE_END => '2010-12-19' # Sun
          } 
        }
      },
      '2011A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2011',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-02-20', # Sun
            DATE_END => '2011-02-20' # Sun
          } 
        }
      },
      '2011B' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2011',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-09-18', # Sun
            DATE_END => '2011-09-18' # Sun
          } 
        }
      },
      '2011C' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2011-12-16', # Fri
            DATE_END => '2011-12-18' # Sun
          } 
        }
      },
      '2012A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-02-10', # Fri
            DATE_END => '2012-02-10' # Fri
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-02-11', # Sat
            DATE_END => '2012-02-12' # Sun
          } 
        }
      },
      '2012C' =>
      {
        MEET => 'Krakow Congress',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-03-25', # Sun
            DATE_END => '2012-03-25' # Sun
          } 
        }
      },
      '2012D' =>
      {
        MEET => 'Wroclaw Meeting',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-05-27', # Sun
            DATE_END => '2012-05-27' # Sun
          } 
        }
      },
      '2012E' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-06-03', # Sun
            DATE_END => '2012-06-03' # Sun
          } 
        }
      },
      '2012F' =>
      {
        CITY => 'Pulawy',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-06-16', # Sat
            DATE_END => '2012-06-16' # Sat
          } 
        }
      },
      '2012G' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-09-23', # Sun
            DATE_END => '2012-09-23' # Sun
          } 
        }
      },
      '2012H' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2012-12-14', # Fri
            DATE_END => '2012-12-16' # Sun
          },
        }
      },
      '2012I' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-12-17', # Mon
            DATE_END => '2012-12-18' # Tue
          } 
        }
      },
      '2013A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-03-10', # Sun
            DATE_END => '2013-03-10' # Sun
          } 
        }
      },
      '2013B' =>
      {
        MEET => 'Krakow Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-03-24', # Sun
            DATE_END => '2013-03-24' # Sun
          } 
        }
      },
      '2013C' =>
      {
        MEET => 'Wroclaw Meeting',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'SESSION',
            DATE_START => '2013-05-26', # Sun
            DATE_END => '2013-05-26' # Sun
          } 
        }
      },
      '2013D' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-06-02', # Sun
            DATE_END => '2013-06-02' # Sun
          } 
        }
      },
      '2013E' =>
      {
        MEET => 'Slawa Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-07-07', # Sun
            DATE_END => '2013-07-07' # Sun
          } 
        }
      },
      '2013F' =>
      {
        MEET => 'Baltic Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-07-21', # Sun
            DATE_END => '2013-07-21' # Sun
          } 
        }
      },
      '2013G' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-10-06', # Sun
            DATE_END => '2013-10-06' # Sun
          } 
        }
      },
      '2013H' =>
      {
        CITY => 'Krakow',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-11-24', # Sun
            DATE_END => '2013-11-24' # Sun
          } 
        }
      },
      '2013I' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2013-12-13', # Fri
            DATE_END => '2013-12-15' # Sun
          } 
        }
      },
      '2014A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-01-26', # Sun
            DATE_END => '2014-01-26' # Sun
          } 
        }
      },
      '2014B' =>
      {
        CITY => 'Bydgoszcz',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-03-16', # Sun
            DATE_END => '2014-03-16' # Sun
          } 
        }
      },
      '2014C' =>
      {
        MEET => 'Krakow Congress',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-03-30', # Sun
            DATE_END => '2014-03-30' # Sun
          } 
        }
      },
      '2014D' =>
      {
        MEET => 'Wroclaw Meeting',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-05-25', # Sun
            DATE_END => '2014-05-25' # Sun
          } 
        }
      },
      '2014E' =>
      {
        MEET => 'Slawa Congress',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-07-06', # Sun
            DATE_END => '2014-07-06' # Sun
          } 
        }
      },
      '2014F' =>
      {
        MEET => 'Baltic Congress',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-07-20', # Sun
            DATE_END => '2014-07-20' # Sun
          } 
        }
      },
      '2014G' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-09-28', # Sun
            DATE_END => '2014-09-28' # Sun
          } 
        }
      },
      '2014H' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            minor => 'ROUND',
            DATE_START => '2014-12-19', # Fri
            DATE_END => '2014-12-21' # Sun
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Beskids Slam',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-02-14', # Sat
            DATE_END => '2015-02-14' # Sat
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Krakow Congress',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-03-22', # Sun
            DATE_END => '2015-03-22' # Sun
          } 
        }
      },
      '2015C' =>
      {
        MEET => 'Luczniczka Meeting',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-03-28', # Sat
            DATE_END => '2015-03-28' # Sat
          } 
        }
      },
      '2015D' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-09-20', # Sun
            DATE_END => '2015-09-20' # Sun
          } 
        }
      },
      '2015E' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/fin/15gppfin2.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-12-11', # Fri
            DATE_END => '2015-12-13' # Sun
          } 
        }
      },
      '2016A' =>
      {
        MEET => 'Beskids Slam',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            DATE_START => '2016-02-20', # Sat
            DATE_END => '2016-02-20' # Sat
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'Luczniczka Meeting',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            minor => 'SEGMENT',
            DATE_START => '2016-05-15', # Sun
            DATE_END => '2016-05-15' # Sun
          } 
        }
      },
      '2016C' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SESSION',
            DATE_START => '2016-05-29', # Sun
            DATE_END => '2016-05-29' # Sun
          } 
        }
      },
    }
  },

  'Grand Prix of Poland Teams',
  {
    # Overviews of annual GPPT tournaments:
    # 2013: https://www.pzbs.pl/archiwum/2013/1791-regulamin-grand-prix-polski-teamow-2013
    # 2014: https://www.pzbs.pl/archiwum/2014/2265-komunikat-grand-prix-polski-teamow-jako-mistrzostwa-polski-teamow
    # 2015: https://www.pzbs.pl/archiwum/regulaminy-2015/2866-komunikat-organizacyjny-mistrzostw-polski-teamow-2015
    # 2016: https://www.pzbs.pl/archiwum/regulainy-2016/3031-komunikat-organizacyjny-29-mistrzostw-polski-teamow-grand-prix-polski-teamow-2016
    # 2017: https://www.pzbs.pl/archiwum/regulaminy-2017/3544-grand-prix-polski-teamow-2017-komunikat-organizacyjny
    # 2017-18: https://www.pzbs.pl/archiwum/regulaminy-2018/3904-grand-prix-polski-teamow-2017-18
    # 2019-21: https://www.pzbs.pl/archiwum/regulaminy-2021/5302-grand-prix-polski-teamow-2019-20-komunikat
    # 2022: https://www.pzbs.pl/archiwum/2022/6793-grand-prix-polski-teamow-2022-komunikat
    # 2023: https://www.pzbs.pl/2023/7413-grand-prix-polski-teamow-2023-komunikat
    # 2024: https://www.pzbs.pl/nowosci/8266-2024-02-15-12-20-59

    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009A' =>
      {
        CITY => 'Staszic',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-03-08', # Sun
            DATE_END => '2009-03-08' # Sun
          } 
        }
      },
      '2009B' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            DATE_START => '2009-06-13', # Sat
            DATE_END => '2009-06-13' # Sat
          } 
        }
      },
      '2009C' =>
      {
        MEET => 'Baltic Congress',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2009-07-21', # Tue
            DATE_END => '2009-07-21' # Tue
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-07-22', # Wed
            DATE_END => '2009-07-22' # Wed
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-07-22', # Wed
            DATE_END => '2009-07-22' # Wed
          } 
        }
      },
      '2009D' =>
      {
        MEET => 'Warsaw Grand Prix',
        MEET_TAG => '2009',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2009-08-29', # Sat
            DATE_END => '2009-08-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-08-30', # Sun
            DATE_END => '2009-08-30' # Sun
          },
        }
      },
      '2011' =>
      {
        MEET => 'Slawa Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SEGMENT',
            DATE_START => '2011-07-10', # Sun
            DATE_END => '2011-07-10' # Sun
          } 
        }
      },
      '2012A' =>
      {
        MEET => 'Krakow Congress',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'SEGMENT',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-24' # Sat
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-24' # Sat
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-24' # Sat
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            DATE_START => '2012-03-24', # Sat
            DATE_END => '2012-03-24' # Sat
          },
        }
      },
      '2012B' =>
      {
        MEET => 'Slawa Congress',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-07-08', # Sun
            DATE_END => '2012-07-08' # Sun
          } 
        }
      },
      '2013A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            DATE_START => '2013-03-08', # Fri
            DATE_END => '2013-03-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            DATE_START => '2013-03-08', # Fri
            DATE_END => '2013-03-09' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            DATE_START => '2013-03-09', # Sat
            DATE_END => '2013-03-09' # Sat
          } 
        }
      },
      '2013B' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-01' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-01' # Sat
          } 
        }
      },
      '2013C' =>
      {
        MEET => 'Slawa Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-07-08', # Mon
            DATE_END => '2013-07-08' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'MATCH',
            DATE_START => '2013-07-09', # Tue
            DATE_END => '2013-07-09' # Tue
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'MATCH',
            DATE_START => '2013-07-09', # Tue
            DATE_END => '2013-07-09' # Tue
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'MATCH',
            DATE_START => '2013-07-09', # Tue
            DATE_END => '2013-07-09' # Tue
          },
        }
      },
      '2013D' =>
      {
        MEET => 'Baltic Congress',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Rof32',
            major => 'SEGMENT',
            DATE_START => '2013-07-22', # Mon
            DATE_END => '2013-07-22' # Mon
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Rof16',
            major => 'SEGMENT',
            DATE_START => '2013-07-23', # Tue
            DATE_END => '2013-07-23' # Tue
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-24', # Wed
            DATE_END => '2013-07-24' # Wed
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-07-25', # Thu
            DATE_END => '2013-07-25' # Thu
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-07-26', # Fri
            DATE_END => '2013-07-26' # Fri
          } 
        }
      },
      '2013E' =>
      {
        MEET => 'Boleslawiec Festival',
        MEET_TAG => '2013',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-10-03', # Thu
            DATE_END => '2013-10-03' # Thu
          } 
        }
      },
      '2013F' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-12-19', # Thu
            DATE_END => '2013-12-20' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-12-20', # Fri
            DATE_END => '2013-12-20' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-12-21', # Sat
            DATE_END => '2013-12-21' # Sat
          } 
        }
      },
      '2014A' =>
      {
        MEET => 'Luczniczka Meeting',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2014-03-15', # Sat
            DATE_END => '2014-03-15' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2014-03-15', # Sat
            DATE_END => '2014-03-15' # Sat
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-14', # Fri
            DATE_END => '2014-03-15' # Sat
          } 
        }
      },
      '2014B' =>
      {
        # https://wyniki.pzbs.pl/2014/_gpp/07wroclaw/t/fleaderb.html?1401096198
        MEET => 'Wroclaw Meeting',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-05-24', # Sat
            DATE_END => '2014-05-24' # Sat
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Krakow Congress',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            DATE_START => '2015-03-21', # Sat
            DATE_END => '2015-03-21' # Sat
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-21', # Sat
            DATE_END => '2015-03-21' # Sat
          } 
        }
      },
      '2015B' =>
      {
        MEET => 'Luczniczka Meeting',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-03-29', # Sun
            DATE_END => '2015-03-29' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            DATE_START => '2015-03-29', # Sun
            DATE_END => '2015-03-29' # Sun
          } 
        }
      },
      '2016A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-03-04', # Fri
            DATE_END => '2016-03-06' # Sun
          } 
        }
      },
      '2016B' =>
      {
        MEET => 'Luczniczka Meeting',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'SEGMENT',
            DATE_START => '2016-05-14', # Sat
            DATE_END => '2016-05-15' # Sun
          } 
        }
      },
      '2016C' =>
      {
        MEET => 'Poznan Congress',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2016-05-28', # Sat
            DATE_END => '2016-05-28' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-05-28', # Sat
            DATE_END => '2016-05-28' # Sat
          } 
        }
      },
      '2016D' =>
      {
        CITY => 'Dąbrowa Gornicza',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            DATE_START => '2016-06-17', # Fri
            DATE_END => '2016-06-19' # Sun
          },
        }
      },
      '2016E' =>
      {
        # https://wyniki.pzbs.pl/2016/baltycki/
        MEET => 'Baltic Congress',
        MEET_TAG => '2016',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-07-26', # Tue
            DATE_END => '2016-07-26' # Tue
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-07-26', # Tue
            DATE_END => '2016-07-26' # Tue
          } 
        }
      },
    }
  },

  'Janina Wielkoszewska Memorial Open',
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
      '2009' =>
      {
        # https://stara.pzbs.pl/wyniki/2009/krajowe/wielkoszewska2009/TT-08-11/index.html
        ORDINAL => 19,
        CITY => 'Stargard',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-11-08', # Sun
            DATE_END => '2009-11-08' # Sun
          } 
        }
      },
    }
  },

  'Janos Levai Memorial',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Warsaw Grand Prix',
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
      '2012' =>
      {
        MEET => 'Warsaw Grand Prix',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-08-28', # Tue
            DATE_END => '2012-08-28' # Tue
          } 
        }
      },
    }
  },

  'Józef Pochron Jubilee Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/mppimp/W-impa.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-11-22', # Sat
            DATE_END => '2014-11-22' # Sat
          } 
        }
      },
    }
  },

  'Krakow Spring Teams',
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
      '2013' =>
      {
        MEET => 'Krakow Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-03-23', # Sat
            DATE_END => '2013-03-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            DATE_START => '2013-03-23', # Sat
            DATE_END => '2013-03-23' # Sat
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-03-23', # Sat
            DATE_END => '2013-03-23' # Sat
          },
        }
      },
    }
  },

  'Leszek Kwiatkowski Memorial Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-06-02', # Sat
            DATE_END => '2012-06-02' # Sat
          } 
        }
      },
    }
  },

  'Leszek Kwiatkowski Memorial Teams',
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
      '2011' =>
      {
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2011-05-03', # Tue
            DATE_END => '2011-05-03' # Tue
          } 
        }
      },
    }
  },

  'Mondi Cup' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-04-05', # Sun
            DATE_END => '2009-04-05' # Sun
          },
        }
      },
    }
  },

  'MTP Cup' =>
  {
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2011' =>
      {
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-02', # Mon
            DATE_END => '2011-05-02' # Mon
          },
        }
      },
    }
  },

  'Palace Pairs Cup' =>
  {
    ORIGIN => 'Invitational',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Palace Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'MATCH',
            DATE_START => '2014-08-27', # Wed
            DATE_END => '2014-08-29' # Fri
          },
        }
      },
      '2015' =>
      {
        MEET => 'Palace Cup',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SEGMENT',
            DATE_START => '2015-06-22', # Mon
            DATE_END => '2015-06-23' # Tue
          },
        }
      },
    }
  },

  'Palace Teams Cup' =>
  {
    ORIGIN => 'Invitational',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        MEET => 'Palace Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            major => 'MATCH',
            DATE_START => '2015-06-24', # Wed
            DATE_END => '2015-06-24' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-25', # Thu
            DATE_END => '2015-06-25' # Thu
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-25', # Thu
            DATE_END => '2015-06-25' # Thu
          },
        }
      },
      '2016' =>
      {
        MEET => 'Palace Cup',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-04-01', # Fri
            DATE_END => '2016-04-01' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-04-02', # Sat
            DATE_END => '2016-04-02' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-04-02', # Sat
            DATE_END => '2016-04-03' # Sun
          },
        }
      },
    }
  },

  'Plock District League' =>
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    CITY => 'Plock',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-05-09', # Sat
            DATE_END => '2015-05-09' # Sat
          },
        }
      },
    }
  },

  'Polish BAM Cup',
  {
    FORM => 'Teams',
    SCORING => 'BAM',
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
            DATE_START => '2006-08-09', # Wed
            DATE_END => '2006-08-09' # Wed
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
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-05-26', # Sat
            DATE_END => '2007-05-26' # Sat
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-26', # Sat
            DATE_END => '2007-05-26' # Sat
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-27', # Sun
            DATE_END => '2007-05-27' # Sun
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-27', # Sun
            DATE_END => '2007-05-27' # Sun
          } 
        }
      },
    }
  },

  'Polish BAM Teams',
  {
    FORM => 'Teams',
    SCORING => 'BAM',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Slawa Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-07-11', # Fri
            DATE_END => '2014-07-11' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-07-12', # Sat
            DATE_END => '2014-07-12' # Sat
          } 
        }
      },
    }
  },

  'Polish Boys Championship',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'U18', # Unclear

    EDITIONS =>
    {
      '2013a' =>
      {
        # https://www.pzbs.pl/wyniki-mlodziezowe
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            SCORING => 'BAM',
            major => 'SESSION',
            DATE_START => '2013-04-11', # Thu
            DATE_END => '2013-04-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2013,
            SCORING => 'IMP',
            major => 'SESSION',
            DATE_START => '2013-04-13', # Sat
            DATE_END => '2013-04-14' # Sun
          } 
        }
      },
    }
  },

  'Polish Business League',
  {
    ORGANIZATION => 'Bridge Academy Poland',
    COUNTRY => 'Poland',
    CITY => 'Warsaw',
    ORIGIN => 'Company',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014-15' =>
      {
        # http://akademiabrydza.pl/blb/kontakt
        # Only on Wayback Machine
        CHAPTERS =>
        {
          'C00' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-10-22', # Wed
            DATE_END => '2014-10-22' # Wed
          },
          'C01' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-10-29', # Wed
            DATE_END => '2014-10-29' # Wed
          },
          'C02' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-11-05', # Wed
            DATE_END => '2014-11-05' # Wed
          },
          'C03' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-11-12', # Wed
            DATE_END => '2014-11-12' # Wed
          },
          'C04' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-11-19', # Wed
            DATE_END => '2014-11-19' # Wed
          },
          'C05' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-11-26', # Wed
            DATE_END => '2014-11-26' # Wed
          },
          'C06' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-12-03', # Wed
            DATE_END => '2014-12-03' # Wed
          },
          'C07' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-12-10', # Wed
            DATE_END => '2014-12-10' # Wed
          },
          'C08' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-12-17', # Wed
            DATE_END => '2014-12-17' # Wed
          },
          'C09' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-01-07', # Wed
            DATE_END => '2015-01-07' # Wed
          },
          'C10' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-01-14', # Wed
            DATE_END => '2015-01-14' # Wed
          },
        }
      },
    }
  },

  'Polish Business Pairs',
  {
    ORGANIZATION => 'Bridge Academy Poland',
    COUNTRY => 'Poland',
    CITY => 'Warsaw',
    ORIGIN => 'Company',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        # http://akademiabrydza.pl/blb/kontakt
        # Only on Wayback Machine
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SESSION',
            DATE_START => '2014-11-17', # Mon
            DATE_END => '2014-11-17' # Mon
          } 
        }
      },
    }
  },

  'Polish Girls Championship',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U18', # Unclear

    EDITIONS =>
    {
      '2013' =>
      {
        # https://www.pzbs.pl/wyniki-mlodziezowe
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            DATE_START => '2013-04-11', # Thu
            DATE_END => '2013-04-14' # Sun
          } 
        }
      },
    }
  },

  'Polish Girls Trials',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
    AGE => 'U26',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Wroclaw Meeting',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-05-09', # Sat
            DATE_END => '2009-05-10' # Sun
          } 
        }
      },
    }
  },

  'Polish IMP Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        # https://s3.eu-central-1.amazonaws.com/kongres.brydz.wlkp.pl/wyniki2009/W-cz1.html
        MEET => 'Poznan Congress',

        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-06-12', # Fri
            DATE_END => '2009-06-12' # Fri
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-05-01', # Sun
            DATE_END => '2011-05-01' # Sun
          } 
        }
      },
      '2013' =>
      {
        # https://wyniki.pzbs.pl/2013/mppimp/W-impfin.html
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SESSION',
            DATE_START => '2013-11-23', # Sat
            DATE_END => '2013-11-23' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-11-23', # Sat
            DATE_END => '2013-11-23' # Sat
          },
        }
      },
      '2014' =>
      {
        MEET => 'Polish Championships',
        MEET_TAG => '2014B',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-11-22', # Sat
            DATE_END => '2014-11-23' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/kjb/
        CITY => 'Krakow',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-11-21', # Sat
            DATE_END => '2015-11-22' # Sun
          } 
        }
      },
    }
  },

  'Polish Individual Championship',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Individual',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        # http://www.branka.pl/wengorz/TOP/top.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2010-03-27', # Sat
            DATE_END => '2010-03-27' # Sat
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
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2011-01-21', # Fri
            DATE_END => '2011-01-22' # Sat
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-01-22', # Sat
            DATE_END => '2011-01-22' # Sat
          } 
        }
      },
      '2012' =>
      {
        # http://wengorz.waw.pl/top2012/
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-03-30', # Fri
            DATE_END => '2012-03-30' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-03-31', # Sat
            DATE_END => '2012-04-01' # Sun
          } 
        }
      },
      '2013A' =>
      {
        # https://wyniki.pzbs.pl/2013/topi/W-topif.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-04-12', # Fri
            DATE_END => '2013-04-13' # Sat
          } 
        }
      },
      '2013B' =>
      {
        # https://michzimny.pl/bridge/2013/indmp/
        CITY => 'Tarnow',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            major => 'SEGMENT',
            DATE_START => '2013-10-19', # Sat
            DATE_END => '2013-10-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-10-19', # Sat
            DATE_END => '2013-10-20' # Sun
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-10-20', # Sun
            DATE_END => '2013-10-20' # Sun
          }
        }
      },
    }
  },

  'Polish Junior Pairs Trials',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U26',

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
            DATE_START => '2012-04-09', # Mon
            DATE_END => '2012-04-12' # Thu
          } 
        }
      },
    }
  },

  'Polish Mixed Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Poznan Congress',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-06-11', # Thu
            DATE_END => '2009-06-11' # Thu
          },
        }
      },
      '2011A' =>
      {
        # https://s3.eu-central-1.amazonaws.com/kongres.brydz.wlkp.pl/wyniki2011/W-sb2m.html
        MEET => 'Poznan Congress',
        MEET_TAG => '2011',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-04-30', # Sat
            DATE_END => '2011-04-30' # Sat
          } 
        }
      },
      '2011B' =>
      {
        # http://www.kongres-slawa.pl/2011/k4.html
        MEET => 'Slawa Congress',
        MEET_TAG => '2011',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-07-09', # Sat
            DATE_END => '2011-07-09' # Sat
          } 
        }
      },
      '2012' =>
      {
        # https://wyniki.pzbs.pl/2012/mmm/W-mxt.html
        MEET => 'Polish Championships',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-05-01', # Tue
            DATE_END => '2012-05-02' # Wed
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Polish Championships',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-04-29', # Mon
            DATE_END => '2013-04-29' # Mon
          } 
        }
      },
      '2014' =>
      {
        # https://wyniki.pzbs.pl/2014/mpp/W-mxtf.html
        MEET => 'Polish Championships',
        MEET_TAG => '2014A',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            DATE_START => '2014-05-01', # Thu
            DATE_END => '2014-05-02' # Fri
          } 
        }
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/mpp/W-mxtf.html
        MEET => 'Polish Championships',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'SESSION',
            DATE_START => '2015-04-30', # Thu
            DATE_END => '2015-05-01' # Fri
          } 
        }
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/mpp/W-openf2.html
        MEET => 'Polish Championships',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2016-04-30', # Sat
            DATE_END => '2016-05-01' # Sun
          } 
        }
      },
    }
  },

  'Polish Mixed Teams',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Mixed',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        # https://stara.pzbs.pl/wyniki/2007/H500Mixt/final/t/HTleaderb.html
        CITY => 'Zegrze',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2007,
            major => 'ROUND',
            DATE_START => '2007-04-27', # Fri
            DATE_END => '2007-04-29' # Sun
          } 
        }
      },
    }
  },

  'Polish Open Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2006' =>
      {
        MEET => 'Polish Pairs Championship',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-05-07', # Sun
            DATE_END => '2006-05-07' # Sun
          } 
        }
      },
      '2007' =>
      {
        MEET => 'Polish Championships',
        SCORING => 'MP',
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
      '2009' =>
      {
        # https://s3.eu-central-1.amazonaws.com/kongres.brydz.wlkp.pl/wyniki2009/W-cz1.html
        MEET => 'Poznan Congress',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-06-11', # Thu
            DATE_END => '2009-06-11' # Thu
          },
          'C1' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-06-12', # Fri
            DATE_END => '2009-06-12' # Fri
          },
        }
      },
      '2010' =>
      {
        MEET => 'Zulawski Congress',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-02-21', # Sun
            DATE_END => '2010-02-21' # Sun
          } 
        }
      },
      '2011A' =>
      {
        # https://s3.eu-central-1.amazonaws.com/kongres.brydz.wlkp.pl/wyniki2011/W-sb1.html
        MEET => 'Poznan Congress',
        MEET_TAG => '2011',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'SESSION',
            DATE_START => '2011-04-30', # Sat
            DATE_END => '2011-04-30' # Sat
          } 
        }
      },
      '2011B' =>
      {
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-05-14', # Sat
            DATE_END => '2011-05-15' # Sun
          } 
        }
      },
      '2011C' =>
      {
        MEET => 'Slawa Congress',
        MEET_TAG => '2011',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-07-12', # Tue
            DATE_END => '2011-07-12' # Tue
          } 
        }
      },
      '2011D' =>
      {
        MEET => 'Slawa Congress',
        MEET_TAG => '2011',
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            DATE_START => '2011-07-14', # Thu
            DATE_END => '2011-07-15' # Fri
          } 
        }
      },
      '2012A' =>
      {
        # http://wengorz.waw.pl/top2012/
        SCORING => 'IMP',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-03-29', # Thu
            DATE_END => '2012-03-29' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-03-30', # Fri
            DATE_END => '2012-03-30' # Fri
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Polish Pairs Championship',
        MEET_TAG => '2012',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-05-05', # Sat
            DATE_END => '2012-05-06' # Sun
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Polish Championships',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            DATE_START => '2013-05-03', # Fri
            DATE_END => '2013-05-04' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Polish Championships',
        MEET_TAG => '2014A',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-05-03', # Sat
            DATE_END => '2014-05-04' # Sun
          } 
        }
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/mpp/W-mxtf.html
        MEET => 'Polish Championships',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SESSION',
            DATE_START => '2015-05-02', # Sat
            DATE_END => '2015-05-03' # Sun
          } 
        }
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/mpp/W-openf2.html
        MEET => 'Polish Championships',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            DATE_START => '2016-05-02', # Mon
            DATE_END => '2016-05-03' # Tue
          } 
        }
      },
    }
  },

  'Polish Open Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2007' =>
      {
        # https://stara.pzbs.pl/wyniki/2007/krajowe/gpp/09poznan/teamy/TTleaderb.html
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-06-10', # Sun
            DATE_END => '2007-06-10' # Sun
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-06-10', # Sun
            DATE_END => '2007-06-11' # Mon
          } 
        }
      },
      '2009' =>
      {
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'ROUND',
            DATE_START => '2009-06-14', # Sun
            DATE_END => '2009-06-14' # Sun
          } 
        }
      },
      '2010A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2010-02-19', # Fri
            DATE_END => '2010-02-19' # Fri
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            DATE_START => '2010-02-19', # Fri
            DATE_END => '2010-02-19' # Fri
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            DATE_START => '2010-02-19', # Fri
            DATE_END => '2010-02-19' # Fri
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            DATE_START => '2010-02-19', # Fri
            DATE_END => '2010-02-19' # Fri
          }
        }
      },
      '2010B' =>
      {
        MEET => 'Baltic Congress',
        MEET_TAG => '2010',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2010-07-19', # Mon
            DATE_END => '2010-07-20' # Tue
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2010-07-20', # Tue
            DATE_END => '2010-07-20' # Tue
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-07-20', # Tue
            DATE_END => '2010-07-21' # Wed
          },
          'C3' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-07-21', # Wed
            DATE_END => '2010-07-21' # Wed
          } 
        }
      },
      '2012A' =>
      {
        MEET => 'Polish Championships',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2012-05-02', # Wed
            DATE_END => '2012-05-02' # Wed
          },
          'C1' => 
          {
            YEAR => 2012,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2012-05-03', # Thu
            DATE_END => '2012-05-03' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-03', # Thu
            DATE_END => '2012-05-03' # Thu
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-04', # Fri
            DATE_END => '2012-05-04' # Fri
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-04', # Fri
            DATE_END => '2012-05-05' # Sat
          } 
        }
      },
      '2012B' =>
      {
        MEET => 'Baltic Congress',
        MEET_TAG => '2012',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            DATE_START => '2012-07-30', # Mon
            DATE_END => '2012-07-30' # Mon
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Polish Championships',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2013-04-30', # Tue
            DATE_END => '2013-04-30' # Tue
          },
          'C1' => 
          {
            YEAR => 2013,
            MOVEMENT => 'Swiss',
            major => 'ROUND',
            DATE_START => '2013-04-30', # Tue
            DATE_END => '2013-05-01' # Wed
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-01', # Wed
            DATE_END => '2013-05-01' # Wed
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-02', # Thu
            DATE_END => '2013-05-02' # Thu
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-02', # Thu
            DATE_END => '2013-05-03' # Fri
          } 
        }
      },
      '2014A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2014',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-25' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-25', # Sat
            DATE_END => '2014-01-25' # Sat
          } 
        }
      },
      '2014B' =>
      {
        CHAPTERS =>
        {
          # https://wyniki.pzbs.pl/2014/_gpp/teamfin/14gptfrunda2.html
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-12-11', # Thu
            DATE_END => '2014-12-12' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'ROUND',
            DATE_START => '2014-12-12', # Fri
            DATE_END => '2014-12-12' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-12-13', # Sat
            DATE_END => '2014-12-13' # Sat
          } 
        }
      },
      '2015A' =>
      {
        MEET => 'Zulawski Congress',
        MEET_TAG => '2015',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-06', # Fri
            DATE_END => '2015-03-06' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-03-06', # Fri
            DATE_END => '2015-03-07' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-03-07', # Sat
            DATE_END => '2015-03-07' # Sat
          } 
        }
      },
      '2015B' =>
      {
        CHAPTERS =>
        {
          # https://wyniki.pzbs.pl/2015/_gpp/team/15gptofrunda1.html
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2015-12-17', # Thu
            DATE_END => '2015-12-18' # Fri
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-12-18', # Fri
            DATE_END => '2015-12-19' # Sat
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-12-19', # Sat
            DATE_END => '2015-12-19' # Sat
          } 
        }
      },
      '2016' =>
      {
        MEET => 'Krakow Congress',
        CHAPTERS =>
        {
          # https://wyniki.pzbs.pl/2016/kwb/
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            DATE_START => '2016-03-12', # Sat
            DATE_END => '2016-03-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            DATE_START => '2016-03-12', # Sat
            DATE_END => '2016-03-12' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            DATE_START => '2016-03-12', # Sat
            DATE_END => '2016-03-12' # Sat
          },
        }
      }
    }
  },

  'Polish Open Trials',
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
      '2004' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            major => 'SEGMENT',
            DATE_START => '2004-04-28', # Wed
            DATE_END => '2004-04-28' # Wed
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
            major => 'SEGMENT',
            DATE_START => '2005-05-28', # Sat
            DATE_END => '2005-05-31' # Tue
          } 
        }
      },
      '2007A' =>
      {
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2007-01-23', # Tue
            DATE_END => '2007-01-23' # Tue
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-01-24', # Wed
            DATE_END => '2007-01-24' # Wed
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-01-24', # Wed
            DATE_END => '2007-01-24' # Wed
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-01-24', # Wed
            DATE_END => '2007-01-24' # Wed
          },
          'C4' => 
          {
            YEAR => 2007,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-06' # Sun
          },
          'C5' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-06' # Sun
          },
          'C6' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-05-05', # Sat
            DATE_END => '2007-05-06' # Sun
          },
          'C7' => 
          {
            YEAR => 2007,
            major => 'SEGMENT',
            DATE_START => '2007-05-15', # Tue
            DATE_END => '2007-05-15' # Tue
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
            major => 'SEGMENT',
            DATE_START => '2007-08-05', # Sun
            DATE_END => '2007-08-08' # Wed
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
            DATE_START => '2008-01-27', # Sun
            DATE_END => '2008-01-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-01-27', # Sun
            DATE_END => '2008-01-27' # Sun
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-04-02', # Wed
            DATE_END => '2008-04-02' # Wed
          },
          'C4' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-05-03', # Sat
            DATE_END => '2008-05-03' # Sat
          },
          'C5' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-05-04', # Sun
            DATE_END => '2008-05-04' # Sun
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-01-16', # Thu
            DATE_END => '2014-01-17' # Fri
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-01-17', # Fri
            DATE_END => '2014-01-19' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-02-21', # Fri
            DATE_END => '2014-02-22' # Sat
          } 
        }
      },
    }
  },

  'Polish Pairs Cup',
  {
    FORM => 'Pairs',
    SCORING => 'MP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            major => 'SESSION',
            DATE_START => '2012-06-02', # Sat
            DATE_END => '2012-06-02' # Sat
          } 
        }
      },
    }
  },

  'Polish Patton Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'Patton',
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
            DATE_START => '2014-09-27', # Sat
            DATE_END => '2014-09-27' # Sat
          },
        }
      },
    }
  },

  'Polish Patton Teams',
  {
    FORM => 'Teams',
    SCORING => 'Patton',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2009' =>
      {
        MEET => 'Boleslawiec Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2009-09-19', # Sat
            DATE_END => '2009-09-19' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            DATE_START => '2009-09-19', # Sat
            DATE_END => '2009-09-19' # Sat
          },
        }
      },
      '2010' =>
      {
        # https://www.pzbs.pl/wyniki-archiwum/wyniki2010/471-19-boleslawiecka-trzydniowka-wyniki
        MEET => 'Boleslawiec Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            DATE_START => '2010-10-02', # Sat
            DATE_END => '2010-10-02' # Sat
          } 
        }
      },
      '2011' =>
      {
        # https://wyniki.pzbs.pl/2011/110916boles/program.htm
        MEET => 'Boleslawiec Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-09-17', # Sat
            DATE_END => '2011-09-17' # Sat
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Boleslawiec Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2012-09-22', # Sat
            DATE_END => '2012-09-22' # Sat
          } 
        }
      },
      '2013' =>
      {
        MEET => 'Boleslawiec Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2013-10-05', # Sat
            DATE_END => '2013-10-05' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Boleslawiec Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-09-26', # Fri
            DATE_END => '2014-09-27' # Sat
          } 
        }
      },
      '2015' =>
      {
        # https://wyniki.pzbs.pl/2015/_gpp/14boleslawiec/program.htm
        MEET => 'Boleslawiec Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2015-09-18', # Fri
            DATE_END => '2015-09-19' # Sat
          } 
        }
      },
    }
  },

  'Polish Premier League',
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
      '2002-03' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2003,
            DATE_START => '2003-05-28', # Wed
            DATE_END => '2003-05-28' # Wed
          },
        }
      },
      '2003-04' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2004,
            DATE_START => '2004-05-03', # Mon
            DATE_END => '2004-05-03' # Mon
          },
        }
      },
      '2004-05' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            # Dates probably more like May.
            YEAR => 2005,
            DATE_START => '2005-09-23', # Fri
            DATE_END => '2005-09-24' # Sat
          },
        }
      },
      '2005-06' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2006,
            DATE_START => '2006-05-06', # Sat
            DATE_END => '2006-05-07' # Sun
          },
        }
      },
      '2006-07' =>
      {
        # https://stara.pzbs.pl/liga/liga2006_7/pierwsza/1liga20067.htm
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-Robin',
            major => 'ROUND',
            DATE_START => '2007-03-07', # Wed
            DATE_END => '2007-03-07' # Wed
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-06-06', # Wed
            DATE_END => '2007-06-07' # Thu
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2007-06-07', # Thu
            DATE_END => '2007-06-08' # Fri
          },
          'C3' => 
          {
            YEAR => 2007,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2007-06-07', # Thu
            DATE_END => '2007-06-08' # Fri
          },
        }
      },
      '2007-08' =>
      {
        # https://stara.pzbs.pl/liga/liga2007_8/pierwsza/1liga20078.htm
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-05-21', # Wed
            DATE_END => '2008-05-21' # Wed
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-05-21', # Wed
            DATE_END => '2008-05-21' # Wed
          },
        }
      },
      '2008-09' =>
      {
        # https://stara.pzbs.pl/liga/liga2008_9/pierwsza20089/pierwsza20089liga.html

        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-05-14', # Thu
            DATE_END => '2009-05-16' # Sat
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-05-14', # Thu
            DATE_END => '2009-05-16' # Sat
          },
        }
      },
      '2009-10' =>
      {
        # https://www.pzbs.pl/ligi-all/93
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-05-01', # Sat
            DATE_END => '2010-05-02' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-05-02', # Sun
            DATE_END => '2010-05-03' # Mon
          },
          'C2' => 
          {
            YEAR => 2010,
            STAGE => 'Bronze',
            major => 'SEGMENT',
            DATE_START => '2010-05-02', # Sun
            DATE_END => '2010-05-03' # Mon
          },
        }
      },
      '2010-11' =>
      {
        # https://www.pzbs.pl/ligi-all/92?start=20
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2010-10-22', # Fri
            DATE_END => '2010-10-24' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-01-07', # Fri
            DATE_END => '2011-01-09' # Sun
          },
          'C2' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-02-26', # Sat
            DATE_END => '2011-02-27' # Sun
          },
          'C3' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-03-04', # Fri
            DATE_END => '2011-03-05' # Sat
          },
          'C4' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-03-12', # Sat
            DATE_END => '2011-03-13' # Sun
          },
          'C5' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-03-26', # Sat
            DATE_END => '2011-03-27' # Sun
          },
          'C6' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-05-19', # Thu
            DATE_END => '2011-05-20' # Fri
          },
          'C7' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-05-20', # Fri
            DATE_END => '2011-05-21' # Sat
          },
        }
      },
      '2011-12' =>
      {
        # https://www.pzbs.pl/ligi-all/84/1219
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2011-10-07', # Fri
            DATE_END => '2011-10-09' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-01-13', # Fri
            DATE_END => '2012-01-15' # Sun
          },
          'C2' => 
          {
            YEAR => 2012,
            minor => 'SEGMENT',
            DATE_START => '2012-02-11', # Sat
            DATE_END => '2012-02-12' # Sun
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-03-03', # Sat
            DATE_END => '2012-03-03' # Sat
          },
          'C4' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-09', # Wed
            DATE_END => '2012-05-09' # Wed
          },
          'C5' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-05-10', # Thu
            DATE_END => '2012-05-11' # Fri
          },
          'C6' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-05-11', # Fri
            DATE_END => '2012-05-12' # Sat
          }
        }
      },
      '2012-13' =>
      {
        # https://www.pzbs.pl/ligi-all/ekstraklasa
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2012-10-05', # Fri
            DATE_END => '2012-10-07' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-01-04', # Fri
            DATE_END => '2013-01-06' # Sun
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2013-03-09', # Sat
            DATE_END => '2013-03-10' # Sun
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-04-05', # Fri
            DATE_END => '2013-04-05' # Fri
          },
          'C4' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-05-16', # Thu
            DATE_END => '2013-05-17' # Fri
          },
          'C5' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-05-17', # Fri
            DATE_END => '2013-05-18' # Sat
          },
        }
      },
      '2013-14' =>
      {
        # https://www.pzbs.pl/ligi-all/119
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2013-10-11', # Fri
            DATE_END => '2013-10-13' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-01-03', # Fri
            DATE_END => '2014-01-05' # Sun
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-03-07', # Fri
            DATE_END => '2014-03-08' # Sat
          },
          'C3' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-04-11', # Fri
            DATE_END => '2014-04-12' # Sat
          },
          'C4' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-06-12', # Thu
            DATE_END => '2014-06-13' # Fri
          },
          'C5' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-06-13', # Fri
            DATE_END => '2014-06-14' # Sat
          },
        }
      },
      '2014-15' =>
      {
        # https://www.pzbs.pl/ligi-all/132
        CHAPTERS =>
        {
          'C0' => 
          {
            CITY => 'Wroclaw',
            YEAR => 2014,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2014-10-03', # Fri
            DATE_END => '2014-10-05' # Sun
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-01-02', # Fri
            DATE_END => '2015-01-04' # Sun
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-02-07', # Sat
            DATE_END => '2015-02-08' # Sun
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-02-20', # Fri
            DATE_END => '2015-02-21' # Sat
          },
          'C4' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-04-18', # Sat
            DATE_END => '2015-04-19' # Sun
          },
          'C5' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-06-17', # Wed
            DATE_END => '2015-06-17' # Wed
          },
          'C6' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-06-17', # Wed
            DATE_END => '2015-06-19' # Fri
          },
          'C7' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-06-19', # Fri
            DATE_END => '2015-06-20' # Sat
          },
          'C8' => 
          {
            YEAR => 2015,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2015-07-11', # Sat
            DATE_END => '2015-07-12' # Sun
          },
        }
      },
      '2015-16' =>
      {
        # https://www.pzbs.pl/ligi-all/201516/ekstraklasa-201516
        CHAPTERS =>
        {
          'C0' => 
          {
            CITY => 'Wroclaw',
            YEAR => 2015,
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2015-10-16', # Fri
            DATE_END => '2015-10-18' # Sun
          },
          'C1' => 
          {
            CITY => 'Warsaw',
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            minor => 'SEGMENT',
            DATE_START => '2016-01-08', # Fri
            DATE_END => '2016-01-10' # Sun
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-06-09', # Thu
            DATE_END => '2016-06-10' # Fri
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-06-10', # Fri
            DATE_END => '2016-06-11' # Sat
          } 
        }
      },
    }
  },

  'Polish School Pairs',
  {
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',

    EDITIONS =>
    {
      '2012' =>
      {
        MEET => 'Polish School Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            major => 'SEGMENT',
            DATE_START => '2012-06-07', # Thu
            DATE_END => '2012-06-07' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-06-08', # Fri
            DATE_END => '2012-06-08' # Fri
          },
        }
      },
    }
  },

  'Polish School Teams',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',

    EDITIONS =>
    {
      '2010' =>
      {
        MEET => 'Polish School Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Elimination',
            major => 'SEGMENT',
            DATE_START => '2010-06-12', # Sat
            DATE_END => '2010-06-12' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-06-13', # Sun
            DATE_END => '2010-06-13' # Sun
          } 
        }
      },
      '2012' =>
      {
        MEET => 'Polish School Championship',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'MATCH',
            DATE_START => '2012-06-08', # Fri
            DATE_END => '2012-06-08' # Fri
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-08', # Fri
            DATE_END => '2012-06-08' # Fri
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-06-08', # Fri
            DATE_END => '2012-06-08' # Fri
          },
        }
      },
    }
  },

  'Polish Second League',
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
      '2014' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            STAGE => 'Playoff',
            major => 'SEGMENT',
            DATE_START => '2014-05-18', # Sun
            DATE_END => '2014-05-18' # Sun
          } 
        }
      },
    }
  },

  'Polish Senior Trials',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Seniors',

    EDITIONS =>
    {
      # https://wyniki.pzbs.pl/2014/mpps/W-senfin.html
      '2014' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            major => 'SEGMENT',
            DATE_START => '2014-02-15', # Sat
            DATE_END => '2014-02-16' # Sun
          } 
        }
      },
    }
  },

  'Polish Third League',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'Regional',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2015' =>
      {
        CHAPTERS => 
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            DATE_START => '2015-02-28', # Sat
            DATE_END => '2015-02-28' # Sat
          },
        }
      },
    }
  },

  'Polish U16 Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U16',

    EDITIONS =>
    {
      '2012' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2012,
            DATE_START => '2012-05-18', # Fri
            DATE_END => '2012-05-18' # Fri
          } 
        }
      },
    }
  },

  'Polish U16 Teams',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U16',

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
            DATE_START => '2012-05-19', # Sat
            DATE_END => '2012-05-20' # Sun
          } 
        }
      },
    }
  },

  'Polish U20 Trials',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U20',

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
            DATE_START => '2014-04-12', # Sat
            DATE_END => '2014-04-13' # Sun
          } 
        }
      },
    }
  },

  'Polish U25 Trials',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'U25',

    EDITIONS =>
    {
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/mpp/W-u25.html
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-05-01', # Sun
            DATE_END => '2016-05-02' # Mon
          } 
        }
      },
    }
  },

  'Polish Women Pairs',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    GENDER => 'Women',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Polish Championships',
        MEET_TAG => '2014A',
        SCORING => 'MP',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2014,
            DATE_START => '2014-05-02', # Fri
            DATE_END => '2014-05-03' # Sat
          } 
        }
      },
    }
  },

  'Polish Women Trials',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Women',
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
            DATE_START => '2004-04-28', # Wed
            DATE_END => '2004-04-28' # Wed
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
            major => 'SEGMENT',
            DATE_START => '2006-04-05', # Wed
            DATE_END => '2006-04-09' # Sun
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
            DATE_START => '2012-04-27', # Fri
            DATE_END => '2012-04-29' # Sun
          } 
        }
      },
    }
  },

  'Pomerania Cup',
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
      '2009' =>
      {
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2009,
            major => 'SEGMENT',
            DATE_START => '2009-12-03', # Thu
            DATE_END => '2009-12-03' # Thu
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
            DATE_START => '2010-10-09', # Sat
            DATE_END => '2010-10-09' # Sat
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
            DATE_START => '2011-10-06', # Thu
            DATE_END => '2011-10-06' # Thu
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
            major => 'SEGMENT',
            DATE_START => '2013-12-07', # Sat
            DATE_END => '2013-12-07' # Sat
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
            DATE_START => '2014-10-26', # Sun
            DATE_END => '2014-10-26' # Sun
          } 
        }
      },
    }
  },

  'Sigismund Bell Krakow',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        MEET => 'Krakow Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            DATE_START => '2014-03-29', # Sat
            DATE_END => '2014-03-29' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-03-29', # Sat
            DATE_END => '2014-03-29' # Sat
          } 
        }
      },
    }
  },

  'SPS Trophy',
  {
    ORGANIZATION => 'PZBS',
    COUNTRY => 'Poland',
    ORIGIN => 'National',
    ZONE => 'Europe',
    FORM => 'Pairs',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2014' =>
      {
        # http://www.czaja.pzbs.pl/wyniki/2014/sps/W-loj2.html
        CITY => 'Lojdy',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-05-16', # Fri
            DATE_END => '2014-05-17' # Sat
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'ROUND',
            DATE_START => '2014-05-16', # Fri
            DATE_END => '2014-05-17' # Sat
          } 
        }
      },
      '2015' =>
      {
        # http://czaja.pzbs.pl/wyniki/2015/sps/15lojdy.html
        CITY => 'Lojdy',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2015,
            major => 'ROUND',
            DATE_START => '2015-05-15', # Fri
            DATE_END => '2015-05-16' # Sat
          } 
        }
      },
      '2016' =>
      {
        # https://wyniki.pzbs.pl/2016/sps/W-spscup.html
        CITY => 'Lojdy',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2016,
            major => 'ROUND',
            DATE_START => '2016-06-03', # Fri
            DATE_END => '2016-06-04' # Sat
          } 
        }
      },
    }
  },

  'Staszek Wybranowski Memorial',
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
      '2011' =>
      {
        # https://s3.eu-central-1.amazonaws.com/kongres.brydz.wlkp.pl/wyniki2011/W-sb2.html
        MEET => 'Poznan Congress',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2011,
            major => 'ROUND',
            DATE_START => '2011-04-30', # Sat
            DATE_END => '2011-04-30' # Sat
          } 
        }
      },
    }
  },

  'Warsaw Online Teams',
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
      # https://wyniki.pzbs.pl/2013/130530zlot/W-13zlotmax1.html
      '2013' =>
      {
        CITY => 'Warsaw',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-01' # Sat
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-06-01', # Sat
            DATE_END => '2013-06-01' # Sat
          } 
        }
      },
    }
  },

  'Wronie Summer Teams',
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
      '2010' =>
      {
        CITY => 'Wronie',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2010,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-08-14', # Sat
            DATE_END => '2010-08-14' # Sat
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-08-14', # Sat
            DATE_END => '2010-08-14' # Sat
          } 
        }
      },
    }
  },

  'Zulawski Cup',
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2016' =>
      {
        MEET => 'Zulawski Congress',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2016,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2016-03-04', # Fri
            DATE_END => '2016-03-04' # Fri
          },
          'C1' => 
          {
            YEAR => 2016,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-05', # Sat
            DATE_END => '2016-03-05' # Sat
          },
          'C2' => 
          {
            YEAR => 2016,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2016-03-05', # Sat
            DATE_END => '2016-03-05' # Sat
          },
          'C3' => 
          {
            YEAR => 2016,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2016-03-05', # Sat
            DATE_END => '2016-03-05' # Sat
          } 
        }
      },
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_POLAND, \%TOURNAMENTS_POLAND, 'Poland');
}

1;
