class RemoveNameFromContract < ActiveRecord::Migration[5.0]
  def change
    remove_column :contracts, :name, :string
  end
end
