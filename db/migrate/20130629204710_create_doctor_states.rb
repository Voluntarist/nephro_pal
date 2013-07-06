class CreateDoctorStates < ActiveRecord::Migration
  def change
    create_table :doctor_states do |t|
      t.integer :state_license_id
      t.integer :doctor_id
      t.timestamps
    end
    add_index(:doctor_states, [:state_license_id, :doctor_id])
  end
end
