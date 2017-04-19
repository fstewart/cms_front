class AddSubpages < ActiveRecord::Migration
  def change
    add_column :pages, :parent_id, :integer
    add_column :pages, :position, :integer
  end
end
