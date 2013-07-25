class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :doctor_id
      t.integer :biopsy_id

      t.timestamps
    end
  end
end
