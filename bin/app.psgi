#!/usr/bin/env perl

use strict;



use warnings;
use FindBin;


use lib "$FindBin::Bin/../lib";
#use lib "$FindBin::Bin/../lib/Beheer";
#use lib "$FindBin::Bin/../lib/Beheer/Controller";
#use lib "$FindBin::Bin/../lib/Beheer/Model";


use Beheer::App;
Beheer::App->to_app;
