=begin

1) Print Welcome
2) Define your store(whatiterms are for sale?)
3) Print elements
4) Receive items from the user (shopping)
5) Add to users cart
6) Print the bill (checkout)

=end

puts "Welcome to Adnan's shop of artisanal perfumes"

PERFUMES = {
  dark: {price: 13.50, stock:6},
  misty: {price: 12.00, stock:2},
  rainbow: {price:12.00, stock:9}
}

PERFUMES.each do |perfume, value|
    puts "Perfumes are #{perfume.capitalize} £#{value[:price]}"
end

answer = ""
quantity = 0
CART = {}

until answer == "pay"
  puts "Which item would you like or 'pay'?"
  answer = gets.chomp.downcase
    if PERFUMES.key?(answer.to_sym)
      puts "How many do you want?"
      quantity = gets.chomp.to_i
        if quantity <= PERFUMES[answer.to_sym][:stock]
          CART[answer.to_sym] = quantity
          PERFUMES[answer.to_sym][:stock] -= quantity
        else
          "#{answer} not available"
        end
    end
end

sum = 0

puts"-"*50
puts"-"*50
puts "You bought"
CART.each do|answer,quantity|
  puts "#{answer.capitalize} : #{quantity}"
end

puts "\nSTOCK LEFT"

PERFUMES.each do |perfume,value|
  puts "#{perfume.capitalize} : #{value[:stock]}"
end

puts "-"*50

CART.each do |perfume,value|
  sum += value * PERFUMES[perfume][:price]
end

puts"-"*50

puts "Your total is £#{sum}"

puts"-"*50
