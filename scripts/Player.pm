#!perl

package Player;

use strict;
use warnings;
use Exporter;
use v5.10;

use lib '.';


my %FIELDS_KEEP =
(
  NAME => 1,
  NAME_DEPRECATED => 1,
  NAME_PREFERRED => 1,
  COUNTRY => 1,
  COUNTRY_DEPRECATED => 1,
  EBL => 1,
  GENDER => 1,
  BIRTH_EXACT => 1,
  DEATH_EXACT => 1,
);


my %FIELDS_DISCARD =
(
  WBF => 1,
  WBF_DEPRECATED => 1,
  TOURNAMENT => 1
);


sub new
{
  my $class = shift;
  return bless {}, $class;
}


sub set
{
  my ($self, $hash) = @_;

  for my $field (sort keys %$hash)
  {
    if (exists $FIELDS_KEEP{$field})
    {
      if ($field eq 'NAME_PREFERRED')
      {
        # OK to overwrite.
        $self->{FIELDS}{NAME} = $hash->{$field};
      }
      elsif (exists $self->{FIELDS}{$field} &&
          $self->{FIELDS}{$field} ne $hash->{$field})
      {
        print_hash($hash);
        die "Overwrite field $field, was $self->{FIELDS}{$field}";
      }
      else
      {
        $self->{FIELDS}{$field} = $hash->{$field};
      }
    }
    elsif (! exists $FIELDS_DISCARD{$field})
    {
      print_hash($hash);
      die "Unexpected field $field";
    }
  }

  if (! exists $self->{FIELDS}{NAME})
  {
    print_hash($hash);
    die "No NAME field";
  }

  $self->analyze_name();
}


