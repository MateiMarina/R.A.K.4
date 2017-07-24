class Operating < ApplicationRecord
#   belongs_to :location, optional: true
 default_scope -> { order(created_at: :asc) }
 
    validates :country, presence: true
    validates :supra_region, presence: true
    validates :region, presence: true
    validates :country, presence: true
    validates :supra_region, presence: true
    validates :region, presence: true
    validates :country, presence: true
    validates :supra_region, presence: true
    validates :region, presence: true
end
