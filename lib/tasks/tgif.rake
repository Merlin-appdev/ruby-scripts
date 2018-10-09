desc "Check if today is Friday"
task :tgif do
    
    
date = DateTime.now.to_date          #Get today's date and store it in "date"
today_weekday = date.strftime("%A")  #From "date" pull today's weekday

if today_weekday == "Friday"         #Check if today's weekday is Friday.
my_output = "Thank God it's Friday!"

else
my_output = ("Unfortunately it's only "+today_weekday.to_s+". We still need to wait a little for the TGIF." )

end

ap(my_output)

end