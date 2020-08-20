#/usr/bin/perl

use File::Basename;
use lib dirname (__FILE__);

$fullname = __FILE__;

($name,$path,$suffix) = fileparse($fullname, @suffixlist);
$name = fileparse($fullname, @suffixlist);
$basename = basename($fullname, @suffixlist);
$dirname  = dirname($fullname);

# print "name: $name \n";
# print "basename: $basename\n";
# print "dirname: $dirname\n";

# Display all the files in /tmp directory.
$dir = "$dirname/tmp/*";
my @files = glob( $dir );

foreach (@files ) {
   print $_ . "\n";
}

print "---------------------------------------\n";
# Display all the C source files in /tmp directory.
$dir = "$dirname/tmp/*.c";
@files = glob( $dir );

foreach (@files ) {
   print $_ . "\n";
}

print "---------------------------------------\n";
# Display all the hidden files.
$dir = "$dirname/tmp/.*";
@files = glob( $dir );
foreach (@files ) {
   print $_ . "\n";
}

print "---------------------------------------\n";
# Display all the files from /tmp and /home directories.
$dir = "$dirname/tmp/* $dirname/home/*";
@files = glob( $dir );

foreach (@files ) {
   print $_ . "\n";
}


print "---------------------------------------\n";
# opens a directory and list out all the files available inside this directory.
print "$dirname\n";
opendir ($dirname, '.') or die "Couldn't open directory, $!";
while ($file = readdir $dirname) {
   print "$file\n";
}
closedir $dirname;


print "---------------------------------------\n";
# print the list of C source files
opendir($dirname, '.') or die "Couldn't open directory, $!";
foreach (sort grep(/^.*\.c$/,readdir($dirname))) {
   print "$_\n";
}
closedir $dirname;


print "---------------------------------------\n";
# Create new Directory
$dir = "$dirname/tmp_test";

# check directory exists
if (-d $dir) {
    # print "Directory exists\n";
    warn "Directory exists\n";
} else {
    # This creates perl directory in /tmp directory.
    mkdir( $dir ) or die "Couldn't create $dir directory, $!";
    print "Directory created successfully\n";
}

print "---------------------------------------\n";
# Change a Directory
$dir = "$dirname/tmp_test";

if (-d $dir) {
    # This changes perl directory  and moves you inside /home directory.
    chdir( $dir ) or die "Couldn't go inside $dir directory, $!";
    print "Your new location is $dir\n";
} else {
    # print "Directory don't exist\n";
    warn "Directory don't exist\n";
}

print "---------------------------------------\n";
# Remove a directory
$dir = "$dirname/tmp_test";

if (-d $dir) {
    # This removes perl directory from /tmp directory.
    eval{
        rmdir( $dir ) or die warn "Couldn't remove $dir directory, $!\n";
        1;
    };

    if ($@) {
        print "Error: $@\n";
    } else {
        print "Directory removed successfully\n";
    }
    
} else {
    # print "Directory don't exist\n";
    warn "Directory don't exist\n";
}


