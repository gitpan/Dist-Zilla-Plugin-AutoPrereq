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
use Test::More            tests => 1;
use YAML                  qw{ LoadFile };


# build fake dist
chdir( catdir('t', 'foo') );
my $zilla = Dist::Zilla->from_config;
$zilla->build_in;
my $dir = 'Foo-1.23';

# check found prereqs
my $meta = LoadFile( catfile($dir, 'META.yml') );
my %wanted = (
    'DZPA::Base'            => 0,
    'DZPA::IndentedRequire' => '3.45',
    'DZPA::IndentedUse'     => '0.13',
    'DZPA::MinVerComment'   => '0.50',
    'DZPA::ModRequire'      => 0,
    'DZPA::NotInDist'       => 0,
    'DZPA::Role'            => 0,
    'DZPA::ScriptUse'       => 0,
    'perl'                  => 5.008,
);
is_deeply( $meta->{requires}, \%wanted, 'all requires found, but no more' );