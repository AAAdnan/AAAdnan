=begin will have all the logic to talk with the user

Define the user_list as a empty Hash

#Pseudo - code:
1. Welcome
2. Display menu (list/add/delete/mark) - begin of loop
3. Get user action
4. Perform the right action (if elsif case)
5. For each action call a method from shop

=end

require_relative 'shop'
require_relative 'scraping_etsy'
require "open-uri"
require "nokogiri"

user_list = {
  Ruby_Book: false,
  MacBook: true,
  Sockets: true,
}



puts "Welcome to your Christmas giftlist"

list_choice = 'nil'
add = 'nil'

until list_choice == "quit"
  puts "\nPlease choose an action [ list | add | mark | copy| ideas| delete | quit ]"
  list_choice = gets.chomp
    if list_choice == "list"
      list(user_list)
    elsif list_choice == "add"
      add_method(user_list)
    elsif list_choice == "mark"
      mark(user_list)
    elsif list_choice == "copy"
      copy(user_list)
    elsif list_choice == "ideas"
      ideas(user_list)
    elsif list_choice == "delete"
      delete(user_list)
    elsif list_choice == "quit"
      puts "\nGood Bye and Merry Christmas!"
    else
      "error"
    end
end
