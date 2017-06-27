class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.integer :asset_id
      t.string :asset_name
      t.string :asset_type
      t.string :asset_owner
      t.string :country
      t.string :current_manager
      t.string :previous_manager
      t.string :asset_specifications

      t.timestamps
    end
  end
end
