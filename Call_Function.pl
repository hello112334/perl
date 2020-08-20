#!/usr/bin/perl

use strict;
use warnings;

use test;

my $skill = $ARGV[0];
my $exp = $ARGV[1];

addSkills($skill, $exp);
print $skillsExp{$skill}, "\n";

# The ternary Operator
# print(exists($hash{value}) ? 'There' : 'Missing',"\n");

