# scraping_etsy.rb
require "open-uri"
require "nokogiri"
require_relative 'shop.rb'
search_array = []

def ideas(user_list)
  puts "What are you searching on Etsy?"
  article = gets.chomp

# 1. We get the HTML file thanks to open-uri
  file = open("https://www.etsy.com/search?q=#{article}")

# 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(file)

  doc.search(".n-listing-card__info").each do |card|
    title = card.search(".card-meta-row").text.strip[0..15]
  end
  list(user_list)
end


