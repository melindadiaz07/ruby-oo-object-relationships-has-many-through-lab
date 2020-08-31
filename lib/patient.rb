class Patient

    @@all = []
    attr_accessor :name

        def initialize(name)
            @name = name
            @@all << self
        end

        def new_appointment(doctor, date)
            newappointment = Appointment.new(date, self, doctor)  
        end

        def  self.all
            @@all
        end

        def appointments
            Appointment.all.select {|each_appoint| each_appoint.patient == self}
        end

        def doctors
            Appointment.all.map {|each_appoint| each_appoint.doctor}
        end
        



end