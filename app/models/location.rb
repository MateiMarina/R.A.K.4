class Location < ApplicationRecord
     validates :country, presence: true
      validates :supra_region, presence: true
        validates :region, presence: true
     
     # :country, :supra_region, :region
end
