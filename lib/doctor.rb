class Doctor 
  
  attr_accessor :name, :patient 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
    @patients = []
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(date, patient)
    new_app = Appointment.new(patient, self, date)
    @appointments << new_app
    @patients << new_app
    new_app
  end 
  
  def appointments
    @appointments
  end 
  
  def patients
    @patients
  end 
  
end 