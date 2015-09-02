class Doctor < ActiveRecord::Base
has_many :appointments
has_many :records, :through => :appointments
 validates:name,:address,:city,:state,:zip,:degree_from, presence: true
 validates:name,length:{in:1..35, message:"name must be no longer than 35 characters"}
 validates:zip , length:{in:1..5,message:"entera valid zip code should not be more than 5 digits "}
 
 
 
end
