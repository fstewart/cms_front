class CreatePageRelations < ActiveRecord::Migration
  def change
    create_table :page_relations do |t|

      t.timestamps null: false
    end
  end
end
