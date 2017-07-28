class Operating < ApplicationRecord
#   belongs_to :location, optional: true
 default_scope -> { order(created_at: :asc) }
 
 
   
    validates :operating_company_name, presence: true
     validates :address, presence: true
      validates :other_operational_countries, presence: true
       validates :about_company, presence: true
         validates :year_formed, presence: true
          validates :current_focus, presence: true
           validates :incumbent_irm_contractor, presence: true
            validates :irm_frame_agreements, presence: true
             validates :estimated_irm_budget, presence: true
 
   
end
