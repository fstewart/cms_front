class AddDepartmentToCarousel < ActiveRecord::Migration
  def change
    add_reference :carousels, :department, index: true, foreign_key: true
  end
end
