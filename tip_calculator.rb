puts "How much is the bill?"
bill = gets.to_f #"gets" gets information from user and returns it as a string.
puts "The bill is $#{bill}"

tip_amount = 0.20
tip = bill * tip_amount
total = sprintf("%.2f", bill + tip)

puts "The total is $#{total}"
