class Record < ActiveRecord::Base
  has_many :doctors ,:through => :appointments
  
  validates :name_of_pet,:type_of_pet,:breed,:date_of_last_visit,:age,:weight, presence:true
  validates :name_of_pet,length:{in:1..35, message:"name must be no longer than 35 characters"}
  validates :type_of_pet,inclusion:{in:['dog','bird','cat'],message:"only dog,bird,cat,sorry"}
  validates :breed,length:{in:1..35,message:"name must be no longer than 35 characters"}
  
end
