class AddUrlToDegreeCategory < ActiveRecord::Migration
  def change
    add_column :degree_categories, :url, :string
  end
end
