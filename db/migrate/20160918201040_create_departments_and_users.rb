class CreateDepartmentsAndUsers < ActiveRecord::Migration
  def change
    create_table :departments_users, id: false do |t|
	  t.belongs_to :user, index: true
      t.belongs_to :department, index: true
    end
  end
end
