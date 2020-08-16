#!/usr/bin/perl
use warnings;

$age = 10;
@age = (25, 30, 47);
@name = ("John", "Sam", "Peter");

print "\$age[0]: $age[0]\n";
print "\$age[1]: $age[1]\n";
print "\$age[2]: $age[2]\n";

@array1 = (1, 2, 'Hello');
@array2 = qw/This is a array/;

print "\$array1[0]: $array1[0]\n";
print "\$array2[1]: $array2[1]\n";

@days = qw/Monday
Tuesday
...
Sunday/;

$days[0] = "1st";

print "\$days[0]: $days[0]\n";
print "\$days[1]: $days[1]\n";


@days = qw/Mon Tue Wed Thu Fri Sat Sun/;
print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[6]\n";
print "$days[-1]\n";
print "$days[-7]\n";

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # Prints number from 1 to 10
print "@var_20\n";   # Prints number from 10 to 20
print "@var_abc\n";  # Prints number from a to z

@array = (1,2,3);

print "Size:",scalar @var_10, "\n";

@array = (1..3);
$array[50] = 4;

# print "@array\n";
print "Size:",scalar @array, "\n";

$size = @array;
$max_index = $#array;
print "Size:  $size\n";
print "Max Index: $max_index\n";
# Size:  51
# Max Index: 50

# create a simple array
@coins = ("Quarter","Dime","Nickel");
print "1. \@coins  = @coins\n";

# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins  = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins  = @coins\n";


# remove one element from the last of the array.
pop(@coins);
print "4. \@coins  = @coins\n";

# remove one element from the beginning of the array.
shift(@coins);
print "5. \@coins  = @coins\n";

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

@weekdays = @days[3,4,5];

print "@weekdays\n";

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

@weekdays = @days[3..5];

print "@weekdays\n";

@nums = (1..20);
print "Before - @nums\n";

splice(@nums, 5, 5, 21..25); 
print "After - @nums\n";

print "----------------------------------------\n";
# define Strings
$var_string = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

# transform above strings into arrays.
@string = split(/-/, $var_string);
@names  = split(',', $var_names);

print "$string[3]\n";  # This will print Roses
print "$names[4]\n";   # This will print Michael

$string1 = join( '-', @string );
$string2 = join( ',', @names );

print "$string1\n";
print "$string2\n";


# Sorting Arrays

# define an array
@foods = qw(pizza steak chicken burgers);
print "Before: @foods\n";

# sort this array
@foods = sort(@foods);
print "After: @foods\n";

# define an array
@foods = qw(pizza steak chicken burgers);
print "Foods: @foods\n";

# Let's reset first index of all the arrays.
{
    no warnings;
    
    # $[ = 1; # NOT possible in v5.30

    print "Food at \@foods[1]: $foods[1]\n";
    print "Food at \@foods[2]: $foods[2]\n";

}

# Merging Arrays

@numbers = (1,3,(4,5,6));

print "numbers = @numbers\n";

print "numbers = $numbers[2]\n";


@odd = (1,3,5);
@even = (2, 4, 6);

@numbers = (@odd, @even);

print "numbers = @numbers\n";

$var = (5,4,3,2,1)[3];

print "value of var 1 = $var\n";

@list = (5,4,3,2,1)[1..3];

print "Value of list 1..3 = @list\n";
