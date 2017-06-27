class Worker < ApplicationRecord
    validates :full_name, :classification, :company_type, :ak_notes,
    :current_company, :current_country, presence: true
end
