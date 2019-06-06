class Patient

	attr_reader :name, :appointments, :doctors

	@@all = []

	def initialize(name)
		@name = name
		@appointments = []
		@doctors = []
		@@all << self
	end

	def new_appointment(doctor, date)
		apt = Appointment.new(date, self, doctor)
		@appointments << apt
		apt
	end

	def self.all
		@@all
	end

end