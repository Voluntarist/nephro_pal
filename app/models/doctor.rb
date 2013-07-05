class Doctor < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :doctor_states
  has_many :state_licenses, :through => :doctor_states, :uniq => true


  def self.eligible_doctors(state_name)
    includes(:state_licenses).where("state_licenses.state_name" => state_name)
  end

end
