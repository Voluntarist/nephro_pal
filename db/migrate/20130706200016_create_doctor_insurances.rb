class CreateDoctorInsurances < ActiveRecord::Migration
  def change
    create_table :doctor_insurances do |t|
      t.integer :insurance_license_id
      t.integer :doctor_id
      t.timestamps
    end
    add_index(:doctor_insurances, [:insurance_license_id, :doctor_id])
  end
end
