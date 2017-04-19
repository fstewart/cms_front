class AddDepartmentToIconbox < ActiveRecord::Migration
  def change
    add_reference :iconboxes, :department, index: true, foreign_key: true
  end
end
