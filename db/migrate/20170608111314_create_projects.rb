class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :project_id
      t.string :project_title
      t.string :about_project
      t.string :resource
      t.string :status
      t.text :estimated_first_production
      t.string :country
      t.string :region
      t.string :water_depth_m
      t.string :text
      t.text :capex_usd
      t.text :distance_to_shore
      t.text :development_concept

      t.timestamps
    end
  end
end
