class CreateOffshores < ActiveRecord::Migration[5.0]
  def change
    create_table :offshores do |t|
      t.integer :field_id
      t.string :field_name
      t.string :status
      t.string :country
      t.string :original_operator
      t.string :stakeholders
      t.text :discovery_yr
      t.string :resource
      t.text :field_size_boe
      t.text :first_production_yr
      t.text :estimated_end_production
      t.text :field_life_yrs
      t.text :water_depth
      t.text :capex_usd
      t.text :distance_to_shore_km
      t.text :no_manifolds
      t.text :no_installed_trees

      t.timestamps
    end
  end
end
