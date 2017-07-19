class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
    t.string :project_title
      t.text :about_project
      t.string :resource
      t.string :project_status
      t.text :estimated_first_production
      t.text :water_depth_m
      t.text :capex_usd
      t.text :development_concept
      t.text :distance_to_shore
      t.references :contract, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps

    end
  end
end
