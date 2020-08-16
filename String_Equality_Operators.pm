# Live Demo
#!/usr/local/bin/perl
 
$a = "hello.com.tw";
$b = "hello.com";

print "$a = $a ... $b = $b\n";

if( $a lt $b ) {
   print "$a lt $b is true\n";
} else {
   print "$a lt $b is false\n";
}

if( $a gt $b ) {
   print "$a gt $b is true\n";
} else {
   print "$a gt $b is false\n";
}

if( $a le $b ) {
   print "$a le $b is true\n";
} else {
   print "$a le $b is false\n";
}

if( $a ge $b ) {
   print "$a ge $b is true\n";
} else {
   print "$a ge $b is false\n";
}

if( $a ne $b ) {
   print "$a ne $b is true\n";
} else {
   print "$a ne $b is false\n";
}

$c = $a cmp $b;
print "$a cmp $b returns $c\n";


print "----------------------------------------------\n";
# Perl Assignment Operators

$a = 10;
$b = 20;
$c = $a + $b;

print "\$a = $a ... \$b = $b ... \$c = $c\n";

$c += $a;
print "\$c += \$a: $c\n";

$c -= $a;
print "\$c -= \$a: $c\n";

$c *= $a;
print "\$c *= \$a: $c\n";

$c /= $a;
print "\$c /= \$a: $c\n";

$c %= $a;
print "\$c %= \$a: $c\n";

$c = 2;
$a = 4;
$c **= $a;
print "\$c **= \$a: $c\n";


print "----------------------------------------------\n";
# Perl Bitwise Operators
#   1   1  1  1  1   1  1  1  1
# 256 128 64 32 16   8  4  2  1

$a = 60;
# $a = 0011 1100

$b = 13;
# $b = 0000 1101

$c = $a & $b;
# $c = 0000 1100
print "$a & $b = $c\n";

$c = $a | $b;
# $c = 0011 1101
print "$a | $b = $c\n";

$c = $a ^ $b;
# $c = 0100 0001
print "$a ^ $b = $c\n";

$c = ~$a;
# $c = 0100 0001
print "~\$a = $c\n";

$c = $a << 2;
# $c =  1111 0000
print "~\$a << 2 = $c\n";

$c = $a >> 2;
# $c =  1111 0000
print "~\$a >> 2 = $c\n";

print "----------------------------------------------\n";
# Logical Operators

$a = true;
$b = false;

print "Value of \$a = $a and value of \$b = $b\n";

$c = ($a and $b);
print "Value of \$a and \$b = $c\n";

$c = ($a  && $b);
print "Value of \$a && \$b = $c\n";

$c = ($a or $b);
print "Value of \$a or \$b = $c\n";

$c = ($a || $b);
print "Value of \$a || \$b = $c\n";

$a = 0;
$c = not($a);
print "Value of not(\$a)= $c\n";


print "----------------------------------------------\n";
$a = 10;
 
$b = q{a = $a};
print "Value of q{a = \$a} = $b\n";

$b = qq{a = $a};
print "Value of qq{a = \$a} = $b\n";

# unix command execution
# $t = qx{date};
# print "Value of qx{date} = $t\n";


print "----------------------------------------------\n";

$a = "abc";
$b = "def";

print "\$a  = $a ... \$b = $b\n";

$c = $a . $b;
print "\$a . \$b = $c\n";

$c = "-" x 3;
print "\"-\" x 3 = $c\n";

@c = (2..5);
print "(2..5) = @c\n";

$a = 10;
$b = 10;
print "\$a  = $a ... \$b = $b\n";

if ($a > --$b) {
    print "$a > --$b  TRUE\n";
} else {
    print "$a > --$b  FALSE\n";
}

$a++;
++$a;
$c = $a ;
print "Value of \$a after \$a++ = $c\n";

$b--;
--$b;
$c = $b ;
print "Value of \$b after \$b-- = $c\n";


print "----------------------------------------------\n";

$para = 2334456;
@array = (2, 3, 4);
$unit = \$para;


print "\$unit = $unit->0\n";
