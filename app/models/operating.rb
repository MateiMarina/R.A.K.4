class Operating < ApplicationRecord
#   belongs_to :location, optional: true
 default_scope -> { order(created_at: :asc) }
 
   
end
