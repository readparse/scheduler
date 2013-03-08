package Scheduler::Position;
use lib 'lib';
use base 'Scheduler::DB::Object';

__PACKAGE__->meta->setup(
	table => 'position',
	columns => [ 
		'id',
		'number' => { not_null => 1 }, 
		'name',
	],
	pk_columns => 'id',
	unique_key => 'number',

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

