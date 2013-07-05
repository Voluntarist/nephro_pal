class Doctor < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  has_many :doctor_states
  has_many :state_licenses, :through => :doctor_states
end
