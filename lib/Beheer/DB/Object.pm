package Beheer::DB::Object;

use Beheer::DB;

use base qw(Rose::DB::Object);


sub init_db { Beheer::DB->new }


1;


