require 'spec_helper'
describe Doctor do
  it { should respond_to(:first_name)}

  it "has a valid factory" do
    create(:doctor).should be_valid
  end
end