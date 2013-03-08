package Scheduler::Manager::Status;
use base qw( Rose::DB::Object::Manager );

sub object_class { 'Scheduler::Status' }

__PACKAGE__->make_manager_methods('statuses');

1;
