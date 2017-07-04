class RemoveBannedFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :banned, :boolean
  end
end
