class CreateVessels < ActiveRecord::Migration[5.0]
  def change
    create_table :vessels do |t|
      t.string :vessel_name
      t.string :vessel_status
      t.string :country
      t.string :vessel_type
      t.text :latitude
      t.text :imo_no
      
      t.timestamps
    end
  end
end
