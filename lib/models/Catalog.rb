class Catalog < ActiveRecord::Base
    belongs_to :destination
    belongs_to :activities
end