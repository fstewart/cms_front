class AddUrlToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :url, :string
  end
end
