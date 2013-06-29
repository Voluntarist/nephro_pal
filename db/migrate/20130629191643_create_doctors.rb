class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :state_id
      t.integer :license_id
      t.timestamps
    end
    add_index(:doctors, [:state_id, :license_id])
  end
end
