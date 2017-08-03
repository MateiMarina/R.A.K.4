class Company < ApplicationRecord
    
     default_scope -> { order(created_at: :asc) }
     has_many :offshores
     



     
end
