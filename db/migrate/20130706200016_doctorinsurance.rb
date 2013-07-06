class CreateDoctorInsurance < ActiveRecord::Migration
  def change
    create_table :doctor_insurance do |t|
      t.integer :insurance_license_id
      t.integer :doctor_id
      t.timestamps
    end
    add_index(:doctor_insurance, [:insurance_license_id, :doctor_id])
  end
end
