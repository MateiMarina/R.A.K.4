class CompanyScrap < ApplicationRecord
  #belongs_to :company
  #belongs_to :scrap
  
  default_scope -> { order(created_at: :asc) }
end
