class Biopsy < ActiveRecord::Base
  attr_accessible :state_license_id, :insurance_license_id
  belongs_to :state_license
  belongs_to :insurance_license
  has_one :assignment



  def eligible_doctors
    Doctor.eligible_doctors({:state_name => self.state_license.state_name, :insurance_name => self.insurance_license.insurance_name})
  end

  def insurance_name
    insurance_license.insurance_name
  end

  def state_name
    state_license.state_name
  end
end
