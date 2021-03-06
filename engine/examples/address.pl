#!/usr/bin/perl
#
# $Id$

require 5.008;
use warnings;
use strict;

use DNSCheck;

######################################################################

my $check = new DNSCheck({ interactive => 1, extras => { debug => 1 } });

my @addresses = (
    "195.47.254.10",        "195.47.254.256",
    "195.47.254.4",         "10.0.0.1",
    "224.1.2.3",            "::1",
    "fe80::1",              "::ffff:10.0.0.1",
    "2001:0db8::dead:beef", "2001:670:87:11::182",
    "212.247.7.228",
);

foreach my $a (@addresses) {
    $check->address->test($a);
}
