class AddPageToCalltoaction < ActiveRecord::Migration
  def change
    add_reference :calltoactions, :page, index: true, foreign_key: true
  end
end
