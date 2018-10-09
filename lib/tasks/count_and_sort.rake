desc "Count and sort numbers"
task :count_and_sort do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  string_input = open(path_to_file).read.chomp
  numbers = string_input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

puts("Your numbers:")

t=0

numbers.each do |num|
  puts("[" + t.to_s + "] " + num.to_s + ",")
  t=t+1
end

puts("]")
puts("Count: " + numbers.length.to_s)
puts("Sorted Numbers:")

t=0
numbers.sort.each do |num|
  puts("[" + t.to_s + "] " + num.to_s + ",")
  t=t+1
end
puts("]")

end
