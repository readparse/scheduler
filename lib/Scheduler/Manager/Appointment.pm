package Scheduler::Manager::Appointment;
use base qw( Rose::DB::Object::Manager );

sub object_class { 'Scheduler::Appointment' }

__PACKAGE__->make_manager_methods('appointments');

1;
