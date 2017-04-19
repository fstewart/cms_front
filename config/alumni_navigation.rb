SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_class = "nav navbar-nav main-nav"
    primary.item :alumni, 'Alumni Home', alumni_path do |alumni|
      alumni.item :ces, 'CES', alumni_ces_path
      alumni.item :career, 'Career', alumni_career_path do |career|
        career.item :job_board, 'Job Board', alumni_job_board_path
        career.item :job_board, 'Job Board', alumni_job_board_path
      end
    end
  end
end