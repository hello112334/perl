#!/usr/bin/perl

# use Switch;
use experimental 'switch';

$name = 'Ali';
$age = 10;

$status = ($age > 20) ? "YES" : "NO";

print "\$status: $status\n";

print "------------------------------------------\n";

# Loops
# if...elsif...else statement

if ($age == 15) {
    print "\$age == 15\n";
}
elsif ($age > 20) {
    print "\$age > 20\n";
} else {
    print "\$age < 15\n";
}

$var = 10;

# switch($var) {
#     case 1          { print "1" }
#     case "Ali"      { print "Ali" }
#     case [2..10,42] { print "2..10,42" }
#     case (\@array)  { print "number in list" }
#     case /\w+/      { print "pattern" }
#     case qr/\w+/    { print "pattern" }
#     case (\%hash)   { print "hash" }
#     case (\&sub)    { print "arg" }
#     else            { print "nothing" }
# }

unless (1 != 0) {
    print "1 != 0\n";
} else {
    print "1 == 0\n";
}


print "------------------------------------------\n";

$i = 0;
while ($i < 10) {
    print "while \$i = $i\n";
    $i++;
}

do {
    print "do while \$i = $i\n";
    $i++;
} while ($i < 20);

print "------------------------------------------\n";

$i = 0;
until ($i > 10) {
    print "until \$i = $i\n";
    $i++;
}

do {
    print "do until \$i = $i\n";
    $i++;
} until ($i > 20);


print "------------------------------------------\n";

for($a = 0; $a < 10; $a++){
    print "for \$a = $a\n";
}

print "------------------------------------------\n";

@list = (2, 3, 4, 5, 6);

for $a (@list) {
    print "foreach \$a = $a\n";
}

print "------------------------------------------\n";

$a = 10;
while( $a < 20 ) {
   if( $a == 15) {
      # skip the iteration.
      $a = $a + 1;
      next;
   }
   print "value of a: $a\n";
   $a = $a + 1;
}

print "------------------------------------------\n";

$a = 10;
OUTER:while( $a < 20 ) {

   if( $a == 15) {
      # skip the iteration.
      $a = $a + 1;
      next OUTER;
   }
   print "value of a: $a\n";
   $a = $a + 1;
    
#    print "OVER";

}

print "------------------------------------------\n";

$a = 10;
$b = 20;

$c = $a + $b;
print "$a + $b = $c\n";

$c = $a - $b;
print "$a - $b = $c\n";

$c = $a * $b;
print "$a * $b = $c\n";

$c = $a / $b;
print "$a / $b = $c\n";

$c = $a % $b;
print "$a % $b = $c\n";

$c = $a ** $b;
print "$a ** $b = $c\n";

print "------------------------------------------\n";
# $c = $a == $b;
if ($a == $b) {
    print "$a == $b TRUE\n";
}else{
    print "$a == $b FALSE\n";
}

if ($a != $b) {
    print "$a != $b TRUE\n";
}else{
    print "$a != $b FALSE\n";
}

$c = $a <=> $b;
print "$a <=> $b = $c\n";


if ($a > $b) {
    print "$a > $b TRUE\n";
}else{
    print "$a > $b FALSE\n";
}

if ($a >= $b) {
    print "$a >= $b TRUE\n";
}else{
    print "$a >= $b FALSE\n";
}

if ($a < $b) {
    print "$a < $b TRUE\n";
}else{
    print "$a < $b FALSE\n";
}

if ($a <= $b) {
    print "$a <= $b TRUE\n";
}else{
    print "$a <= $b FALSE\n";
}





