class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :current_company
      t.string :country
      t.string :position
      t.text :ak_notes
      t.text :classification

      t.timestamps
    end
  end
end
