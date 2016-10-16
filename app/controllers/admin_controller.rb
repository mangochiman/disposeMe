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

end
