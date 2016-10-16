class Drug < ActiveRecord::Base
  set_table_name :drugs
  set_primary_key :drug_id

  def self.days_before_expiry(drug)
    today = Date.today
    expiry_date = drug.expiry_date.to_date
    total_days = (expiry_date - today).to_i
    return total_days
  end

  def self.percentage_before_expiry(drug)
    today = Date.today
    expiry_date = drug.expiry_date.to_date
    manufactured_date = "01/Jan/2014".to_date
    days_diff = (expiry_date - manufactured_date).to_f
    total_days = (expiry_date - today).to_f
    percent = (100-(total_days/days_diff * 100))
    return percent.to_i
  end
end
