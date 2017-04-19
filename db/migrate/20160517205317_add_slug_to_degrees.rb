class AddSlugToDegrees < ActiveRecord::Migration
  def change
    add_column :degrees, :slug, :string
    add_index :degrees, :slug
  end
end
