class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :pagehead
      t.string :page_url
      t.string :external_url
      t.string :short_desc
      t.text   :desc
      t.string :meta_title
      t.string :meta_keyword
      t.string :meta_description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
