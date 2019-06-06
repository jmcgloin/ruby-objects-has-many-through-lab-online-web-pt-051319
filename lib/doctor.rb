class Doctor

	attr_reader :name, :appointments, :patients

	@@all = []

	def initialize(name)
		@name = name
		@appointments = []
		@patients = []
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(patient, date)
		apt = Appointment.new(date, patient, self)
		@appointments << apt
		apt
	end

end