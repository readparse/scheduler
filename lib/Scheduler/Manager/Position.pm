package Scheduler::Manager::Position;
use base qw( Rose::DB::Object::Manager );

sub object_class { 'Scheduler::Position' }

__PACKAGE__->make_manager_methods('positions');

1;
