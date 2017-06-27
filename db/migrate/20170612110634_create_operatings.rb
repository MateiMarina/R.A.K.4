class CreateOperatings < ActiveRecord::Migration[5.0]
  def change
    create_table :operatings do |t|
      t.integer :operating_company_id
      t.string :operating_company_name
      t.text :country
      t.string :address
      t.integer :year_formed
      t.string :other_operational_countries
      t.string :about_company
      t.string :current_focus
      t.string :incumbent_irm_contractor
      t.string :irm_frame_agreements
      t.text :estimated_irm_budgets

      t.timestamps
    end
  end
end
