class Offshore < ApplicationRecord
#   belongs_to :location

   default_scope -> { order(created_at: :desc) }
end
