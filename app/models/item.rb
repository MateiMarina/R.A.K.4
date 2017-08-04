class Item < ApplicationRecord
   belongs_to :location, :optional => true
   default_scope -> { order(created_at: :asc) }
   
    validates :item_name, presence: true
    validates :item_type, presence: true
    validates :item_owner, presence: true
    validates :current_manager, presence: true
    validates :previous_manager, presence: true
    validates :item_specifications, presence: true
end
