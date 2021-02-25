dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "vancouver" => "604",
 }

 # get city names from the Hash
 def get_city_names(city_names)
    city_names.keys
 end

 # get area code based on the given hash and key
def get_area_code(city_names, key)
  city_names[key]
end

# Execution flow
loop do
  puts "Would you like to look up an area code? (Y / N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want to lookup the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection:"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The area for for #{prompt.capitalize} is #{get_area_code(dial_book, prompt)}"
  else
    puts "Sorry, we don't have #{prompt.capitalize} in our database."
  end

end
