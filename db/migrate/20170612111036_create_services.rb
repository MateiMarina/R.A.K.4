class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :service_company_id
      t.string :service_company_name
      t.text :country
      t.string :address
      t.integer :year_formed
      t.string :other_operational_countries
      t.string :about_company
      t.string :current_focus
      t.string :services
      t.string :estimated_booking
      t.text :financial_status

      t.timestamps
    end
  end
end
