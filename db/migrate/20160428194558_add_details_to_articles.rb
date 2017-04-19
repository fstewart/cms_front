class AddDetailsToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :news_category, index: true, foreign_key: true
    add_column :articles, :url, :string
    add_column :articles, :quote, :string
    add_column :articles, :name, :string
    add_column :articles, :designation, :string
    add_column :articles, :phone, :string
    add_column :articles, :email, :string
    add_column :articles, :story_url, :string
    add_column :articles, :story_short_desc, :string
    add_column :articles, :quote_author, :string
    add_column :articles, :quote_author_title, :string
    add_column :articles, :photo, :string
    add_column :articles, :home_photo, :string
    add_column :articles, :school_affi_degree, :string
    add_column :articles, :school_affi_year, :integer
    add_column :articles, :news_date, :date
    add_column :articles, :approved_date, :date
    add_column :articles, :featured, :boolean
    add_column :articles, :quoted, :boolean
    add_column :articles, :status, :boolean
  end
end
