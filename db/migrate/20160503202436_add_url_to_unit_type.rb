class AddUrlToUnitType < ActiveRecord::Migration
  def change
    add_column :unit_types, :url, :string
  end
end
