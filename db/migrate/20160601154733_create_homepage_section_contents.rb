class CreateHomepageSectionContents < ActiveRecord::Migration
  def change
    create_table :homepage_section_contents do |t|
      t.integer :priority
      t.string :title
      t.text :body
      t.boolean :is_published

      t.timestamps null: false
    end
  end
end
