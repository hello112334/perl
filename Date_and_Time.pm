#!/usr/local/bin/perl

# use POSIX qw(strftime);
# use POSIX::strftime::GNU;
use POSIX 'strftime';

@months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
@days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "$mday $months[$mon] $days[$wday]\n";

printf("---------------------------------------------\n");

$datestring = localtime();
print "Local date and time $datestring\n";

$datestring = gmtime();
print "GMT date and time $datestring\n";

$epoc = time();
print "Number of seconds since Jan 1, 1970 - $epoc\n";


printf("---------------------------------------------\n");

$datestring = localtime();
print "Current date and time $datestring\n";
$epoc = time();
$epoc = $epoc - 24 * 60 * 60;   # one day before of current date.
print "\$epoc time $epoc\n";
$datestring = localtime($epoc);
print "Yesterday's date and time $datestring\n";

printf("---------------------------------------------\n");
# $datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
$datestring = POSIX::strftime ('%Y-%m-%d %H:%M:%S %a %b', localtime());
print("date and time - $datestring\n");

# or for GMT formatted appropriately for your locale:
# $datestring = strftime "%a %b %e %H:%M:%S %Y", gmtime;
$datestring = POSIX::strftime ('%Y-%m-%d %H:%M:%S %a %b', gmtime());
printf("date and time - $datestring\n");

# print POSIX::strftime ('%Y-%m-%d %H:%M:%S', localtime());