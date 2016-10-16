require "rest_client"
class AdminController < ApplicationController
  def create_new_drug
    drug = Drug.new
    drug.name = params[:drug_name]
    drug.batch_no = params[:batch_no]
    drug.expiry_date = params[:expiry_date].to_date rescue params[:expiry_date]
    drug.description = params[:description]
    drug.save
    redirect_to("/view_drug_menu") and return
  end

  def create_new_emails
    params[:contacts]["value"].each do |email_address|
      new_setting = Setting.new
      new_setting.key = 'email'
      new_setting.value = email_address
      new_setting.save
    end
    redirect_to("/settings_menu") and return
  end

  def delete_email
    settings_id = params[:settings_id]
    setting = Setting.find(settings_id)
    setting.delete
    redirect_to("/settings_menu") and return
  end

  def send_emails
    email_addresses = Setting.find_all_by_key('email').collect{|e|e.value}
    data = {}
    drugs_data = Drug.expiring_drugs
    expiring_drugs = drugs_data[0]
    names = drugs_data[1]
    data["drugs"] = expiring_drugs
    data["emails"] = email_addresses
    data["names"] = names

    uri = "http://192.168.43.203:3000/send_mail"
    output = RestClient.post(uri, data)
  end

end
