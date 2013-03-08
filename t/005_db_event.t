#!/usr/bin/perl -w
use strict;
use Test::More;
use Data::Dumper;
use DateTime;
use lib 'lib';

use_ok( 'Scheduler::Event' );
use_ok( 'Scheduler::Status' );
use_ok( 'Scheduler::Position' );
use_ok( 'Scheduler::Manager::Event' );

ok( my $status = Scheduler::Status->new( name => 'Test Status')->save, 'Created Status');
ok( my $position = Scheduler::Position->new( name => 'Test Position', number => 'T123456')->save, 'Created Position');
ok( my $event = Scheduler::Event->new( 
	datetime => DateTime->now, 
	candidate => 'John Ingram',
	phone_number => '615-555-1212',
	position => $position,
	status => $status
)->save, 'Created Position');

ok( $event->delete, 'Deleted Event' );
ok( $status->delete, 'Deleted Status' );
ok( $position->delete, 'Deleted Position' );

ok( my $event_list = Scheduler::Manager::Event->get_events, 'Got all Event objects' );
for my $i (@{$event_list}) {
	ok( $i->name, 'Got Event name "' . $i->name . '"' );
}



done_testing();



