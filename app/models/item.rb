class Item < ApplicationRecord
    
    validates :asset_name, :asset_type, :asset_owner, :country, :current_manager, :previous_manager, :asset_specifications, presence: true
    
end
