package Scheduler::DB::Object;
use Scheduler::DB;
use Rose::DB::Object;
use Scheduler::DB::Object::Metadata;
use base qw( Rose::DB::Object );

sub init_db { Scheduler::DB->new }

sub meta_class { 'Scheduler::DB::Object::Metadata' }

sub values {
	my $this = shift;
	my $meta = $this->meta;
	my $out = {};
	for my $col($meta->columns) {
		$out->{$col->name} = $this->$col;
	}
	return $out;
}

1;
