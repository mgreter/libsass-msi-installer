#!/usr/bin/perl

use CPAN;

use strict;
use warnings;

unless (defined $ARGV[0]) {
	die "need to pass search string"
}

my %seen; # remove duplicates
my $regex = qr/\Q$ARGV[0]\E/;
my @paths = split /;/, $ENV{'PATH'};
@paths = grep {
	unless (exists $seen{$_}) {
		$seen{$_} = 1;
		not m/$regex/
	}
} @paths;

print join(";", @paths);
