#/usr/bin/perl

# open(DATA, "<file.txt") or die "Couldn't open file file.txt, $!";
# open(DATA, "+<file.txt"); or die "Couldn't open file file.txt, $!";
use Path::Tiny qw/ path /;

$filename = "C:/Users/TPI_CHEN/Documents/TPI/42_TK2_Dev/12_Nihon_weather/perl/tmp/file_open.txt";
# $filename = "./tmp/file_open.txt";

# my $fh = path($filename)->openr_utf8;

if (-e $filename) {
    open(DATA, ">", $filename) or die "Couldn't open $filename $!" ;
    print "Open successful\n";

    print DATA "Hello world\n";
    print DATA "hehe\n";

    print "Finished\n";
    print "---------------------------------------\n";

} else {

    eval {
        open(DATA,">", $filename) || die "Couldn't open $filename $!\n";
        1;
    };

    if ($@) {
         print "Error: $@\n";
    } else {
         print "Created a new file.\n";
    };

}

close(DATA);
if (-e $filename) {
    open(DATA, "<", $filename) or die "Couldn't open file file.txt, $!" ;
}


while(<DATA>) {
   print "$_";
}

close(DATA);