class AddBodyToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :body, :string
  end
end
