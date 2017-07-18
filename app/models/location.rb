class Location < ApplicationRecord
    
     default_scope -> { order(created_at: :desc) }
    # has_many :items
end
