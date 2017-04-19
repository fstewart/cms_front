class CreateHomepageCarousels < ActiveRecord::Migration
  def change
    create_table :homepage_carousels do |t|
      t.string :title
      t.text :body
      t.string :image
      t.integer :priority
      t.string :video
      t.string :url
      t.boolean :external_link
      t.boolean :is_published
    end
  end
end
