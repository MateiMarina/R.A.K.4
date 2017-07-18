class CreateOffshores < ActiveRecord::Migration[5.0]
  def change
    create_table :offshores do |t|
      t.string :field_name
      t.string :field_status
      t.string :original_operator
      t.string :current_operator
      t.text :discovery_yr
      t.text :resource
      t.text :field_size_boe
      t.text :first_production_yr
      t.text :estimated_end_production
      t.text :field_life_yrs
      t.text :water_depth
      t.text :capex_usd
      t.text :distance_to_shore_km
      t.text :no_manifolds
      t.text :no_intalled_trees
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
