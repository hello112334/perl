#/usr/bin/perl

# オープンモードをシンボルで指定するためのモジュール
use Fcntl;

# O_RDWR: Read and Write
$word = "test";

# $filename = './tmp/file_sysopen.txt';

$filename = "C:/Users/TPI_CHEN/Documents/TPI/42_TK2_Dev/12_Nihon_weather/perl/tmp/file_sysopen.txt";

if (sysopen(DATA, $filename, O_RDWR)) {
    print "Open Successful\n";

    print DATA "What is your name?\n";
    # $name = <STDIN>;
    print DATA "Hello\n";

    print "Data was wrote\n";
} else {
    
    eval {
        sysopen(my $fh, $filename, O_CREAT );
        1;
    };

    if ($@) {
        warn "Error: [$@]\n";
    } else {
        print "Created\n";
    }

    close( $fh );
}

close(DATA);