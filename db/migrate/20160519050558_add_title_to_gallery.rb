class AddTitleToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :title, :string
    add_column :galleries, :img_alt, :string
  end
end
