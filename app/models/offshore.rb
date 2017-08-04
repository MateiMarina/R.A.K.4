class Offshore < ApplicationRecord
    belongs_to :company, :optional => true
    validates :field_name, uniqueness: true 
    default_scope -> { order(created_at: :asc) }
    # validates :field_name, presence: true
    # validates :field_status, presence: true
    # validates :original_operator, presence: true
    # validates :current_operator, presence: true
    # validates :discovery_yr, presence: true
    # validates :resource, presence: true
    # validates :field_size_boe, presence: true
    # validates :first_production_yr, presence: true
    # validates :estimated_end_production, presence: true
    # validates :field_life_yrs, presence: true
    # validates :water_depth, presence: true
    # validates :capex_usd, presence: true
    # validates :distance_to_shore_km, presence: true
    # validates :no_manifolds, presence: true
    # validates :no_intalled_trees, presence: true
end
