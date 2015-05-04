require 'date'

def ask_for_name
  name = ""
  while name.empty?
    puts "Hello, what's your name?"
    name = gets.chomp.upcase
  end
  name
end

name = ask_for_name
name.gsub!(/[^\w]/, "")
an_letters = "AEFHILMNORSX"
name.each_char do |letter|
  article = an_letters.include?(letter) ? "an" : "a"
  puts "Give me #{article}... #{letter}!"
end
puts "#{name}'s just GRAND!"

#Birthday Tracker!

puts "Whatup #{name}? What's your Birthday(m-d-y)?"
birthday = Date.strptime(gets.chomp, '%m-%d-%Y').yday
now = DateTime.now.yday
dif = birthday - now - 1
if dif < 0 && dif > -180
  puts "Great! Your Birthday was #{dif} days ago!"
elsif dif < -180
  puts "Great! Your Birthday is #{365 - dif} days from now!"
else
  puts "Your Birthday is in #{dif} days! Happy Birthday!"
end
