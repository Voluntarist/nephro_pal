class InsuranceLicense < ActiveRecord::Base
  attr_accessible :insurance_name
  has_many :doctor_insurances
  has_many :doctors, :through => :doctor_insurances, uniq: true
  has_many :biopsies
end
