user = User.new
user.first_name = 'E&J'
user.last_name = 'J&E'
user.email = 'ej@gmail.com'
user.phone_number = '0111111111'
user.password = 'user'
user. username = 'user'
user.save

puts "Username =  'user' \n Password = 'user'"
expiry_dates = ["01/jan/2017".to_date, "05/Feb/2016".to_date]
drugs = ["Triomune-40", "d4T (Stavudine 30mg tablet)", "d4T (Stavudine 40mg tablet)",
  "DDI (Didanosine 125mg tablet)", "DDI (Didanosine 200mg tablet)",
  "EFV (Efavirenz 600mg tablet)", "TDF (Tenofavir 300 mg tablet)", "S (Streptomycin 1gm vial)",
  "RIF or R (Rifampin 300mg tablet)", "RHZ (R60/H60/Z150)", "RHZE (R150/H75/Z400)", "RH (R150/H75)"]
drugs.each do |drug_name|
  drug = Drug.new
  drug.name = drug_name
  drug.expiry_date = Date.today+(1000*rand())
  drug.description = "The description for #{drug_name} shall be here."
  drug.save
end