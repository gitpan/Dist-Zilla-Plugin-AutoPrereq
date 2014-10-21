#!perl
# 
# This file is part of Dist-Zilla-Plugin-AutoPrereq
# 
# This software is copyright (c) 2009 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 

use strict;
use warnings;

use Dist::Zilla;
use File::Spec::Functions qw{ catdir catfile };
use Test::More tests => 1;

# build fake dist
chdir( catdir('t', 'foo') );
my $zilla = Dist::Zilla->from_config;
$zilla->build_in;
my $dir = 'Foo-1.23';

# check found prereqs
open my $fh, '<', catfile($dir, 'Makefile.PL') or die $!;
my @lines = grep { /PREREQ_PM/ .. /\}/ } <$fh>;
shift @lines; pop @lines;
my %prereqs = map { eval $_ } @lines;
close $fh;

my %wanted = (
    'DZPA::Bar'   => 0,
    'DZPA::Base'  => 0,
    'DZPA::Foo'   => '0.50',
    'DZPA::Fubar' => 0,
    'DZPA::Role'  => 0,
    perl          => 5.008,
);
is_deeply( \%prereqs, \%wanted, '')