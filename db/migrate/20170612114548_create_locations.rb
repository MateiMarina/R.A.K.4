class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :supra_region
      t.string :region

      t.timestamps
    end
  end
end
