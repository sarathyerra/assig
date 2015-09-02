class Nextappointment < ActiveRecord::Base
  belongs_to :appointment
  
  validates :date_of_next,:appointment,:reason_for_visit, presence: true
end
