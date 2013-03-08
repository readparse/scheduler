#!/usr/bin/perl -w
use strict;
use Test::More;
use Data::Dumper;
use DateTime;
use lib 'lib';

use_ok( 'Scheduler::Appointment' );
use_ok( 'Scheduler::Status' );
use_ok( 'Scheduler::Position' );

ok( my $status = Scheduler::Status->new( name => 'Test Status')->save, 'Created Status');
ok( my $position = Scheduler::Position->new( name => 'Test Position', number => 'T123456')->save, 'Created Position');
ok( my $appt = Scheduler::Appointment->new( 
	datetime => DateTime->now, 
	candidate => 'John Ingram',
	phone_number => '615-555-1212',
	position => $position,
	status => $status
)->save, 'Created Position');

ok( $appt->delete, 'Deleted Appointment' );
ok( $status->delete, 'Deleted Status' );
ok( $position->delete, 'Deleted Position' );



done_testing();



