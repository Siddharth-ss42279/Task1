#read the file


file_one_name, file_two_name = ARGV
file_one  = open(file_one_name)
file_one_content = file_one.read
puts "content of file one : \n"
puts file_one_content


#sort words of file one


words = file_one_content.split(' ')
sorted_words = words.sort
puts "sorted words are: "
print sorted_words
print "\n"


#removing words with lenght 3 or less

puts "removing words with length 3 or less than 3 .........."

array_of_words = []
sorted_words.each do |word|
 
  if word.length > 3
    array_of_words<<word
  end
end  


content = array_of_words.join(' ')


#open target file in write mode


puts "copying content to target file.........."

file_two = open(file_two_name, 'w')
file_two.write(content)


#close file
file_one.close()
file_two.close()
