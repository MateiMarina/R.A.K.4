class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.integer :worker_id
      t.string :full_name
      t.string :classification
      t.string :company_type
      t.text :ak_notes
      t.text :current_company
      t.string :current_country

      t.timestamps
    end
  end
end
