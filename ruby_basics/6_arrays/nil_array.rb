puts "nil_array.rb"
number = 5
# return an array containing `nil` the given number of times
the_array = []
x = 1
puts x <= number
while x <= number
    puts "in the loop!"
    the_array.push(nil)
    x = x + 1
end
print the_array