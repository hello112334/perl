#!/usr/bin/perl

print "variables";

$age = 25;             # An integer assignment
$name = "John Paul";   # A string 
$salary = 1445.50;     # A floating point

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";


@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");

print "$names[0] is $ages[0] years old.\n";
print "$names[1] is $ages[1] years old.\n";
print "$names[2] is $ages[2] years old.\n";

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "$data{'John Paul'}\n";
print "$data{'Lisa'}\n";
print "$data{'Kumar'}\n";
# $data{'John Paul'}\n

@names = ('John Paul', 'Lisa', 'Kumar');

@copy = @names;
$size = @names;

print "@copy\n";
print "$size\n";
