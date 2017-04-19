crumb :root do
  link "Home", root_path
end

crumb :newsroom do
  link "Newsroom", newsroom_path
end

crumb :experts_guide do
  link "Experts Guide", experts_guide_path
  parent :newsroom
end

crumb :press_releases do
  link "Press Releases", press_releases_path
  parent :newsroom
end

crumb :experts_guide do
  link "Media Resources", media_resources_path
  parent :newsroom
end

crumb :experts_guide do
  link "Media Resources", media_resources_path
  parent :newsroom
end

crumb :experts_guide do
  link "Academic Officials", academic_officials_path
  parent :newsroom
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).