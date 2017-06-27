class AddOperatingCompanyIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :operating_company_id, :integer
  end
end
