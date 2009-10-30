#!/usr/bin/perl -w
use strict;
use warnings;

use lib qw(../lib);
use Test::More 'no_plan';

use Gtk2::Ex::FormFactory;
use_ok 'Gtk2::Ex::FormFactory::Entry::SSN';

use Gtk2 '-init';


package Test::Object;
use Moose;
use MooseX::FollowPBP;

has 'attribute' => (is => 'rw', default => '123456789');

package main;

my $object = Test::Object->new;

my $context = Gtk2::Ex::FormFactory::Context->new;
$context->add_object(
    name       => 'object' ,
    object     => $object  ,
    default_get_prefix  => undef,
    attr_accessors_href => {
        get_image => sub {
            return 'user.png';
        },
    },
);

my $dialog  = Gtk2::Ex::FormFactory->new (
    context  => $context,
    #layouter => $layouter,
    content => Gtk2::Ex::FormFactory::Window->new(
        content => [
            Gtk2::Ex::FormFactory::Entry::SSN->new(
                attr => 'object.attribute',
            ),
        ],
    ),
);

ok($dialog, 'form factory created');