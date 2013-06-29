class StateLicense < ActiveRecord::Base
  attr_accessible :state_name
  has_many :doctor_states
  has_many :doctors, :through => :doctor_states
end
