class AddDepartmentToImagebox < ActiveRecord::Migration
  def change
    add_reference :imageboxes, :department, index: true, foreign_key: true
  end
end
