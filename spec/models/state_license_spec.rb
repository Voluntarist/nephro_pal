require 'spec_helper'

describe StateLicense do
  it 'does not add duplicate entries to state_id' do
    doctor = create(:doctor)
    state_license = create(:state_license)
    state_license.doctors << [doctor]
    state_license.doctors << [doctor]
    state_license.doctors.should == [doctor]
  end

it 'allows a state license to have multiple docs assigned' do
  doc1 = create(:doctor)
  doc2 = create(:doctor)
  state_license = create(:state_license)
  state_license.doctors << [doc1, doc2]
  state_license.doctors.should == [doc1, doc2]
end

end