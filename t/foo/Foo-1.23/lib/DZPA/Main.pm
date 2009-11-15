# 
# This file is part of Dist-Zilla-Plugin-AutoPrereq
# 
# This software is copyright (c) 2009 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
package DZPA::Main;
our $VERSION = '1.093190';


# ABSTRACT: dumb module to test DZPA

# perl minimum version
use 5.008;

# under DZPA::, but not shipped by the dist
use DZPA::NotInDist;

# minimum version + comment after the semicolon.
use DZPA::MinVerComment 0.50; # comment

# Moose features
with 'DZPA::Role';
extends 'DZPA::Base';

# DZPA::Skip should be trimmed
use DZPA::Skip::Blah;

# require in a module
require DZPA::ModRequire;

# indented
{
    use DZPA::IndentedUse 0.13;
    require DZPA::IndentedRequire 3.45;
}
__END__
=head1 FOO

this pod should not be taken in to account, with:
use fake;
require blah;
with 'fubar';