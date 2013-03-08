package Scheduler;
use Dancer ':syntax';
use Scheduler::Position;
use Scheduler::Status;
use Scheduler::Appointment;

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

get '/appointment/new' => sub {
	template 'appointment_form';
};

get '/appointment/:id' => sub {
	my $id = params->{id};
	my $appointment = Scheduler::Appointment->new( id => $id);
	if ($appointment->load) {
		return $appointment->values;
	}
	return;
};


true;
