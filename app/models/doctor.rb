class Doctor < ActiveRecord::Base
  #can we do a migration to add an image to doctor model?
  attr_accessible :first_name, :last_name
  has_many :doctor_states
  has_many :doctor_insurances
  has_many :state_licenses, :through => :doctor_states, :uniq => true
  has_many :insurance_licenses, :through => :doctor_insurances, :uniq => true
  has_many :assignments

  scope :alphabetical, order('last_name ASC')
  scope :has_state, lambda {|state_name| includes(:state_licenses).where("state_licenses.state_name" => state_name) }
  scope :has_insurance, lambda {|insurance_name| includes(:insurance_licenses).where("insurance_licenses.insurance_name" => insurance_name) }


  def self.eligible_doctors(args)
    self.has_state(args[:state_name]).has_insurance(args[:insurance_name]).alphabetical
  end



end
