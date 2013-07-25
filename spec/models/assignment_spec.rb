require 'spec_helper'

describe Assignment do
  let (:assignment) { create(:assignment) }
  let (:doctor) { create(:doctor) }
  let (:biopsy) { create(:biopsy) }

  it "has a valid factory" do
    assignment.should be_valid
  end

  it "should contain a doctor_id" do
    assignment.doctor = doctor
  end

  it "should contain a biopsy_id" do
    assignment.biopsy = biopsy
  end





end
