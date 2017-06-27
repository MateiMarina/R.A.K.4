class CreateScraps < ActiveRecord::Migration[5.0]
  def change
    create_table :scraps do |t|
      t.integer :scrap_id
      t.text :title
      t.text :link

      t.timestamps
    end
  end
end
