class PagesController < ApplicationController
  def home
    @drugs = Drug.find(:all, :order => "DATE(expiry_date) ASC")
    @h_one_header = "Notifications"
    @small_font = "Expiring Drugs"
    @page_info = "Dashboard"
  end

  def view_drug_menu
    @drugs = Drug.find(:all, :order => "drug_id DESC")
    @h_one_header = "Available Drugs "
    @small_font = "<span class='badge btn btn-lg bg-green'><b>#{@drugs.count}</b>"
    @page_info = "Available Drugs"
  end

  def new_drug_menu
    @h_one_header = "New Entry"
    @small_font = "Add New Record"
    @page_info = "New Entry"
  end
end
