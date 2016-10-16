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

  def self.expiring_drugs
    expiring_drugs = []
    drug_names = []
    Drug.all.each do |drug|
      today = Date.today
      expiry_date = drug.expiry_date.to_date
      manufactured_date = "01/Jan/2014".to_date
      days_diff = (expiry_date - manufactured_date).to_f
      total_days = (expiry_date - today).to_f
      percentage = (100-(total_days/days_diff * 100))

      if percentage >= 80
        drug_names << drug.name
        drug_row = [{
          :drug_id => drug.drug_id,
          :drug_name => drug.name,
          :expiry_date => drug.expiry_date,
          :batch_no => drug.batch_no
        }]
        expiring_drugs << drug_row
      end
    end

    return [expiring_drugs, drug_names]
  end

end
