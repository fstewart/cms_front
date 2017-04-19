class ChangeCandidateTypeFormatInMandersonProfiles < ActiveRecord::Migration
  def change
    change_column :manderson_profiles, :candidate_type, :integer
    change_column :manderson_profiles, :grad_class, :integer
  end
end
