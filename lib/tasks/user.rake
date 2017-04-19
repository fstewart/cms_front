namespace :user do
  
  task :slugs do
  	User.find_each(&:save)
  end

end