sub analyze_name
{
  my ($self) = @_;

  if (! exists $self->{FIELDS}{NAME})
  {
    print_hash($self->{FIELDS});
    die "No NAME field";
  }

  my $first_lower = -1;
  my $last_lower = -1;
  my $first_initial = -1;
  my $last_initial = -1;
  my $first_upper = -1;
  my $last_upper = -1;

  my @a;
  if ($self->{FIELDS}{NAME} =~ /^- /)
  {
    # Dash is a missing first name (probably).
    @a = split /\s+/, $self->{FIELDS}{NAME};
  }
  else
  {
    @a = split /\s+|-/, $self->{FIELDS}{NAME};
  }
  my $len = $#a;

  # First extract any nickname. Assume there is only one.
  for my $i (0 .. $len)
  {
    my $word = $a[$i];
    if ($word =~ /^\([A-Z][a-z]+\)$/)
    {
      push @{$self->{NICKNAME}}, $word;
      splice @a, $i, 1;
      $len--;
      last;
    }
  }

  # Then look for instances of more than one player with that name.
  for my $i (0 .. $len)
  {
    my $word = $a[$i];
    if ($word =~ /^\(\d\)$/)
    {
      push @{$self->{NAME_INSTANCE}}, $1;
      splice @a, $i, 1;
      $len--;
      last;
    }
  }

  # Then eliminate any dynast title.
  if ($a[$len] eq 'Jr' || $a[$len] eq 'Sr')
  {
    push @{$self->{NAME_DYNAST}}, $a[$len];
    splice @a, $len, 1;
    $len--;
  }


  # Then do the regular loop.
  for my $i (0 .. $len)
  {
    my $word = $a[$i];
    if ($word =~ /^[A-Z]\.?$/)
    {
      # Initial.
      $first_initial = $i if $first_initial < 0;
      $last_initial = $i;
    }
    elsif ($word eq '-')
    {
      # Count as a first name.
      $first_lower = $i if $first_lower < 0;
      $last_lower = $i;
    }
    elsif ($word eq uc($word))
    {
      # Last name.
      $first_upper = $i if $first_upper < 0;
      $last_upper = $i;
    }
    elsif ($word =~ /^[A-Z][a-z]+$/)
    {
      # First name.
      $first_lower = $i if $first_lower < 0;
      $last_lower = $i;
    }
    elsif (length($word) > 2 &&
        substr($word, 0, 2) eq 'Mc' &&
        substr($word, 2) eq uc(substr($word, 2)))
    {
      # Last name starting with Mc.
      $first_upper = $i if $first_upper < 0;
      $last_upper = $i;
    }
    elsif (length($word) > 4 &&
        substr($word, 0, 3) eq 'Mac' &&
        substr($word, 3) eq uc(substr($word, 3)))
    {
      # Last name starting with Mc.
      $first_upper = $i if $first_upper < 0;
      $last_upper = $i;
    }
  }

  if ($first_lower == -1 && $first_upper == -1)
  {
    warn "Malformed NAME: $self->{FIELDS}{NAME}";
  }

  if ($first_initial > $first_upper &&
      $last_initial < $last_upper)
  {
    # Something like Claudia POMARES Y DE MORANT
    $first_initial = -1;
    $last_initial = -1;
  }

  if ($first_lower == -1)
  {
    if ($first_initial == 0 &&
        $last_initial+1 == $first_upper &&
        $last_upper == $len)
    {
      $self->transfer_list(\@a, 'FIRST_INITIAL', 
        $first_initial, $last_initial);
      $self->transfer_list(\@a, 'LAST', $first_upper, $last_upper);
    }
    elsif ($first_upper == 0 &&
        $last_upper+1 == $first_initial &&
        $last_initial == $len)
    {
      $self->transfer_list(\@a, 'FIRST_INITIAL', 
        $first_initial, $last_initial);
      $self->transfer_list(\@a, 'LAST', $first_upper, $last_upper);
    }
    else
    {
      warn "Malformed NAME: $self->{FIELDS}{NAME}";
      return;
    }
  }
  elsif ($first_initial == -1)
  {
    if ($first_lower == 0 &&
        $last_lower+1 == $first_upper &&
        $last_upper == $len)
    {
      $self->transfer_list(\@a, 'FIRST', $first_lower, $last_lower);
      $self->transfer_list(\@a, 'LAST', $first_upper, $last_upper);
    }
    elsif ($first_upper == 0 &&
        $last_upper+1 == $first_lower &&
        $last_lower == $len)
    {
      $self->transfer_list(\@a, 'FIRST', $first_lower, $last_lower);
      $self->transfer_list(\@a, 'LAST', $first_upper, $last_upper);
    }
    else
    {
      warn "Malformed NAME: $self->{FIELDS}{NAME}";
    }
  }
  elsif ($first_lower == 0 && 
        $last_lower+1 == $first_initial &&
        $last_initial+1 == $first_upper &&
        $last_upper == $len)
  {
    $self->transfer_list(\@a, 'FIRST', $first_lower, $last_lower);
    $self->transfer_list(\@a, 'MIDDLE_INITIAL', 
      $first_initial, $last_initial);
    $self->transfer_list(\@a, 'LAST', $first_upper, $last_upper);
  }
  elsif ($first_initial == 0 && 
        $last_initial+1 == $first_lower &&
        $last_lower+1 == $first_upper &&
        $last_upper == $len)
  {
    $self->transfer_list(\@a, 'FIRST_INITIAL', 
      $first_initial, $last_initial);
    $self->transfer_list(\@a, 'FIRST', $first_lower, $last_lower);
    $self->transfer_list(\@a, 'LAST', $first_upper, $last_upper);
  }
  else
  {
    warn "Unlearned NAME: $self->{FIELDS}{NAME}";
    return;
  }

  if (! exists $self->{LAST})
  {
    print_hash($self->{FIELDS});
    die "No LAST name found";
  }

  if (! exists $self->{FIRST_INITIAL} &&
      ! exists $self->{FIRST} &&
      ! exists $self->{MIDDLE_INITIAL})
  {
    print_hash($self->{FIELDS});
    die "No FIRST or INITIAL name found";
  }
}


sub transfer_list
{
  my ($self, $list, $field, $first, $last) = @_;

  for my $i ($first .. $last)
  {
    push @{$self->{$field}}, $list->[$i];
  }
}


sub formatted_name
{
  my ($self) = @_;

  my $s = '';
  for my $field (qw(LAST FIRST_INITIAL FIRST MIDDLE_INITIAL))
  {
    if (exists $self->{FIELDS}{$field})
    {
      $s .= join ' ', @{$self->{FIELDS}{$field}};
    }
  }
  return $s;
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
