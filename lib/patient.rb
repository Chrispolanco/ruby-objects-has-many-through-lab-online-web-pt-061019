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
  
  # def artists
  #   Artist.all.each do |artist| 
  #     artist.name
  #   end 
  # end   
  
  def self.all
    @@all
  end 
  
end 