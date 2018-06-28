class Doctor 
  
  attr_accessor :name, :patient 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(date, patient)
    @appointments << Appointment.new(patient, self, date)
  end 
  
  def appointments
    @appointments
  end 
end 