require 'spec_helper'

describe Biopsy do
  let (:biopsy){create(:biopsy)}
  let (:state_license){create(:state_license)}
  let (:insurance_license){create(:insurance_license)}


  it "has a valid factory" do
    create(:biopsy).should be_valid
  end

  it {should respond_to(:state_license)}
  it {should respond_to(:insurance_license)}



end
