class AddStatusToCarousel < ActiveRecord::Migration
  def change
    add_column :carousels, :status, :boolean
  end
end
