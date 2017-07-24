class OperatingProject < ApplicationRecord
  #belongs_to :operating
  #belongs_to :project
  
  default_scope -> { order(created_at: :asc) }
end
