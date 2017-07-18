class CreateOperatings < ActiveRecord::Migration[5.0]
  def change
    create_table :operatings do |t|
      t.string :operating_company_name
      t.text :address
      t.integer :year_formed
      t.string :other_operational_countries
      t.text :about_company
      t.string :current_focus
      t.string :incumbent_irm_contractor
      t.string :irm_frame_agreements
      t.text :estimated_irm_budget
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
