#!/usr/bin/perl

# Function definition
sub Hello {
   print "Hello, World!\n";
}

# Function call
# Hello();


# Function definition
sub Average {
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_) {
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

# Function call
# Average(10, 20, 30);

# Function definition
sub PrintList {
   my @list = @_;
   print "Given list is @list\n";
}
$a = 10;
@b = (1, 2, 3, 4);

# Function call with list parameter
# PrintList($a, @b);

# Function definition
sub PrintHash {
   my (%hash) = @_;

   foreach my $key ( keys %hash ) {
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);

# Function call with hash parameter
# PrintHash(%hash);
print "---------------------------------------\n";

use feature 'state';

sub PrintCount {
   state $count = 0; # initial value

   print "Value of counter1 is $count\n";
   $count++;
}

# for (1..5) {
#    PrintCount();
# }

{
   my $count = 0; # initial value

   sub PrintCount2 {
      print "Value of counter2 is $count\n";
      $count++;
   }
}

for (1..5) {
   PrintCount2();
}


print "---------------------------------------\n";

$name;
$age;
$salary;

format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name $age
@#####.##
$salary
===================================
.

format EMPLOYEE_TOP =
===================================
Name                    Age
===================================
.

select(STDOUT);
$~ = EMPLOYEE;
$^ = EMPLOYEE_TOP;

@n = ("Ali", "Raza", "Jaffer");
@a  = (20,30, 40);
@s = (2000.00, 2500.00, 4000.000);

$i = 0;
foreach (@n) {
   $name = $_;
   $age = $a[$i];
   $salary = $s[$i++];
   write;
}