class CreateCatalogTable < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogs do |t|
      t.references :activities
      t.references :destination
    end
  end
end
