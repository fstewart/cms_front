class AddPageToAccordion < ActiveRecord::Migration
  def change
    add_reference :accordions, :page, index: true, foreign_key: true
  end
end
