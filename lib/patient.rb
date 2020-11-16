class Patient
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :doctor, :appointment, :name
    def self.all
        @@all
    end
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
    def appointments
        Appointment.all.select{|app| app.patient == self}
    end
    def doctors
        appointments.collect{|dr| dr.doctor}
    end
end