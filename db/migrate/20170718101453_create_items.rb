class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :assets_name
      t.string :asset_type
      t.string :asset_owner
      t.string :current_manager
      t.string :previous_manager
      t.text :asset_specifications
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
