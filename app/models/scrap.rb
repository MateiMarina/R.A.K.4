class Scrap < ApplicationRecord
       validates :title, uniqueness: true 
        validates :link, uniqueness: true 
      default_scope -> { order(created_at: :asc) }
end
