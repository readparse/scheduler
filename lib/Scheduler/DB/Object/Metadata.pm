package Scheduler::DB::Object::Metadata;
use Scheduler::DB::Object::ConventionManager;
use base qw( Rose::DB::Object::Metadata );

sub convention_manager_class { 'Scheduler::DB::Object::ConventionManager' }

1;
