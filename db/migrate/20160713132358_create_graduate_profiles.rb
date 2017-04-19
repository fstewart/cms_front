class CreateGraduateProfiles < ActiveRecord::Migration
  def change
    create_table :graduate_profiles do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :nickname
      t.string :email
      t.string :phone
      t.string :hometown
      t.string :candidate_type
      t.string :grad_class
      t.string :ug_school
      t.string :ug_year
      t.text :work_experience
      t.text :activities_honors
      t.text :internship
      t.text :cskills
      t.string :avatar
      t.string :cv
      t.boolean :status
      t.boolean :registered

      t.timestamps null: false
    end
  end
end
