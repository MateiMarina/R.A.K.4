class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :service_company_name
      t.text :address
      t.integer :year_formed
      t.string :other_operational_countries
      t.text :about_company
      t.string :current_focus
      t.string :services
      t.string :estimated_booking
      t.text :financial_status
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
