class Operating < ApplicationRecord
 belongs_to :location, optional: true
 default_scope -> { order(created_at: :asc) }
 has_many :offshores

 #def self.search(operating_company_name)
 #    where("operating_company_name ILIKE ?", "%#{search}%", "%#{search}%")
 #end



   validates_uniqueness_of :operating_company_name, :case_sensitive => false
    validates :operating_company_name, presence: true
     validates :address, presence: true
      validates :other_operational_countries, presence: true
       validates :about_company, presence: true
         validates :year_formed, presence: true
          validates :current_focus, presence: true
           validates :incumbent_irm_contractor, presence: true
            validates :irm_frame_agreements, presence: true
             validates :estimated_irm_budget, presence: true

   OPERATING_COMPANY_NAME_OPTIONS = [ "Shell", "Chevron", "BP"]




end
