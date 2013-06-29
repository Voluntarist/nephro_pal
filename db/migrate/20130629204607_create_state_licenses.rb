class CreateStateLicenses < ActiveRecord::Migration
  def change
    create_table :state_licenses do |t|
      t.string :state_name
    end
  end
end
