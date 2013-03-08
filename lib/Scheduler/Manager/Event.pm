package Scheduler::Manager::Event;
use base qw( Rose::DB::Object::Manager );

sub object_class { 'Scheduler::Event' }

__PACKAGE__->make_manager_methods('events');

1;
