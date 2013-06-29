class DoctorState < ActiveRecord::Base
  attr_accessible :doctor_id, :state_license_id

  belongs_to :doctor
  belongs_to :state_license
end
