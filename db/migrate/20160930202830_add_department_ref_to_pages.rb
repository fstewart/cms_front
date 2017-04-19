class AddDepartmentRefToPages < ActiveRecord::Migration
  def change
    add_reference :pages, :department, index: true, foreign_key: true
  end
end
