package Scheduler;
use Dancer ':syntax';
use Scheduler::Position;
use Scheduler::Status;
use Scheduler::Event;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/position/:id' => sub {
	my $id = params->{id};
	my $position = Scheduler::Position->new( id => $id);
	if ($position->load) {
		return $position->values;
	}
	return;
};

get '/status/:id' => sub {
	my $id = params->{id};
	my $status = Scheduler::Status->new( id => $id);
	if ($status->load) {
		return $status->values;
	}
	return;
};

get '/event/new' => sub {
	template 'event_form';
};

get '/event/:id' => sub {
	my $id = params->{id};
	my $event = Scheduler::Event->new( id => $id);
	if ($event->load) {
		return $event->values;
	}
	return;
};


true;
