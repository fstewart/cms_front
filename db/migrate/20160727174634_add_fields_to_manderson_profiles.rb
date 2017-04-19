class AddFieldsToMandersonProfiles < ActiveRecord::Migration
  def change
    add_column :manderson_profiles, :linkedin, :string
    add_column :manderson_profiles, :fb, :string
    add_column :manderson_profiles, :favorite_book, :string
    add_column :manderson_profiles, :favorite_quote, :string
    add_column :manderson_profiles, :three_word_description, :string
    add_column :manderson_profiles, :something_unique, :text
  end
end