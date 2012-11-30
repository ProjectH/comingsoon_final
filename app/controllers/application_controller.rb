class ApplicationController < ActionController::Base
  include ApplicationHelper
  
  before_filter :set_locale
  
  protect_from_forgery
 # http_basic_authenticate_with :name => "thomas.bancel", :password => "123Soleil"
 
 def set_locale
   if request_has_locale?
     I18n.locale="en" if request.subdomains.include?("en")
     I18n.locale="fr" if request.subdomains.include?("fr")
   elsif request.env['HTTP_ACCEPT_LANGUAGE']
    I18n.locale=request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
   # elsif current_user
   #  I18n.locale=current_user.language
   end
 end

end
