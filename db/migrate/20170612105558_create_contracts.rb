class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.integer :contract_id
      t.string :contract
      t.string :name
      t.string :contract_status
      t.string :country
      t.integer :purchaser_id
      t.integer :operating_company_id
      t.string :service
      t.integer :company_id
      t.string :services_rendered
      t.string :contract_value
      t.integer :award_year

      t.timestamps
    end
  end
end
