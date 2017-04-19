class CreateDigitalMeasures < ActiveRecord::Migration
  def change
    create_table :digital_measures do |t|
      t.string :department
      t.string :fname
      t.string :lname
      t.string :endpos
      t.string :email
      t.string :rank
      t.string :dep
      t.string :building
      t.string :box_number
      t.string :ophone
      t.string :dphone
      t.string :fax
      t.string :gender
      t.string :citizen
      t.string :srank
      t.string :dtm_hire
      t.string :dty_hire
      t.string :ac_year
      t.string :tenure
      t.string :employee
      t.string :graduate
      t.string :aacsbqual
      t.string :aacsbsuff
      t.string :fte
      t.string :npresp

      t.timestamps null: false
    end
  end
end
