class Patient

    attr_accessor :name, :doctor

    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appts|
            appts.patient == self
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        (Appointment.all.select {|appt| appt.patient == self}).collect {|appt| appt.doctor}
    end
    
end