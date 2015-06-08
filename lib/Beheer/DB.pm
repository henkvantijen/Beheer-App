__PACKAGE__->use_private_registry;
__PACKAGE__->register_db(
	driver   => 'sqlite',
	database => 'WebApp.db'
);

