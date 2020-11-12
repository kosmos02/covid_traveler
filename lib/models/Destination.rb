class Destination < ActiveRecord::Base
    has_many :catalogs
    has_many :activities, through: :catalogs
end