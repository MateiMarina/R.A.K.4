class CreateCompanyEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :company_employees do |t|
      t.references :company, foreign_key: true
      t.references :employee, foreign_key: true
      t.text :begin
      t.text :end

      t.timestamps
    end
  end
end
