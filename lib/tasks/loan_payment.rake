desc "Calculate monthly loan payments"
task :loan_payment do

#----Get Data, write Variables------

path_to_file_apr = Rails.root + "lib/input_files/loan_payment_apr.txt"
path_to_file_years = Rails.root + "lib/input_files/loan_payment_years.txt"
path_to_file_principal = Rails.root + "lib/input_files/loan_payment_principal.txt"

apr = open(path_to_file_apr).read.gsub("\n", "").to_i
years = open(path_to_file_years).read.gsub("\n", "").to_i
principal = open(path_to_file_principal).read.gsub("\n", "").to_f

monthly_payments = apr*principal/100/12

#----Output---------

    puts("APR: " + apr.to_s)
    puts("Number of Years: " + years.to_s)
    puts("Principal: $" + principal.to_s)
    puts("Monthly Payment: $" + monthly_payments.round(2).to_s)

end
