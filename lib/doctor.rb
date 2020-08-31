require 'pry'

class Doctor

        @@all = []
        attr_accessor :name, :date

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|each_appoint| each_appoint.doctor == self}
        
    end
   

    def new_appointment(patient, date)
       newappointment = Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map {|docs_appoint| docs_appoint.patient}

    end

end