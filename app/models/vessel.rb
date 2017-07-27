class Vessel < ApplicationRecord
    
    default_scope -> { order(created_at: :asc) }
     validates :imo_no, uniqueness: true 
      
end
