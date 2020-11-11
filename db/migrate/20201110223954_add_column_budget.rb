class AddColumnBudget < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :budget, :integer
  end
end
