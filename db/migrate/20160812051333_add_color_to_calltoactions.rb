class AddColorToCalltoactions < ActiveRecord::Migration
  def change
    add_column :calltoactions, :color, :string
  end
end
