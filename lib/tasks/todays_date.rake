desc "Print today's date"

task :todays_date do
    
date = DateTime.now.to_date

ap(date)

end
