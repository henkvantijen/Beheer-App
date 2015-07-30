package User;
use base 'Beheer::DB::Model';


__PACKAGE__->meta->setup
(
	table      => 'users',
	columns    => [ qw(id uemail password_bcrypt) ],
	pk_columns => 'id',
	unique_key => 'uemail',
);


# create the User::Manager class 
__PACKAGE__->meta->make_manager_class('users');

1;
