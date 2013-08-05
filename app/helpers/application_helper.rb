module ApplicationHelper

  def flash_class(level)
    case level
    when :notice then "success"
    when :error then "error"
    when :alert then "error"
    end
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end

end

