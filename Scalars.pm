#!/usr/bin/perl

$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;

# 377 octal, same as 255 decimal
$octal = 0377;

# FF hex, also 255 decimal
$hexa = 0xff;

print "interger: $integer.\n";
print "negative: $negative.\n";
print "floating: $floating.\n";
print "bigfloat: $bigfloat.\n";
print "octal: $octal.\n";
print "hexa: $hexa.\n";

$var = "This is string scalar!";
$quote = 'I m inside single quote - $var';
$double = "This is inside single quote - $var";

$escape = "This example of escape -\tHello, World!";

print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";


$str = "Hello" . " " . "World!";
$num = 5 + 10;
$mul = 4 * 5;
$mix = $str . $num;

print "str = $str\n";
print "num = $num\n";
print "mul = $mul\n";
print "mix = $mix\n";

print <<EOF;
This is
a multiline
string $str
EOF


$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110; 


print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";

# they can not be interpolated
print "__FILE__ __LINE__ __PACKAGE__\n";