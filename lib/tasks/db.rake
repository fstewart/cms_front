namespace :db do
  task :backup do
    system "/Applications/MAMP/Library/bin/mysqldump --opt --user=root --password culverhouse_staging_development > /../c2016v2.sql"
  end

  task :restore do
    system "/Applications/MAMP/Library/bin/mysqldump --user=root --password  < c2016v2.sql"
  end

end
