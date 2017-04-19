class AddSectionToAccordion < ActiveRecord::Migration
  def change
    add_reference :accordions, :section, index: true, foreign_key: true
  end
end
