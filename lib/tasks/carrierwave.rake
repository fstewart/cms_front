namespace :carrierwave do
  desc "Recreate versions for CarrierWave"
  task recreate_versions: :environment do
    User.all.where("image IS NOT NULL").each do |u|
      u.profile_photo.recreate_versions!
    end
  end
end
