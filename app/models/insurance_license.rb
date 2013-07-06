class InsuranceLicense < ActiveRecord::Base
  attr_accessible :insurance_name
  has_many :doctor_insurance
  has_many :doctors, :through => :doctor_insurance, uniq: true
end
