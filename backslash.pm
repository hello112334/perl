#!/usr/bin/perl

#   Normal
print "Hello World!\n";

#   \t    tab
print '\t: ' . "\tHello World!\n";

#   \n    newline
print '\n: ' . "\nHello World!\n";

#   \r    return
print '\r: ';
print '\r: ' . "\rHello World!\n";

#   \f    form feed
print '\f: ' . "\fHello World!\n";

#   \b    backspace
print '\b: ' . "\bHello World!\n";

#   \a    alarm(bell)
print '\a: ' . "\aHello World!\n";

#   \e    escape
print '\e: ' . "\eHello World!\n";

#   \033  octalchar
print '\033: ' . "\033Hello World!\n";

#   \x1b  hex char
print '\x1b: ' . "\x1bHello World!\n";

#   \c[   control char
print '\c[: ' . "\c[Hello World!\n";

#   \l    lowercase next char
print '\l: ' . "\lHello World!\n";

#   \u    uppercase next char
print '\u: ' . "Hell\uo World!\n";

#   \L    lowercase till \E
print '\L: ' . "\LHello World!\n";

#   \U    uppercase till \E
print '\U: ' . "\UHello World!\n";

#   \E    end case modification
print '\E: ' . "\UHello Wo\Erld!\n";

#   \Q    quoteregexp metacharacters till \E
print '\Q: ' . "\QHello World!\n";
