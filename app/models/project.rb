class Project < ApplicationRecord
    validates :project_title, :about_project, :resource, :status, 
    :estimated_first_production, :country, :region, :water_depth_m,
    :capex_usd, :distance_to_shore, :development_concept, presence: true
end
