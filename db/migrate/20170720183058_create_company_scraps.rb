class CreateCompanyScraps < ActiveRecord::Migration[5.0]
  def change
    create_table :company_scraps do |t|
      t.references :company, foreign_key: true
      t.references :scrap, foreign_key: true

      t.timestamps
    end
  end
end
