class Activities < ActiveRecord::Base    
    has_many :catalogs
    has_many :destinations, through: :catalogs
end