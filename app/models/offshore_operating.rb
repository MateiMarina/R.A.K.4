class OffshoreOperating < ApplicationRecord
  #belongs_to :offshore
  #belongs_to :operating
  
  default_scope -> { order(created_at: :asc) }
end
