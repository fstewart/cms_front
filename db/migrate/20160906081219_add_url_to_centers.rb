class AddUrlToCenters < ActiveRecord::Migration
  def change
    add_column :centers, :url, :string
  end
end
