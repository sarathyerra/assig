class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :record
  has_one :nextappointment
  validates :customer, :date_of_visit,:requires_reminder,:reason_of_visit,presence:true
  
  
 
end
