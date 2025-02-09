class Patient 
  attr_accessor :name, :appointment, :doctor 
  @@all = []
  
  def initialize(name, appointment="", doctor="")
    @name = name 
    @appointment = appointment 
    @doctor = doctor 
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end  
  
   def doctors
    Appointment.all.collect do |appointment|
      appointment.doctor
    end
  end
  
  def self.all
    @@all
  end 
  
end 