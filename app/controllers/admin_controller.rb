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
end
