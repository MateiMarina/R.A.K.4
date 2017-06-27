class AddOperatingCompanyIdToOffshores < ActiveRecord::Migration[5.0]
  def change
    add_column :offshores, :operating_company_id, :integer
  end
end
