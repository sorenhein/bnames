#!perl

use strict;
use warnings;
use v5.10;
use utf8;
use open ':std', ':encoding(UTF-8)';

package Tournaments::Japan;

our @ISA = qw(Exporter);
our @EXPORT = qw(set_links);

my %MEETS_JAPAN =
(
  'Yokohama Bridge Festival' =>
  {
    ORGANIZATION => 'JCBL',
    COUNTRY => 'Japan',
    ORIGIN => 'National',
    ZONE => 'Asia',

    EDITIONS => 
    {
      '2001' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/6th/tabid/235/Default.aspx
        ORDINAL => 6,
        YEAR => 2001,
        DATE_START => '2001-02-07', # Wed
        DATE_END => '2001-02-11' # Sun
      },
      '2005' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/10th/tabid/231/Default.aspx
        ORDINAL => 10,
        YEAR => 2005,
        DATE_START => '2005-02-08', # Tue
        DATE_END => '2005-02-13' # Sun
      },
      '2006' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/11th/tabid/230/Default.aspx
        ORDINAL => 11,
        YEAR => 2006,
        DATE_START => '2006-02-07', # Tue
        DATE_END => '2006-02-12' # Sun
      },
      '2007' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/12th/tabid/229/Default.aspx
        ORDINAL => 12,
        YEAR => 2007,
        DATE_START => '2007-02-07', # Wed
        DATE_END => '2007-02-12' # Mon
      },
      '2008' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/13th/tabid/228/Default.aspx
        ORDINAL => 13,
        YEAR => 2008,
        DATE_START => '2008-02-06', # Wed
        DATE_END => '2008-02-11' # Mon
      },
      '2009' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/14th/tabid/227/Default.aspx
        ORDINAL => 14,
        YEAR => 2009,
        DATE_START => '2009-02-10', # Tue
        DATE_END => '2009-02-15' # Sun
      },
      '2010' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/15th/tabid/226/Default.aspx
        ORDINAL => 15,
        YEAR => 2010,
        DATE_START => '2010-02-08', # Mon
        DATE_END => '2010-02-14' # Sun
      },
      '2011' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/16th/tabid/225/Default.aspx
        ORDINAL => 16,
        YEAR => 2011,
        DATE_START => '2011-02-07', # Mon
        DATE_END => '2011-02-13' # Sun
      },
      '2012' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/16th/tabid/225/Default.aspx
        ORDINAL => 17,
        YEAR => 2012,
        DATE_START => '2012-02-06', # Mon
        DATE_END => '2012-02-12' # Sun
      },
      '2013' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/18th/tabid/1125/Default.aspx
        ORDINAL => 18,
        YEAR => 2013,
        DATE_START => '2013-04-16', # Tue
        DATE_END => '2013-04-21' # Sun
      },
      '2014' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/19th/tabid/1190/Default.aspx
        ORDINAL => 19,
        YEAR => 2014,
        DATE_START => '2014-02-11', # Tue
        DATE_END => '2014-02-16' # Sun
      },
      '2015' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/20th/tabid/1191/Default.aspx
        ORDINAL => 20,
        YEAR => 2015,
        DATE_START => '2015-02-10', # Tue
        DATE_END => '2015-02-15' # Sun
      },
      '2017' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/past/21st/tabid/1429/Default.aspx
        ORDINAL => 21,
        YEAR => 2017,
        DATE_START => '2017-02-07', # Tue
        DATE_END => '2017-02-12' # Sun
      },
      '2019' =>
      {
        # https://www.jcbl.or.jp/home/English/bf/22nd/tabid/1574/Default.aspx
        ORDINAL => 22,
        YEAR => 2019,
        DATE_START => '2019-02-19', # Tue
        DATE_END => '2019-02-24' # Sun
      },
    }
  }
);

