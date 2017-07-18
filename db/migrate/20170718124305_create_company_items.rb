class CreateCompanyItems < ActiveRecord::Migration[5.0]
  def change
    create_table :company_items do |t|
      t.references :item, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
