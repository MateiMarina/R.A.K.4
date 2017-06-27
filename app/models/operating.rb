class Operating < ApplicationRecord
    
     validates :operating_company_name, :country, :address, :year_formed, 
     :other_operational_countries, :about_company, :current_focus, 
     :incumbent_irm_contractor, :irm_frame_agreements, :estimated_irm_budgets, presence: true

     has_many :items
end
