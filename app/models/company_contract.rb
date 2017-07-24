class CompanyContract < ApplicationRecord
  #belongs_to :company
  #belongs_to :contract
  
  default_scope -> { order(created_at: :asc) }
end
