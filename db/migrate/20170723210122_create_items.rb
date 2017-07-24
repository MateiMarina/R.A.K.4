class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_type
      t.string :item_owner
      t.string :current_manager
      t.string :previous_manager
      t.text :item_specifications
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
