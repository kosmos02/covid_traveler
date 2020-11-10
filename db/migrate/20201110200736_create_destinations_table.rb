class CreateDestinationsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :scene
    end
  end
end
