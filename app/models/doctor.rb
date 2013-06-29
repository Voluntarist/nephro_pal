class Doctor < ActiveRecord::Base
  attr_accessible :name
  has_many :doctor_states
  has_many :state_licenses, :through => :doctor_states
end
