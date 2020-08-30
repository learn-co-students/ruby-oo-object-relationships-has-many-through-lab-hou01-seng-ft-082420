class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
    #returns all appointments associated with this Patient
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        appointments.map {|appointment| appointment.doctor}.uniq
    end
end