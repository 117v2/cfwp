#!/usr/bin/env perl
package fio;
our $VERSION = 0.0.1;

use Modern::Perl;

sub read_file {
    $_ = shift;
    open( IN, $_ ) or die "Can't open $_";
    my @texts = <IN>;
    close IN;
    @texts;
}

sub read_file_text {
    $_ = shift;
    local $/ = undef;
    open( IN, $_ ) or die "Can't open $_";
    $_ = <IN>;
    close IN;
    $_;
}

1;
