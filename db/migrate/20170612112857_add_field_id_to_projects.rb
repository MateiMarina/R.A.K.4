class AddFieldIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :field_id, :integer
  end
end
