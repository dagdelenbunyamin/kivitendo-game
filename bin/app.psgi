#!/usr/bin/perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use Kivitendo::Game;

Kivitendo::Game->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use Kivitendo::Game;
use Plack::Builder;

builder {
    enable 'Deflater';
    Kivitendo::Game->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use Kivitendo::Game;
use Kivitendo::Game_admin;

use Plack::Builder;

builder {
    mount '/'      => Kivitendo::Game->to_app;
    mount '/admin'      => Kivitendo::Game_admin->to_app;
}

=end comment

=cut

