module ApplicationHelper
  
  # Returns the full title on a per-page basis
  def full_title(page_title)
    base_title = "Fidbacks"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  # def request_has_locale?
  #   request.subdomains.include?("en"||"fr")
  # end
  # 
  # # not useful yet
  # def set_language_subdomain(locale)
  #   locale+'.'+request.domain+request.port_string unless request_has_locale?
  # end
  
end
