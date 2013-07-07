class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :state_license_id
      t.integer :insurance_license_id
      t.timestamps
    end
    add_index(:doctors, [:state_license_id, :insurance_license_id])
    #do I need another index for insurance_id?
  end
end
