class Doctor  
  attr_accessor :name, :appointment, :patient 
  @@all = []
  
  def initialize(name, appointment="", patient="")
    @name = name 
    @appointment = appointment 
    @patient = patient  
    @@all << self 
  end 
  
  def new_appointment(patient, date="")
    Appointment.new(patient, self, date)
  end 
 
  def appointments 
    Appointment.all.select do |apt|
      apt.doctor == self
    end 
  end 
  
  def patients
    Appointments.all.select do |apt|
      apt.patients
    end
  end
  
  def self.all
    @@all
  end 
  
end 