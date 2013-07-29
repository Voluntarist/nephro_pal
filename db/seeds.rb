# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Doctor.delete_all
# StateLicense.delete_all
# I've seen this done for every seed file where you refresh it each time you seed?
# what about static data?

states = [

  {:state_name => "Alabama"},
  {:state_name => "Alaska"},
  {:state_name => "Arizona"},
  {:state_name => "Arkansas"},
  {:state_name => "California"},
  {:state_name => "Colorado"},
  {:state_name => "Connecticut"},
  {:state_name => "Delaware"},
  {:state_name => "Florida"},
  {:state_name => "Georgia"},
  {:state_name => "Hawaii"},
  {:state_name => "Idaho"},
  {:state_name => "Illinois"},
  {:state_name => "Indiana"},
  {:state_name => "Iowa"},
  {:state_name => "Kansas"},
  {:state_name => "Kentucky"},
  {:state_name => "Louisiana"},
  {:state_name => "Maine"},
  {:state_name => "Maryland"},
  {:state_name => "Massachusetts"},
  {:state_name => "Michigan"},
  {:state_name => "Minnesota"},
  {:state_name => "Mississippi"},
  {:state_name => "Missouri"},
  {:state_name => "Montana"},
  {:state_name => "Nebraska"},
  {:state_name => "Nevada"},
  {:state_name => "New Hampshire"},
  {:state_name => "New Jersey"},
  {:state_name => "New Mexico"},
  {:state_name => "New York"},
  {:state_name => "North Carolina"},
  {:state_name => "North Dakota"},
  {:state_name => "Ohio"},
  {:state_name => "Oklahoma"},
  {:state_name => "Oregon"},
  {:state_name => "Pennsylvania"},
  {:state_name => "Rhode Island"},
  {:state_name => "South Carolina"},
  {:state_name => "South Dakota"},
  {:state_name => "Tennessee"},
  {:state_name => "Texas"},
  {:state_name => "Utah"},
  {:state_name => "Vermont"},
  {:state_name => "Virginia"},
  {:state_name => "Washington"},
  {:state_name => "West Virginia"},
  {:state_name => "Wisconsin"},
  {:state_name => "Wyoming"}

  ]

  states.each do |state|
    unless StateLicense.find_by_state_name(state[:state_name])
      StateLicense.create(:state_name => state[:state_name])
    end
  end






d1 = Doctor.create(:first_name => "Chris", :last_name => "Larsen")
d2 = Doctor.create(:first_name => "Steve", :last_name => "Bonsib")
d3 = Doctor.create(:first_name => "Fred", :last_name => "Sylva")

