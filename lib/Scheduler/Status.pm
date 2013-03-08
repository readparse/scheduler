package Scheduler::Status;
use lib 'lib';
use base 'Scheduler::DB::Object';

__PACKAGE__->meta->setup(
	table => 'status',
	columns => [ qw( id name sequence ) ],
	pk_columns => 'id',
	unique_key => 'name',

#	relationships => [
#
#		images => {
#			type => 'one to many',
#			class => 'Swimmer::ProductImage',
#			column_map => { id => 'product_id' }
#		}
#	]

);

1;

