class Offshore < ApplicationRecord
    validates :field_name, :status,
    :country, :original_operator, :stakeholders, 
    :discovery_yr, :resource, :field_size_boe, 
    :first_production_yr, :estimated_end_production, 
    :field_life_yrs, :water_depth, :capex_usd, 
    :distance_to_shore_km, :no_manifolds, :no_installed_trees,  presence: true 
end
