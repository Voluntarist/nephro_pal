require 'spec_helper'
describe Doctor do
  it { should respond_to(:first_name)}
  it { should respond_to(:last_name)}
  it {should respond_to(:state_id)}
  it {should respond_to(:license_id)}
  it {should respond_to(:state_licenses)}

  it "has a valid factory" do
    create(:doctor).should be_valid
  end

  it 'does not add duplicate entries to state_id' do
    doctor = create(:doctor)
    state_license = create(:state_license)
    doctor.state_licenses << [state_license]
    doctor.state_licenses << [state_license]
    doctor.state_licenses.should == [state_license]
  end

  it 'adds two different state ids to a doctor' do
    doctor = create(:doctor)
    state_license1 = create(:state_license)
    state_license2 = create(:state_license)
    doctor.state_licenses << [state_license1, state_license2]
    doctor.state_licenses.should == [state_license1, state_license2]
  end

  describe 'class methods' do
    describe 'the #eligible_doctors method' do
      it 'finds an array of eligible doctors' do
        doc1 = create(:doctor)
        doc2 = create(:doctor)
        state1 = create(:state_license, :state_name => 'Arkansas')
        doc1.state_licenses << state1
        doc2.state_licenses << state1
        Doctor.eligible_doctors('Arkansas').should == [doc1, doc2]
      end
    end
  end

end