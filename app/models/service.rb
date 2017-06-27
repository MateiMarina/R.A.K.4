class Service < ApplicationRecord
     validates :service_company_name, :country, :address, :year_formed,
    :other_operational_countries, :about_company, :current_focus, 
    :services, :estimated_booking, :financial_status, presence: true
end
