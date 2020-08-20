https://www.tutorialspoint.com/perl

"# Perl"

Perl - Basic
  - syntax
  - variable
  - for...loop
  - condition
  - function
  - format / string operation
  - module

Perl - File I/O


Open Function
  - open(DATA, "+<file.txt"); or die "Couldn't open file file.txt, $!"
-----------------------------------------------------------------------
1 < or r
    Read Only Access

2 > or w
    Creates, Writes, and Truncates

3 >> or a
    Writes, Appends, and Creates

4 +< or r+
    Reads and Writes

5 +> or w+
    Reads, Writes, Creates, and Truncates

6 +>> or a+
    Reads, Writes, Appends, and Creates
-----------------------------------------------------------------------

Sysopen Function
  - sysopen(DATA, "file.txt", O_RDWR|O_TRUNC );
-----------------------------------------------------------------------
1 O_RDWR
Read and Write

2 O_RDONLY
Read Only

3 O_WRONLY
Write Only

4 O_CREAT
Create the file

5 O_APPEND
Append the file

6 O_TRUNC
Truncate the file

7 O_EXCL
Stops if file already exists

8 O_NONBLOCK
Non-Blocking usability
-----------------------------------------------------------------------


Close Function
  - close(DATA) || die "Couldn't close file properly";


Reading and Writing Files
  - getc Function
  - read Function
  - print Function
  - Copying Files
  - Renaming a file
  - Deleting an Existing File
  - Positioning inside a File
    tell seek Function
  - File Information
-----------------------------------------------------------------------
 -A
 Script start time minus file last access time, in days.

 -B
 Is it a binary file?

 -C
 Script start time minus file last inode change time, in days.

 -M
 Script start time minus file modification time, in days.

 -O
 Is the file owned by the real user ID?

 -R
 Is the file readable by the real user ID or real group?

 -S
 Is the file a socket?

 -T
 Is it a text file?

 -W
 Is the file writable by the real user ID or real group?

 -X
 Is the file executable by the real user ID or real group?

 -b
 Is it a block special file?

 -c
 Is it a character special file?

 -d
 Is the file a directory?

 -e
 Does the file exist?

 -f
 Is it a plain file?

 -g
 Does the file have the setgid bit set?

 -k
 Does the file have the sticky bit set?

 -l
 Is the file a symbolic link?

 -o
 Is the file owned by the effective user ID?

 -p
 Is the file a named pipe?

 -r
 Is the file readable by the effective user or group ID?

 -s
 Returns the size of the file, zero size = empty file.

 -t
 Is the filehandle opened by a TTY (terminal)?

 -u
 Does the file have the setuid bit set?

 -w
 Is the file writable by the effective user or group ID?

 -x
 Is the file executable by the effective user or group ID?

 -z
 Is the file size zero?
-----------------------------------------------------------------------

Perl - Directories
  - opendir DIRHANDLE, EXPR  # To open a directory
  - readdir DIRHANDLE        # To read a directory
  - rewinddir DIRHANDLE      # Positioning pointer to the begining
  - telldir DIRHANDLE        # Returns current position of the dir
  - seekdir DIRHANDLE, POS   # Pointing pointer to POS inside dir
  - closedir DIRHANDLE       # Closing a directory.

Perl - Error Handling
  - The if statement
  - The unless Function
  - The ternary Operator
  - The warn Function
  - The die Function
  - Errors within Modules
  - The carp Function
  - The cluck Function
  - The croak Function
  - The confess Function
  - 
