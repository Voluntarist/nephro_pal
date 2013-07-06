class CreateInsuranceLicenses < ActiveRecord::Migration
  def change
    create_table :insurance_licenses do |t|
      t.string :insurance_name
    end
  end
end
