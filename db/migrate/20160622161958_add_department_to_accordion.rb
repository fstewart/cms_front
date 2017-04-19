class AddDepartmentToAccordion < ActiveRecord::Migration
  def change
    add_reference :accordions, :department, index: true, foreign_key: true
  end
end
