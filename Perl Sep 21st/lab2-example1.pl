#!/usr/bin/perl
use warnings;
use strict;

if ("Hello World" =~/World/) {
print "It matches\n";
} else {
print "It does not match\n";
}

#/~/ is different from (~)