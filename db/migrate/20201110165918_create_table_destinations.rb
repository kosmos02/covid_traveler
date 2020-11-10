class CreateTableDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :city
      
    end

  end
end
