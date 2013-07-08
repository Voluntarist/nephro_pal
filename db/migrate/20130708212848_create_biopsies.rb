class CreateBiopsies < ActiveRecord::Migration
  def change
    create_table :biopsies do |t|
      t.boolean :new_doctor
      t.integer :state_license_id
      t.integer :insurance_license_id

      t.timestamps
    end
    add_index(:doctors, :state_license_id)
    add_index(:doctors, :insurance_license_id)
  end
end
