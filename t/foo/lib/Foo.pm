# 
# This file is part of Dist-Zilla-Plugin-AutoPrereq
# 
# This software is copyright (c) 2009 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
package Foo;
our $VERSION = '0.2.0';

use 5.008;
use DZPA::Foo 0.50; # comment
with 'DZPA::Role';
use DZPA::Skip::Blah;
require DZPA::Bar;
__END__
=head1 FOO

this pod should not be taken in to account, with:
use fake
require blah
with 'fubar'