class AddStatusToAccordion < ActiveRecord::Migration
  def change
    add_column :accordions, :status, :boolean
  end
end
