class AddDepartmentToTimeline < ActiveRecord::Migration
  def change
    add_reference :timelines, :department, index: true, foreign_key: true
  end
end
