class OffshoreStakeholder < ApplicationRecord
 # belongs_to :offshore
  #belongs_to :stakeholder
  default_scope -> { order(created_at: :asc) }
end