my %TOURNAMENTS_JAPAN =
(
  'Japanese District KO Teams' => 
  {
    ORGANIZATION => 'JCBL',
    COUNTRY => 'Japan',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            major => 'SEGMENT',
            DATE_START => '2006-05-28', # Sun
            DATE_END => '2006-05-28' # Sun
          } 
        }
      },
    }
  },

  'Japanese Open Trials' => 
  {
    ORGANIZATION => 'JCBL',
    COUNTRY => 'Japan',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            major => 'MATCH',
            DATE_START => '2006-03-08', # Wed
            DATE_END => '2006-03-12' # Sun
          } 
        }
      },
    }
  },

  'Kanto Teams' => 
  {
    ORGANIZATION => 'JCBL',
    COUNTRY => 'Japan',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-05-15', # Sun
            DATE_END => '2005-05-15' # Sun
          } 
        }
      },
    }
  },

  'NEC Cup' => 
  {
    FORM => 'Teams',
    SCORING => 'IMP',
    GENDER => 'Open',
    AGE => 'Open',

    EDITIONS =>
    {
      '2001' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2001,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2001-02-08', # Thu
            DATE_END => '2001-02-08' # Thu
          },
          'C1' => 
          {
            YEAR => 2001,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2001-02-09', # Fri
            DATE_END => '2001-02-09' # Fri
          },
          'C2' => 
          {
            YEAR => 2001,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2001-02-10', # Sat
            DATE_END => '2001-02-10' # Sat
          },
          'C3' => 
          {
            YEAR => 2001,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2001-02-11', # Sun
            DATE_END => '2001-02-11' # Sun
          } 
        }
      },
      '2005' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2005,
            STAGE => 'Round-robin',
            major => 'ROUND',
            DATE_START => '2005-02-08', # Tue
            DATE_END => '2005-02-09' # Wed
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2005-02-10', # Thu
            DATE_END => '2005-02-10' # Thu
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-02-11', # Fri
            DATE_END => '2005-02-11' # Fri
          },
          'C3' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-02-12', # Sat
            DATE_END => '2005-02-12' # Sat
          },
        }
      },
      '2006' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2006,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2006-02-07', # Tue
            DATE_END => '2006-02-08' # Wed
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2006-02-09', # Thu
            DATE_END => '2006-02-09' # Thu
          },
          'C2' => 
          {
            YEAR => 2006,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2006-02-10', # Fri
            DATE_END => '2006-02-10' # Fri
          },
          'C3' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-02-11', # Sat
            DATE_END => '2006-02-11' # Sat
          },
        }
      },
      '2007' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2007,
            STAGE => 'Round-robin',
            major => 'MATCH',
            DATE_START => '2007-02-08', # Thu
            DATE_END => '2007-02-08' # Thu
          },
          'C1' => 
          {
            YEAR => 2007,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2007-02-09', # Fri
            DATE_END => '2007-02-09' # Fri
          },
          'C2' => 
          {
            YEAR => 2007,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2007-02-10', # Sat
            DATE_END => '2007-02-10' # Sat
          },
          'C3' => 
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
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Round-robin',
            major => 'MATCH',
            DATE_START => '2008-02-07', # Thu
            DATE_END => '2008-02-07' # Thu
          },
          'C1' => 
          {
            YEAR => 2008,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2008-02-08', # Fri
            DATE_END => '2008-02-08' # Fri
          },
          'C2' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-02-09', # Sat
            DATE_END => '2008-02-09' # Sat
          },
          'C3' => 
          {
            YEAR => 2008,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2008-02-10', # Sun
            DATE_END => '2008-02-10' # Sun
          },
        }
      },
      '2009' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Qualifying',
            major => 'MATCH',
            DATE_START => '2009-02-12', # Thu
            DATE_END => '2009-02-12' # Thu
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2009-02-12', # Thu
            DATE_END => '2009-02-12' # Thu
          },
          'C2' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-02-13', # Fri
            DATE_END => '2009-02-13' # Fri
          },
          'C3' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-02-13', # Fri
            DATE_END => '2009-02-14' # Sat
          },
        }
      },
      '2010' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'SINGLE' => 
          {
            YEAR => 2010,
            DATE_START => '2010-02-08', # Mon
            DATE_END => '2010-02-13' # Sat
          } 
        }
      },
      '2011' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2011,
            STAGE => 'Qualifying',
            major => 'MATCH',
            DATE_START => '2011-02-07', # Mon
            DATE_END => '2011-02-09' # Wed
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2011-02-10', # Thu
            DATE_END => '2011-02-11' # Fri
          },
          'C2' => 
          {
            YEAR => 2011,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2011-02-11', # Fri
            DATE_END => '2011-02-11' # Fri
          },
          'C3' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-02-11', # Fri
            DATE_END => '2011-02-12' # Sat
          },
        }
      },
      '2012' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2012,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2012-02-06', # Mon
            DATE_END => '2012-02-09' # Thu
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-09', # Thu
            DATE_END => '2012-02-09' # Thu
          },
          'C2' => 
          {
            YEAR => 2012,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2012-02-10', # Fri
            DATE_END => '2012-02-10' # Fri
          },
          'C3' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-02-10', # Fri
            DATE_END => '2012-02-11' # Sat
          },
        }
      },
      '2013' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2013,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2013-04-16', # Tue
            DATE_END => '2013-04-18' # Thu
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2013-04-19', # Fri
            DATE_END => '2013-04-19' # Fri
          },
          'C2' => 
          {
            YEAR => 2013,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-04-19', # Fri
            DATE_END => '2013-04-19' # Fri
          },
          'C3' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-04-20', # Sat
            DATE_END => '2013-04-20' # Sat
          } 
        }
      },
      '2014' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2014,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2014-02-11', # Tue
            DATE_END => '2014-02-13' # Thu
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2014-02-14', # Fri
            DATE_END => '2014-02-14' # Fri
          },
          'C2' => 
          {
            YEAR => 2014,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-02-14', # Fri
            DATE_END => '2014-02-14' # Fri
          },
          'C3' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-02-15', # Sat
            DATE_END => '2014-02-15' # Sat
          },
        }
      },
      '2015' =>
      {
        MEET => 'Yokohama Bridge Festival',
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2015,
            STAGE => 'Qualifying',
            major => 'ROUND',
            DATE_START => '2015-02-10', # Tue
            DATE_END => '2015-02-12' # Thu
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Quarterfinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-13', # Fri
            DATE_END => '2015-02-13' # Fri
          },
          'C2' => 
          {
            YEAR => 2015,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2015-02-13', # Fri
            DATE_END => '2015-02-13' # Fri
          },
          'C3' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-02-14', # Sat
            DATE_END => '2015-02-14' # Sat
          },
        }
      },
    }
  },

  'Prince Takamatsu Cup' => 
  {
    ORGANIZATION => 'JCBL',
    COUNTRY => 'Japan',
    ORIGIN => 'National',
    ZONE => 'Asia',
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
            STAGE => 'Qualifying',
            major => 'MATCH',
            minor => 'SEGMENT',
            DATE_START => '2005-09-23', # Fri
            DATE_END => '2005-09-23' # Fri
          },
          'C1' => 
          {
            YEAR => 2005,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2005-09-24', # Sat
            DATE_END => '2005-09-24' # Sat
          },
          'C2' => 
          {
            YEAR => 2005,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2005-09-25', # Sun
            DATE_END => '2005-09-25' # Sun
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
            DATE_START => '2006-10-04', # Wed
            DATE_END => '2006-10-04' # Wed
          },
          'C1' => 
          {
            YEAR => 2006,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2006-10-04', # Wed
            DATE_END => '2006-10-04' # Wed
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
            DATE_START => '2007-09-29', # Sat
            DATE_END => '2007-09-29' # Sat
          },
          'C1' => 
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
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2008,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2008-09-27', # Sat
            DATE_END => '2008-09-27' # Sat
          },
          'C1' => 
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
        CHAPTERS =>
        {
          'C0' => 
          {
            YEAR => 2009,
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2009-09-26', # Sat
            DATE_END => '2009-09-27' # Sun
          },
          'C1' => 
          {
            YEAR => 2009,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2009-09-27', # Sun
            DATE_END => '2009-09-27' # Sun
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2010-09-25', # Sat
            DATE_END => '2010-09-26' # Sun
          },
          'C1' => 
          {
            YEAR => 2010,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2010-09-26', # Sun
            DATE_END => '2010-09-26' # Sun
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
            DATE_START => '2011-09-24', # Sat
            DATE_END => '2011-09-25' # Sun
          },
          'C1' => 
          {
            YEAR => 2011,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2011-09-25', # Sun
            DATE_END => '2011-09-25' # Sun
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
            DATE_START => '2012-09-23', # Sun
            DATE_END => '2012-09-23' # Sun
          },
          'C1' => 
          {
            YEAR => 2012,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2012-09-23', # Sun
            DATE_END => '2012-09-23' # Sun
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2013-09-22', # Sun
            DATE_END => '2013-09-22' # Sun
          },
          'C1' => 
          {
            YEAR => 2013,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2013-09-22', # Sun
            DATE_END => '2013-09-22' # Sun
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
            STAGE => 'Semifinal',
            major => 'SEGMENT',
            DATE_START => '2014-09-21', # Sun
            DATE_END => '2014-09-21' # Sun
          },
          'C1' => 
          {
            YEAR => 2014,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2014-09-21', # Sun
            DATE_END => '2014-09-21' # Sun
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
            DATE_START => '2015-09-23', # Wed
            DATE_END => '2015-09-23' # Wed
          },
          'C1' => 
          {
            YEAR => 2015,
            STAGE => 'Final',
            major => 'SEGMENT',
            DATE_START => '2015-09-23', # Wed
            DATE_END => '2015-09-23' # Wed
          } 
        }
      },

      # https://bridgescanner.com/event/takamatsunomiya-memorial-cup-2020
      # https://bridgescanner.com/event/takamatsunomiya-memorial-cup-2021
      # https://bridgescanner.com/event/takamatsunomiya-memorial-cup-2022
      # https://bridgescanner.com/event/takamatsunomiya-memorial-cup-2023
    }
  },

);


sub set_links
{
  my ($method) = @_;

  $method->(\%MEETS_JAPAN, \%TOURNAMENTS_JAPAN, 'Japan');
}

1;
