#!/usr/bin/perl -w
use strict;
use Test::More;
use lib 'lib';

use_ok( 'Scheduler::Status' );
use_ok( 'Scheduler::Manager::Status' );

ok( my $status = Scheduler::Status->new( name => 'Available' ), 'Created new Status object to lookup' );
ok( $status->load(), 'Loaded Status object');
ok( $status->id, 'Status has an ID');

my $old_name = $status->name;
$status->name('Just kidding');

ok( $status->save, 'Saved new name');

$status->name($old_name);

ok( $status->save, 'Saved original name');
ok( my $status2 = Scheduler::Status->new( name => 'Brand new', sequence => 9000 ), 'Created Status object for new Status' );
ok( $status2->save, 'Saved new Status');
ok( $status2->delete, 'Deleted new Status');

ok( my $status_list = Scheduler::Manager::Status->get_statuses, 'Got all Status objects' );
for my $i (@{$status_list}) {
	ok( $i->name, 'Got Status name "' . $i->name . '"' );
}

done_testing();

