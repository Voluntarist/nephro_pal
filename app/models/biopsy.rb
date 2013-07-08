class Biopsy < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :state_license
  belongs_to :insurance_license


end
