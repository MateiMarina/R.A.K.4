class Scrap < ActiveRecord::Migration[5.0]
  def change
    rename_column :scraps, :news_date, :day
  end
end
