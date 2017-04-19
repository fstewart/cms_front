class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_reference :users, :department, foreign_key: true
    add_column :users, :employee_type, :integer
    add_column :users, :email, :string
    add_column :users, :middle_name, :string
    add_column :users, :suffix, :string
    add_column :users, :nickname, :string
    add_column :users, :title, :string
    add_column :users, :abbreviated_title, :string
    add_column :users, :po_box, :string
    add_reference :users, :building, foreign_key: true
    add_column :users, :phone, :string
    add_column :users, :profile_photo, :string
    add_column :users, :cv, :string
    add_column :users, :website, :string
    add_column :users, :google_scholar, :string
    add_column :users, :current_research, :text, :limit => 700
    add_column :users, :education, :text, :limit => 700
    add_column :users, :achievements, :text, :limit => 700
    add_column :users, :selected_publications, :text, :limit => 7000
    add_column :users, :supervisor, :integer
    add_column :users, :programs, :string
    add_column :users, :show_elevator, :boolean
    add_column :users, :show_title, :boolean
    add_column :users, :show_office, :boolean
    add_column :users, :show_department, :boolean
    add_column :users, :status, :boolean
    add_column :users, :mark_for_deletion, :boolean
  end
end
