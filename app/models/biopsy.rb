class Biopsy < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :state_license
  belongs_to :insurance_license
  has_one :assignment



  def eligible_doctors
    Doctor.eligible_doctors({:state_name => self.state_license.state_name, :insurance_name => self.insurance_license.insurance_name})
  end
end
