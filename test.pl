#!/usr/bin/env perl
use Modern::Perl;
use cfwp::fio;

@_ = fio::read_file('/tmp/telegram.key');
say @_;

$_ = fio::read_file_text('Makefile.PL');
say;
