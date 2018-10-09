desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)





puts("Your numbers:")
puts("[")

t=0
min_number = 100000000
max_number = -10000000

numbers.each do |num|
  puts("[" + t.to_s + "] " + num.to_s + ",")
  t=t+1
  if max_number < num
    max_number = num
  end
  if min_number > num
    min_number = num
  end
  
end
final_range = max_number-min_number
puts("]")
puts("Range: " + final_range.to_s)


end
