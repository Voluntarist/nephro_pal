class DoctorInsurance < ActiveRecord::Base
  attr_accessible :doctor_id, :insurance_license_id

  belongs_to :doctor
  belongs_to :insurance_license
end
