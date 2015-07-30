package Beheer::Controller;
use Moo;


use Dancer2;
use Template;


use Data::Dumper;

hook 'before_template' => sub {
    my $tokens = shift;
     $tokens->{uri_for} = \&uri_for;
     #    'err' => $err;
    #    'flash' => $flash;
};



	

has 'flash_message' => (
	is  => 'rw',
	default => ''
);

has 'error_message' => (
	is  => 'rw',
	default => ''
);

after new  => sub {
};








1;
