class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        # given a date and a patient, creates a new appointment
        Appointment.new(date, patient, self)
    end

    def appointments
    #returns all appointments associated with this Doctor
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
    #knows all the artists through the songs method above has many artist, through songs
        appointments.map {|appointment| appointment.patient}.uniq
    end

end