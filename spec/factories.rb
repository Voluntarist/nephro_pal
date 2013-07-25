FactoryGirl.define do
  factory :doctor do
    first_name 'John'
    last_name 'Miller'
  end

  factory :state_license do
    state_name 'Arkansas'

    factory :state_license_with_biopsy do
      association :biopsy
    end
  end

  factory :insurance_license do
    insurance_name 'Blue Cross'
  end

  factory :biopsy do
    association :insurance_license

    factory :biopsy_with_state_license do
      association :state_license
    end
  end

  factory :assignment do

  end

end