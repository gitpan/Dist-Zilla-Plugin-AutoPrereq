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
use Path::Class;
use Test::Deep;
use Test::More tests => 1;
use YAML       qw{ LoadFile };


# build fake dist
chdir( dir('t', 'foo') );
my $zilla = Dist::Zilla->from_config;
$zilla->build_in;
my $dir = dir('Foo-1.23');

# check found prereqs
my $meta = LoadFile( $dir->file('META.yml') );
my %wanted = (
    # DZPA::Main should not be extracted
    'DZPA::Base::Moose1'    => 0,
    'DZPA::Base::Moose2'    => 0,
    'DZPA::Base::base1'     => 0,
    'DZPA::Base::base2'     => 0,
    'DZPA::Base::base3'     => 0,
    'DZPA::Base::parent1'   => 0,
    'DZPA::Base::parent2'   => 0,
    'DZPA::Base::parent3'   => 0,
    'DZPA::IgnoreAPI'       => 0,
    'DZPA::IndentedRequire' => '3.45',
    'DZPA::IndentedUse'     => '0.13',
    'DZPA::MinVerComment'   => '0.50',
    'DZPA::ModRequire'      => 0,
    'DZPA::NotInDist'       => 0,
    'DZPA::Role'            => 0,
    'DZPA::ScriptUse'       => 0,
    'parent'                => 0,
    'perl'                  => 5.008,
);
cmp_deeply( $meta->{requires}, \%wanted, 'all requires found, but no more' );

# clean after ourselves
$dir->rmtree;
