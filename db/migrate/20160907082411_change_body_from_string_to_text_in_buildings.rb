class ChangeBodyFromStringToTextInBuildings < ActiveRecord::Migration
  def change
    change_column :buildings, :body,  :text
  end
end
