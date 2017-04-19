class AddCaCvToCaApplicant < ActiveRecord::Migration
  def change
    add_column :ca_applicants, :ca_cv, :string
  end
end
