class CreateActivitiesTable < ActiveRecord::Migration[6.0]
  def change
      create_table :activities do |t|
          t.string :name
          t.string :mood
      end
  end
end
