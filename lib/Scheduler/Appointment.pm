package Scheduler::Appointment;
use lib 'lib';
use base 'Scheduler::DB::Object';

__PACKAGE__->meta->setup(
	table => 'appointment',
	columns => [ qw( id datetime candidate phone_number position_id status_id ) ],
	pk_columns => 'id',

	foreign_keys => [

		position => {
			class => 'Scheduler::Position',
			column_map => { position_id => 'id' }
		},
		status => {
			class => 'Scheduler::Status',
			column_map => { status_id => 'id' }
		},
	]

);

1;

