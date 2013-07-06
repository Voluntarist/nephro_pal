class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
    add_index(:doctors, [:state_id, :license_id])
    #do I need another index for insurance_id?
  end
end
