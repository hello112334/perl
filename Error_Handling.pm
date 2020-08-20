#!/usr/bin/perl

package test;

use strict;
use warnings;

use Exporter;

our @ISA = qw(Exporter);
our @EXPORT = qw(addSkills %skillsExp);

our %skillsExp = ( Perl => 5 );

sub addSkills {

    my ($skill, $exp) = @_;

    $skillsExp{$skill} = $exp;

    print "Key Value Pair Added\n"

}

1;

