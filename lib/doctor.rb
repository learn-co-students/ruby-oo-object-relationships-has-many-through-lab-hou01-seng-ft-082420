class Doctor

    attr_accessor :name, :appointments, :patients

    @@all= []

    def initialize (name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor = self }
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        (Appointment.all.select {|appt| appt.doctor == self}).collect {|appt| appt.patient}
    end
            

end
