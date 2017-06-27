class RemoveTextFromProject < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :text, :string
  end
end
