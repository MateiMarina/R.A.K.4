class Project < ApplicationRecord
    
    validates :project_title, uniqueness: true 
    default_scope -> { order(created_at: :asc) }
end


