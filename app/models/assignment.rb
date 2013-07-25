class Assignment < ActiveRecord::Base
  attr_accessible :biopsy_id, :doctor_id

  belongs_to :biopsy
  belongs_to :doctor



end
