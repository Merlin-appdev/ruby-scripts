desc "Calculate mean"
task :mean do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MEAN
  # ====
puts("Your numbers:")
puts("[")
t=0
total_sum = 0
numbers.each do |num|
  puts("[" + t.to_s + "] " + num.to_s + ",")
  t=t+1
  total_sum = total_sum + num
end
mean_total = total_sum/numbers.length
puts("]")
puts("Mean: " + mean_total.to_s)
  # To find the mean (or average) of a set,
  #  - we sum up all the elements
  #  - then we divide the sum by the number of elements in the set

end
