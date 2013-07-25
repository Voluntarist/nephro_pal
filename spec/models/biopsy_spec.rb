require 'spec_helper'

describe Biopsy do
  let (:biopsy){create(:biopsy_with_state_license)}
  let (:state_license){create(:state_license)}
  let (:insurance_license){create(:insurance_license)}


  it "has a valid factory" do
    create(:biopsy).should be_valid
  end

  it {should respond_to(:state_license)}
  it {should respond_to(:insurance_license)}


  describe 'the #eligible_doctors method' do
    it 'locates the list of eligible doctors' do
      doc1 = create(:doctor)
      doc2 = create(:doctor)
      doc1.state_licenses << state_license
      doc1.insurance_licenses << insurance_license
      doc1.save
      biopsy.eligible_doctors.should == [doc1]

    end
  end


end
