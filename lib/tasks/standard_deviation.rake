desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences
  sum_numbers = 0
  diff_sqr = 0
  numbers.each do |num|
    sum_numbers = sum_numbers + num
  end
  mean_numbers = sum_numbers / numbers.length
  
  numbers.each do |num|
    diff_sqr = diff_sqr + (num - mean_numbers)**2
  end
  var_numbers = diff_sqr / numbers.length
  
  
  

  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance
  
  stdv_numbers = var_numbers**0.5
  
puts("Your numbers:")
puts("[")  
  t=0
numbers.each do |num|
  puts("[" + t.to_s + "] " + num.to_s + ",")
  t=t+1
end
  
puts("]")
puts("Standard Deviation: " + stdv_numbers.to_s)
end
