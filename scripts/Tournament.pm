#!perl

package Tournament;

use strict;
use warnings;
use Exporter;
use v5.10;

use lib '.';


my %TFIELDS_TEXT =
(
  MEET => 1,
  MEET_ORDINAL => 1,
  TOURNAMENT_NAME => 1,
  ORDINAL => 1,
  COUNTRY => 1,
  ORIGIN => 1,
  ORGANIZATION => 1,
  SPONSOR => 1,
  PERSON => 1,
  ZONE => 1,
  REGION => 1,
  CITY => 1,
  LOCALITY => 1,
  CLUB => 1,
  FORM => 1,
  SCORING => 1,
  YEAR => 1,
  AGE => 1,
  GENDER => 1,
  DATE_START => 1,
  DATE_END => 1
);

my %BFIELDS_TEXT =
(
  DATE_ADDED => 1
);

my %BFIELDS_SEMANTIC =
(
  TEAM1_AGE => ['TEAM1', 'AGE'],
  TEAM2_AGE => ['TEAM2', 'AGE'],
  TEAM1_BOT => ['TEAM1', 'BOT'],
  TEAM2_BOT => ['TEAM2', 'BOT'],
  TEAM1_CAPTAIN => ['TEAM1', 'CAPTAIN'],
  TEAM2_CAPTAIN => ['TEAM2', 'CAPTAIN'],
  TEAM1_CITY => ['TEAM1', 'CITY'],
  TEAM2_CITY => ['TEAM2', 'CITY'],
  TEAM1_CLUB => ['TEAM1', 'CLUB'],
  TEAM2_CLUB => ['TEAM2', 'CLUB'],
  TEAM1_COUNTRY => ['TEAM1', 'COUNTRY'],
  TEAM2_COUNTRY => ['TEAM2', 'COUNTRY'],
  TEAM1_FIRST => ['TEAM1', 'FIRST'],
  TEAM2_FIRST => ['TEAM2', 'FIRST'],
  TEAM1_FUN => ['TEAM1', 'FUN'],
  TEAM2_FUN => ['TEAM2', 'FUN'],
  TEAM1_GENDER => ['TEAM1', 'GENDER'],
  TEAM2_GENDER => ['TEAM2', 'GENDER'],
  TEAM1_LOCALITY => ['TEAM1', 'LOCALITY'],
  TEAM2_LOCALITY => ['TEAM2', 'LOCALITY'],
  TEAM1_NATIONALITY => ['TEAM1', 'NATIONALITY'],
  TEAM2_NATIONALITY => ['TEAM2', 'NATIONALITY'],
  TEAM1_ORGANIZATION => ['TEAM1', 'ORGANIZATION'],
  TEAM2_ORGANIZATION => ['TEAM2', 'ORGANIZATION'],
  TEAM1_OTHER => ['TEAM1', 'OTHER'],
  TEAM2_OTHER => ['TEAM2', 'OTHER'],
  TEAM1_REGION => ['TEAM1', 'REGION'],
  TEAM2_REGION => ['TEAM2', 'REGION'],
  TEAM1_SPONSOR => ['TEAM1', 'SPONSOR'],
  TEAM2_SPONSOR => ['TEAM2', 'SPONSOR'],
  TEAM1_UNIVERSITY => ['TEAM1', 'UNIVERSITY'],
  TEAM2_UNIVERSITY => ['TEAM2', 'UNIVERSITY'],
  TEAM1_ZONE => ['TEAM1', 'ZONE'],
  TEAM2_ZONE => ['TEAM2', 'ZONE']
);

my %BFIELDS_DISCARD =
(
  ROUND => 1,
  MATCH => 1,
  SESSION => 1,
  SECTION => 1,
  SEGMENT => 1,
  HALF => 1,
  QUARTER => 1,
  TABLE => 1,
  BOARDS => 1,
  DAY => 1,
  WEEKEND => 1,
  WEEKDAY => 1,
  TIME => 1,
  COLOR => 1
);

my %BBO_NOWARN =
(
  4549 => 1,
  4551 => 1,
  6556 => 1,
  6559 => 1,
  6563 => 1,
  6566 => 1,
  6569 => 1,
  6582 => 1,
  6584 => 1,
  6596 => 1,
  6602 => 1,
  6604 => 1,
  6609 => 1,
  6619 => 1,
  6620 => 1,
  7640 => 1,
  7649 => 1,
  7664 => 1,
  7665 => 1,
  8055 => 1,
  8058 => 1,
  8415 => 1,
  8416 => 1,
  8417 => 1,
  8422 => 1,
  8424 => 1,
  8425 => 1,
  8798 => 1,
  8799 => 1,
  8800 => 1,
  9002 => 1,
);


