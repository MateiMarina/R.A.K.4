class Offshore < ApplicationRecord
    default_scope -> { order(created_at: :asc) }
end
