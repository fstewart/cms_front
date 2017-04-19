class CreateArticleNewsCategories < ActiveRecord::Migration
  def change
    create_table :article_news_categories do |t|
      t.references :article, index: true, foreign_key: true
      t.references :news_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
