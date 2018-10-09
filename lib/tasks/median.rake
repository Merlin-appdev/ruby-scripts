desc "Calculate median"
task :median do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MEDIAN
  # ======
  
numbers = numbers.sort
puts("Sorted Numbers:")
puts("[")
t=0
median_number = 0,0

numbers.each do |num|
  puts("[" + t.to_s + "] " + num.to_s + ",")
  t=t+1

end

median_test = numbers.length/2


if median_test.is_a? Integer
  median_number = numbers[median_test-1]

  median_number = median_number + numbers[median_test-1+1]

  median_number = median_number/2
else
  median_number = numbers[median_test.ceil]
end

puts("]")
puts("Median: " + median_number.to_s)
  # To find the median of a set of numbers,
  #  - sort your set
  #  - find the number of items in your sorted set
  #  - if your sorted set has an odd number of items
  #    - save the middle number as your median
  #  - otherwise
  #    - find the number to the left of the middle number
  #    - find the number to the right of the middle number
  #    - average the left and right numbers and save it as your median
end
