class CompanyItem < ApplicationRecord
  # belongs_to :item
  # belongs_to :company
  
   default_scope -> { order(created_at: :desc) }
end