sub new
{
  my $class = shift;
  return bless {}, $class;
}


sub set
{
  my ($self, $hash) = @_;

  for my $field (keys %$hash)
  {
    if (exists $TFIELDS_TEXT{$field})
    {
      if (exists $self->{FIELDS}{$field} &&
          $self->{FIELDS}{$field} ne $hash->{$field})
      {
        print_hash($hash);
        die "Overwrite field $field, was $self->{FIELDS}{$field}";
      }

      $self->{FIELDS}{$field} = $hash->{$field};
    }
    else
    {
      print_hash($hash);
      die "Unexpected field $field";
    }
  }
}


sub add_bbo
{
  my ($self, $hash) = @_;

  if (! exists $hash->{BBONO})
  {
    print_hash($hash);
    die "Needs BBONO";
  }

  my $bbono = $hash->{BBONO};

  for my $field (keys %$hash)
  {
    next if $field eq 'BBONO';
    if (exists $BFIELDS_TEXT{$field})
    {
      if (exists $self->{LININFO}{$bbono}{$field} &&
          $self->{LININFO}{$bbono}{$field} ne $hash->{$field})
      {
        print_hash($hash);
        die "Overwrite LININFO field $field, " .
            "was $self->{LININFO}{$bbono}{$field}";
      }

      $self->{LININFO}{$bbono}{$field} = $hash->{$field};
    }
    elsif (exists $BFIELDS_SEMANTIC{$field})
    {
      my ($team, $subfield) = @{$BFIELDS_SEMANTIC{$field}};
      if (exists $self->{LININFO}{$bbono}{$team}{$subfield} &&
          $self->{LININFO}{$bbono}{$team}{$subfield} ne $hash->{$field})
      {
        print_hash($hash);
        die "Overwrite LININFO field $field, " .
            "was $self->{LININFO}{$bbono}{$team}{$subfield}";
      }

      $self->{LININFO}{$bbono}{$team}{$subfield} = $hash->{$field};
    }
    elsif (! exists $BFIELDS_DISCARD{$field})
    {
      print_hash($hash);
      die "Unexpected LININFO field $field";
    }
  }
}


sub match
{
  my ($self, $hash) = @_;

  for my $field (keys %$hash)
  {
    if (! exists $TFIELDS_TEXT{$field})
    {
      print_hash($hash);
      die "Unexpected field $field";
    }

    if (exists $self->{FIELDS}{$field} &&
        $self->{FIELDS}{$field} ne $hash->{$field})
    {
      return 0;
    }
  }
  return 1;
}


sub write_names_manual
{
  my ($self, $bbono_hash, $prefix, $year_disamb) = @_;

  if (! exists $self->{FIELDS}{TOURNAMENT_NAME})
  {
    print_hash($self->{FIELDS});
    die "No TOURNAMENT_NAME";
  }
  my $tname = $self->{FIELDS}{TOURNAMENT_NAME};

  if (! exists $self->{FIELDS}{YEAR})
  {
    print_hash($self->{FIELDS});
    die "No YEAR";
  }
  my $year = $self->{FIELDS}{YEAR} . $year_disamb;

  my $dir1 = "$prefix/$tname";
  my $dir2 = "$dir1/$year";
  my $fname = "$dir2/names.txt";

  mkdir $dir1 unless -d $dir1;
  mkdir $dir2 unless -d $dir2;

  open my $fh, '>:encoding(UTF-8)', $fname or 
    die "Cannot write $fname: $!";

  for my $bbono (sort {$a <=> $b} keys %{$self->{LININFO}})
  {
    if (! exists $bbono_hash->{$bbono})
    {
      warn "$fname: No BBONO $bbono" unless exists $BBO_NOWARN{$bbono};
      next;
    }

    print $fh "$bbono $bbono_hash->{$bbono}\n";
  }

  close $fh;
}


sub print_hash
{
  # Not a member method.
  my ($hash) = @_;

  for my $field (keys %$hash)
  {
    print "$field $hash->{$field}\n";
  }
}

1;
