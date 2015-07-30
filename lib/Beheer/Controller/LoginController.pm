package Beheer::Controller::LoginController;
use Moo;
extends qw(Beheer::Controller);
use Dancer2;
 
#use Dancer2::Plugin::Passphrase;
#use Dancer2::Plugin::Auth::Tiny;


#use Beheer::Model::User;
#my $u = Beheer::Model::User->new;


hook 'before_template' => sub {
    my $tokens = shift;
     $tokens->{uri_for} = \&uri_for;
     #    'err' => $err;
    #    'flash' => $flash;
};




sub try_with_credentials {
	 my $self = shift;
   	 my $credentials = shift;

#debug 'cr-ue' . $credentials->{'uemail'} ;

	  if ( $credentials->{'uemail'}   ne setting('uemail')  || 
	       $credentials->{'password'} ne setting('password')) {
	     
         template 'login'; #=> { error => 'Invalid u_email or password. ' .   Dumper($credentials)  };
       }       
       else {
         #session 'logged_in' => true;
         #session 'uemail'    =>  params->{'uemail'};
         $self->{flash_message} = 'You are logged in.';
         return redirect '/page2';
       };

};


1;


__DATA__


	 my $redir_url = param('redirect_url') || '/login';

	 if uemail eq 'john@' && $password eq 'mypwd'
		 or redirect $redir_url;

     #$u->login;
	 session uemail => $uemail;
	 redirect $redir_url; 



	 my $saved_pass = fetch_password_from_db($uemail);

	 if ( passphrase($password)->matches($saved_pass) ) {
		 session uemail => $uemail;
		 redirect param('return_url') || '/';
	 }

	 # let's render instead of redirect...
	 


	 my $uemail  = param('uemail');
	 my $password  = param('password');
	 my $redir_url = param('redirect_url') || '/login';

	 $uemail eq 'john@' && $password eq 'mypwd'
		 or redirect $redir_url;

	 session uemail => $uemail;
	 redirect $redir_url;


use Dancer2::Plugin::Passphrase;
use Dancer2::Plugin::Database;
 
sub user_valid_credentials {
		my $uem = shift;
		my $passwd = shift;
		my $password_hashed = passphrase($passwd)->generate({salt => 'b1tco1n'});
		
		my $q = "SELECT id, nickname, FROM users WHERE uemail = '?' AND hashed_passwd = ''";
		
	
}








