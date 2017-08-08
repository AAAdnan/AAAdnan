require 'date'

def myage
  puts "Birthday?"
  puts "Year: "
  year = gets.chomp.to_i
  puts "Month: "
  month = gets.chomp.to_i
  puts "Day:"
  day = gets.chomp.to_i

  birthday = Date.new(year,month,day)
end

p my age
