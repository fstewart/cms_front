class AddHeaderImageToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :header_image, :string
  end
end
