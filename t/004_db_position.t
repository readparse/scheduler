#!/usr/bin/perl -w
use strict;
use Test::More;
use lib 'lib';

use_ok( 'Scheduler::Position' );

my $name = 'Brand new position';
my $number = 'C99999999';
ok( my $position = Scheduler::Position->new( name => $name, number => $number ), 'Created Position object for new Position' );
ok( $position->save, 'Saved new Position');

ok( my $position2 = Scheduler::Position->new( number => $number ), 'Looking up Position by unique number' );
ok( $position2->load(), 'Loaded Position'); 
ok( $position2->name eq $name , 'Name of new Position is correct');
ok( $position2->delete, 'Deleted new Position');



done_testing();

