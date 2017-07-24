class Employee < ApplicationRecord
    
    default_scope -> { order(created_at: :asc) }
    
    validates :full_name, presence: true
    validates :current_company, presence: true
    validates :country, presence: true
    validates :position, presence: true
    validates :ak_notes, presence: true
    validates :classification, presence: true
   
end

