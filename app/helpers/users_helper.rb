module UsersHelper
  
  def expertise_cloud(expertises, classes)
    max = expertises.sort_by(&:count).last
	expertises.each do |e|
		index = e.count.to_f / max.count * (classes.size-1)
		yield(e, classes[index.round])
    end
  end

  def sort_link(column, title = nil)
	title ||= column.titleize
	direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	icon = sort_direction == "asc" ? "glyphicon glyphicon-chevron-up" : "glyphicon glyphicon-chevron-down"
	icon = column == sort_column ? icon : ""
	link_to "#{title} <span class='#{icon}'></span>".html_safe, {column: column, direction: direction}
  end

end