class PagesController < ApplicationController
  def home
    
  end

  def view_drug_menu
    @drugs = Drug.find(:all, :order => "drug_id DESC")
  end
end
