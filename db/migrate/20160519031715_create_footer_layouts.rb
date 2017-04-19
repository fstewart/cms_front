class CreateFooterLayouts < ActiveRecord::Migration
  def change
    create_table :footer_layouts do |t|
      t.string :title
      t.text :desc
      t.boolean :status

      t.timestamps null: false
    end
  end
end
