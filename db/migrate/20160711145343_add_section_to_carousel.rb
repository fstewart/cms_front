class AddSectionToCarousel < ActiveRecord::Migration
  def change
    add_reference :carousels, :section, index: true, foreign_key: true
  end
end
