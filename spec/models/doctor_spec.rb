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
end