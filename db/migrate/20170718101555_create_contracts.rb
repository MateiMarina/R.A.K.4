class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :contract_name
      t.string :contract_status
      t.string :services_rendered
      t.string :contract_value
      t.integer :award_year
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
