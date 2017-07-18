class Project < ApplicationRecord
  # belongs_to :contracts
  # belongs_to :location
  
   default_scope -> { order(created_at: :desc) }
end
