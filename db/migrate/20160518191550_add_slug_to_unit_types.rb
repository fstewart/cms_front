class AddSlugToUnitTypes < ActiveRecord::Migration
  def change
    add_column :unit_types, :slug, :string
    add_index :unit_types, :slug
  end
end
