require 'spec_helper'

describe InsuranceLicense do
  it 'does not add duplicate entries to insurance_id' do
    doctor = create(:doctor)
    insurance_license = create(:insurance_license)
    insurance_license.doctors << [doctor]
    insurance_license.doctors << [doctor]
    insurance_license.doctors.should == [doctor]
  end

  it 'allows an insurance license to have multiple docs assigned' do
    doc1 = create(:doctor)
    doc2 = create(:doctor)
    insurance_license = create(:insurance_license)
    insurance_license.doctors << [doc1, doc2]
    insurance_license.doctors.should == [doc1, doc2]
  end
end