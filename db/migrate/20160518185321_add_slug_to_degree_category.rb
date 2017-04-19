class AddSlugToDegreeCategory < ActiveRecord::Migration
  def change
    add_column :degree_categories, :slug, :string
    add_index :degree_categories, :slug
  end
end
