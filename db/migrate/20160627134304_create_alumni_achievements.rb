class CreateAlumniAchievements < ActiveRecord::Migration
  def change
    create_table :alumni_achievements do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :suffix
      t.string :grad_class
      t.string :email
      t.string :major
      t.string :current_job_title
      t.string :current_employer
      t.string :current_city
      t.string :favorite_professor_or_class
      t.text :job_history
      t.text :achievements
      t.string :media

      t.timestamps null: false
    end
  end
end
