def ask_for_name
  puts "Hello, what's your name?"
  name = gets.chomp.upcase
end

name = ""
while name.empty?
  name = ask_for_name
end
name.gsub!(/[^\w], "")
an_letters = "AEFHILMNORSX"
name.each_char do |letter|
  article = an_letters.include?(letter) ? "an" : "a"
  puts "Give me #{article}... #{letter}!"
end
puts "#{name}'s just GRAND!"
