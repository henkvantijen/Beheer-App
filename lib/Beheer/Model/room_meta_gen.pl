#!/usr/bin/perl

package Room;

use base 'My::DB::Object';

__PACKAGE__->meta->table('products');
__PACKAGE__->meta->auto_initialize;

print __PACKAGE__->meta->perl_class_definition(indent => 2,
					   braces => 'bsd');

1;
