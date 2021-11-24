require 'nokogiri'
require 'open-uri'

html = URI.open("https://joedietrich.dev/")
doc = Nokogiri::HTML(html)
items = doc.css ".navbar-list-item"
items.each {|item| puts item.text.strip}
