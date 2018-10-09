desc "Calculate word count statistics"
task :word_count do
  
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word1 = open(path_to_special_word).read
  special_word = special_word1.gsub("\n", "")
  
number_of_letters = text.length
number_of_letters_no_spaces = text.gsub(" ", "").length
number_of_spaces = number_of_letters - number_of_letters_no_spaces

special_word_count = text.scan(special_word).length

output_text = 
"File input: " + text.to_s +
" -- Character count (with spaces): " + number_of_letters.to_s +
" -- Character count (without spaces): " + number_of_letters_no_spaces.to_s +
" -- Occurences of " + special_word.to_s + ": " + special_word_count.to_s

ap(output_text)

end
