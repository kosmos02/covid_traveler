class Destination < ActiveRecord::Base
    has_many :catalogs
    has_many :activities, through: :catalogs

    def select_by_budget_scene
        Destination.where(budget: @budget, scene: @scene_selection).or(Destination.where(budget: @budget +1, scene: @scene_selection)).or(Destination.where(budget: @budget -1, scene: @scene_selection))
    end
end