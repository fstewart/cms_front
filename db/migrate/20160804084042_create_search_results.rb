class CreateSearchResults < ActiveRecord::Migration
  def change
    create_table :search_results do |t|
      t.text :content
      t.string :title
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
