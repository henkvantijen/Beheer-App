package Beheer::App;
use Dancer2;

our $VERSION = '0.1';

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


#


true;
