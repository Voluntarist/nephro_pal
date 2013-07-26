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

  {:state_name => "Alaska"},
  {:state_name => "Alabama"},
  {:state_name => "Arkansas"}

  ]

  states.each do |state|
    unless StateLicense.find_by_state_name(state[:state_name])
      StateLicense.create(:state_name => state[:state_name])
    end
  end






d1 = Doctor.create(:first_name => "Chris", :last_name => "Larsen")
d2 = Doctor.create(:first_name => "Steve", :last_name => "Bonsib")
d3 = Doctor.create(:first_name => "Fred", :last_name => "Sylva")

