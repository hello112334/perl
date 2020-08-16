#!/usr/bin/perl

# This will print "hello, world"
# print "Hello, world 1\n";
# print 'Hello, world 2\n';
# print("Hello, world 3\n");


=begin comment
This is all part of multiline comment.
You can use as many lines as you like
These comments will be ignored by the 
compiler until the next =cut is encountered.
=cut

# print("Hello, world 4\n");

# print       "Hello, world 5\n";

# print "Hello
#           world 6\n";

$a = 110;

# print "Value of a = $a\n";
# print 'Value of a = $a\n';

$var = <<"EOF12";
This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be 
interpolated. For example value of a = $a
EOF12
# print "$var\n";

$var = <<'EOF';
This is case of single quote so variable value will be 
interpolated. For example value of a = $a
EOF
# print "$var\n";

$result = "This is \"number\"";
print "$result\n";
print '$result\n';

# This is case of interpolation.
$str = "Welcome to \ntutorialspoint.com!";
print "$str\n";

# This is case of non-interpolation.
# $str = 'Welcome to \ntutorialspoint.com!';
# print "$str\n";

# Only W will become upper case.
$str = "\uwelcome to tutorialspoint.com!";
print "$str\n";

# Whole line will become capital.
$str = "\UWelcome to tutorialspoint.com!";
print "$str\n";

# A portion of line will become capital.
$str = "Welcome to \Ututorialspoint\E.com!"; 
print "$str\n";

# Backsalash non alpha-numeric including spaces.
$str = "\QWelcome to tutorialspoint's family";
print "$str\n";