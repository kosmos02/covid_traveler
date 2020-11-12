class Destination < ActiveRecord::Base
    has_many :catalogs
    has_many :activities, through: :catalogs


    def self.get_activities
        

    end
end