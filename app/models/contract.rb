class Contract < ApplicationRecord
#   belongs_to :location

    default_scope -> { order(created_at: :desc) }
    validates :contract_name, presence: true
    validates :contract_status, presence: true
    validates :services_rendered, presence: true
    validates :contract_value, presence: true
    validates :award_year, presence: true
end
