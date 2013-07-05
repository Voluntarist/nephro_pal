class CreateBiopsies < ActiveRecord::Migration
  def change
    create_table :biopsies do |t|
      t.integer :is_new
      t.integer :state_l

      t.timestamps
    end
  end
end
