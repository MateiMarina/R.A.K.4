class CreateScraps < ActiveRecord::Migration[5.0]
  def change
    create_table :scraps do |t|
      t.string :title
      t.text :link
      t.date :news_date

      t.timestamps
    end
  end
end
