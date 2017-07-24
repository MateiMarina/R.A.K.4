class CreateCompanyContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :company_contracts do |t|
      t.references :company, foreign_key: true
      t.references :contract, foreign_key: true
      t.text :from
      t.text :to

      t.timestamps
    end
  end
end
