# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def available_email_addresses
    email_addresses = Setting.find_all_by_key('email').collect{|e|e.value}.join("<br /> ")
    return email_addresses
  end
end
