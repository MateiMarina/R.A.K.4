class Contract < ApplicationRecord
    validates :contract_name, :contract_status, :country, :services_rendered, :contract_value, :award_year,  presence: true
end
