class AddLayoutToImageBox < ActiveRecord::Migration
  def change
    add_column :imageboxes, :layout, :string
  end
end
