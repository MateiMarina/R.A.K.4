class Service < ApplicationRecord
 # belongs_to :location
  default_scope -> { order(created_at: :asc) }
  
    validates :service_company_name, presence: true
    validates :address, presence: true
    validates :year_formed, presence: true
    validates :other_operational_countries, presence: true
    validates :about_company, presence: true
    validates :current_focus, presence: true
    validates :services, presence: true
    validates :estimated_booking, presence: true
    validates :financial_status, presence: true
end
