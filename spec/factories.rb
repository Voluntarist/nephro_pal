FactoryGirl.define do
  factory :doctor do
    first_name 'John'
    last_name 'Miller'
  end

  factory :state_license do
    state_name 'Arkansas'
  end

  factory :insurance_license do
    insurance_name 'Blue Cross'
  end




end