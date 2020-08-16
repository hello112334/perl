#!/usr/bin/perl

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

print "1 -----------------------------------------------------\n";
# Creating Hashes
%data = ('John Paul' => 11, 'Lisa' => 12, 'Kumar' => 13);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";


@array = @data{'John Paul', 'Kumar'};
print "Array : @array\n";

print "2 -----------------------------------------------------\n";

%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);

$val1 = %data{-JohnPaul};
$val2 = %data{-Lisa};

print "\$val_1 = $val1\n";
print "\$val_2 = $val2\n";

print "3 -----------------------------------------------------\n";

%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);

@array = @data{-JohnPaul, -Lisa};
print "Array : @array\n";

print "4 -----------------------------------------------------\n";
# Checking for Existence
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@name = keys %data;

%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

if ( exists($data{'Lisa'}) ) {
    print "Lisa is $data{'Lisa'} years old.\n";
} else {
    print "I don't know Lisa.\n";
};

# Getting Hash Size
print "5 -----------------------------------------------------\n";
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";
 
@values = values %data;
$size = @values;
print "2 - Hash size:  is $size\n";


# Add and Remove Elements in Hashes
print "6 -----------------------------------------------------\n";

# adding an element to the hash;
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
$data{'Aki'} = 55;
@key = keys %data;
$size = @key;

print "@key\n";
print "Size of \%data: $size\n";

# delete the same element from the hash;
print "7 -----------------------------------------------------\n";
delete $data{'Ali'};
@key = values %data;
$size = @key;
print "3 - Hash size:  is $size\n";


