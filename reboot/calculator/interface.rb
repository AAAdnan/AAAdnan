# interface.rb

# Pseudo-code (what are the steps in plain english):
require_relative 'calculator'
# 1. Say hello to the user
puts "Hello, Welcome to Calculator"
# 2. Ask user for the first number
puts "Enter a first number"
# 3. Get user answer
first_number = gets.chomp.to_i
# 4. Ask user for second number
puts "Enter a second number"
second_number = gets.chomp.to_f
# 5. Ask user for operation add, subtract, multiply, divide
puts "Choose operation [+][-][x][/]"
#6 Store user response
operation = gets.chomp

result = calculator(operation, first_number, second_number)


#7 Perform calcuation depending on user response

# 6.
