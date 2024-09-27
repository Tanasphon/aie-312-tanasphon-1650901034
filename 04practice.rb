# Write a method that takes a block and prints "Hello, World!"

# Write a method that takes a block and prints numbers 1 to 5
# count_numbers { |num| puts num }

# Write a method that uses yield with a block that accepts two parameters
# multiply { |a, b| puts a * b }

# Write a method that checks if a block is provided and executes it
# greet # Output: No block given
# greet { puts "Hello, World!" } # Output: Hello, World!
# Method that takes a block and prints "Hello, World!"
def greet_world
    yield if block_given?
    puts "Hello, World!"
  end
  
  
  def count_numbers
    (1..5).each { |num| yield(num) }
  end
  
  
  def multiply
    yield(2, 3) if block_given?  
  end
  
  
  def greet
    if block_given?
      yield
    else
      puts "No block given"
    end
  end
  
  
  greet_world { puts "This will print before Hello, World!" }
  
  count_numbers { |num| puts num }
  
  multiply { |a, b| puts a * b }
  
  greet              
  greet { puts "Hello, World!" } 
  