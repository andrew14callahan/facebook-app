module ApplicationHelper
  
  # Returns the full title for any given page on my site.
  def full_title(page_title = '')
    base_title = "Facebook App"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

end
