class CreateOperatingProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :operating_projects do |t|
      t.references :operating, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
