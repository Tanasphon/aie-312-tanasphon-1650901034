# Create an array with 5 numbers
# Access the second element in the array
# Add a new number to the end of the array
# Find the length of the array

# Create a hash with 3 key-value pairs (title, author, pages) representing a book
# Access the value for the key :author
# Add a new key :published_year with the value 1949
# Remove the key :pages from the hash
num = [3,10,20,30,5]
puts "the first element is #{num[3]}"
num.push(100)
puts num
puts num.length

num2 = {
  :title => "Name",
  :author => "Han",
  :pages => "number"
}
puts num2[:author]
num2[:published_year] =1949   
puts num2
num2.delete(:pages)
puts num2