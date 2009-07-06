# 
# This file is part of Dist-Zilla-Plugin-AutoPrereq
# 
# This software is copyright (c) 2009 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
package Foo;
our $VERSION = '0.1.2';

use 5.008;
use Moose 0.50; # comment
require File::Spec::Functions;
__END__
=head1 FOO

this pod should not be taken in to account, with:
use fake
require blah