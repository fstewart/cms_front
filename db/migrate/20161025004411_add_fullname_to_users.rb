class AddFullnameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string

    User.update_all('fullname = CONCAT(first_name, " ", last_name)')

  end
end
