class CreateCustomPages < ActiveRecord::Migration
  def change
    create_table :custom_pages do |t|
      t.integer :parent_id
      t.integer :unit_id
      t.string :title
      t.string :page_heading
      t.integer :parent_id
      t.string :url
      t.string :external_url
      t.text :description
      t.string :meta_title
      t.text :meta_description
      t.text :meta_keyword
      t.boolean :status

      t.timestamps null: false
    end
  end
end
