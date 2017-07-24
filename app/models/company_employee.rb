class CompanyEmployee < ApplicationRecord
  #belongs_to :company
  #belongs_to :employee
  
  default_scope -> { order(created_at: :asc) }
end
