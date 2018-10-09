desc "Calculate minimum"
task :minimum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================
puts("Your numbers:")
puts("[")
t=0
min_number = 100000000
numbers.each do |num|
  puts("[" + t.to_s + "] " + num.to_s + ",")
  t=t+1
  if min_number > num
    min_number = num
  end
end
puts("]")
puts("Minimum: " + min_number.to_s)

end
