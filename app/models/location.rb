class Location < ApplicationRecord
    
     default_scope -> { order(created_at: :asc) }
    # has_many :items
    validates :country, presence: true
    validates :supra_region, presence: true
    validates :region, presence: true
end
