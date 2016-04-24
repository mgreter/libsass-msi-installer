#!/usr/bin/perl

use CPAN;

use strict;
use warnings;

foreach my $srch (@ARGV) {
  my @modules = CPAN::Shell->expand("Module", $srch);
  printf("%-20s %10s %10s\n", "Module", "Installed", "CPAN");
  foreach my $mod (@modules) {
    no warnings 'uninitialized';
    printf("%-20s %10s %10s %s\n",
      $mod->id,
      $mod->inst_version eq "undef" || !defined($mod->inst_version)
        ? "-" : $mod->inst_version,
      $mod->cpan_version eq "undef" || !defined($mod->cpan_version)
        ? "-" : $mod->cpan_version,
      $mod->uptodate ? "" : "*"
    );
  }
}