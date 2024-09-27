number = 10  # You can change this value to test
# Write a program that checks if a number is positive, negative, or zero
# Write a program that checks if a number is even or odd

# Write a while loop that counts from 1 to 10
# Write a while loop to print the first 5 even numbers
number = 10  

if number > 0
  puts "#{number} is positive."
elsif number < 0
  puts "#{number} is negative."
else
  puts "#{number} is zero."
end

if number.even?
  puts "#{number} is even."
else
  puts "#{number} is odd."
end

puts "Counting from 1 to 10:"
counter = 1
while counter <= 10
  puts counter
  counter += 1
end

puts "First 5 even numbers:"
even_counter = 0
number = 2  
while even_counter < 5
  puts number
  number += 2
  even_counter += 1
end