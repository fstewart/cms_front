class ChangeDescLimitToPage < ActiveRecord::Migration
  def up
    change_column :pages, :desc, :text
  end

  def down
    change_column :pages, :desc, :string, :limit => 255
  end

end