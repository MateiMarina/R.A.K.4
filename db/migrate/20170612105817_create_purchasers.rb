class CreatePurchasers < ActiveRecord::Migration[5.0]
  def change
    create_table :purchasers do |t|
      t.integer :purchaser_id
      t.string :purchaser_name
      t.string :company_type
      t.string :services_rendered

      t.timestamps
    end
  end
end
