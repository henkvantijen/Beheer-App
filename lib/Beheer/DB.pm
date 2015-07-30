package My::DB;

use base qw(Rose::DB);

__PACKAGE__->use_private_registry;

__PACKAGE__->register_db(
  driver   => 'mysql',
  database => 'Beheer',
  host     => 'localhost',
  username => 'root',
  password => 'mys6l',
);
