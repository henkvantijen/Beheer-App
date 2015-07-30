package Beheer::App;
use Dancer2;
use Template;
use Beheer::Controller;

use Exporter qw(import);
     
our $VERSION = '0.1';
our $flash = '';


hook 'before_template' => sub {
    my $tokens = shift;
     $tokens->{uri_for} = \&uri_for;
     #    'err' => $err;
    #    'flash' => $flash;
};




get '/' => sub {
    template 'index';
};

get '/rooms/list' => sub {
    template 'rooms_list';
};

get '/room/new' => sub {
    template 'room_form';
};

get '/page2' => sub {
    template 'page2';
};


#get '/want' => needs login => sub {
#         template index => {};
#};



use Beheer::Controller::LoginController;

post '/login' => sub {
	 my $loginctr = Beheer::Controller::LoginController->new();
	 
	 $loginctr->try_with_credentials({uemail => param('uemail') , 
	     password => param('password')}); 
	     
};




get '/login' => sub {
    template 'login';
};




get '/logout' => sub {
    debug "login:\t executng LOGOUT\n";
    session 'logged_in' => false;
    #app->destroy_session;

    
    
    set_flash('You are logged out.');
    debug " LOGOUT flash message: " . $flash;
    redirect '/login';
 };


get '/register' => sub {

   1; 

}; 

1;





__DATA__






 post '/register' => sub {
	 my $uemail = param('uemail');
	 my $password = passphrase( param('password') )->generate;

	 # $password is now a hashed password object
	 save_user_in_db( $uemail, $password->rfc2307 );

	 template registered => { success => 1 };
 };



     post '/register' => sub {
         my $username = param('username');
         my $password = passphrase( param('password') )->generate({salt =>'b1tc01n'});

         # $password is now a hashed password object
         save_user_in_db( $username, $password->rfc2307 );

         template registered => { success => 1 };
     };
     
     




