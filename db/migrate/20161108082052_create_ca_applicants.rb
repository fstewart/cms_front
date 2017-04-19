class CreateCaApplicants < ActiveRecord::Migration
  def change
    create_table :ca_applicants do |t|
      t.string :name
      t.string :preferred_name
      t.string :home_phone
      t.string :cwid
      t.string :email
      t.string :current_address
      t.string :permanent_address
      t.string :classification
      t.string :major
      t.string :minor
      t.string :gpa
      t.date :graduation_date
      t.string :cell_phone
      t.text :availability
      t.text :aspirations
      t.boolean :meeting_availability
      t.text :strengths
      t.text :benefits
      t.string :hours
      t.boolean :committment
      t.boolean :prior_service

      t.timestamps null: false
    end
  end
end
