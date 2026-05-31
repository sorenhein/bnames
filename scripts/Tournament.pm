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
      die "Unexpected field $field\n";
    }

    if (exists $self->{FIELDS}{$field} &&
        $self->{FIELDS}{$field} ne $hash->{$field})
    {
      return 0;
    }
  }
  return 1;
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
