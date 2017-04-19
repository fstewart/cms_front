class AddUrlToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :url, :string
  end
end
