require 'spec_helper'
describe Doctor do
  let (:doctor){create(:doctor)}
  let (:state_license){create(:state_license)}
  let (:insurance_license){create(:insurance_license)}

  it { should respond_to(:first_name)}
  it { should respond_to(:last_name)}
  it {should respond_to(:state_licenses)}
  it {should respond_to(:insurance_licenses)}

  it "has a valid factory" do
    create(:doctor).should be_valid
  end

  it 'does not add duplicate entries to state_id' do
    doctor.state_licenses << [state_license]
    doctor.state_licenses << [state_license]
    doctor.state_licenses.should == [state_license]
  end

  it 'adds two different state ids to a doctor' do
    state_license1 = create(:state_license)
    state_license2 = create(:state_license)
    doctor.state_licenses << [state_license1, state_license2]
    doctor.state_licenses.should == [state_license1, state_license2]
  end

  describe 'class methods' do
    describe 'verify the alphabetical doctor scope passes' do
      it 'returns all the doctors in alphabetical order by last name' do
        doc_s = create(:doctor, :last_name => "Smith")
        doc_b = create(:doctor, :last_name => "Bonsib")
        Doctor.find(:all).should_not == [doc_b, doc_s]
        Doctor.alphabetical.should == [doc_b, doc_s]
      end
    end
    describe 'the #eligible_doctors method' do
      it 'finds an array of eligible doctors' do
        doc1 = create(:doctor)
        doc2 = create(:doctor)
        doc3 = create(:doctor)
        state1 = create(:state_license, :state_name => 'Arkansas')
        insurance1 = create(:insurance_license, :insurance_name => 'Blue Cross')
        doc1.insurance_licenses << insurance1
        doc1.state_licenses << state1
        doc2.state_licenses << state1
        doc3.insurance_licenses << insurance1
        Doctor.eligible_doctors(:state_name =>'Arkansas', :insurance_name => 'Blue Cross').should == [doc1]
      end
    end
  end

end