class Doctor
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name, :patient, :appointment, :date
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select{|app| app.doctor == self}
    end
    def patients
        appointments.collect{|pt| pt.patient}
    end
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end
end