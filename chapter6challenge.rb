puts 'What is your First name?'
name1 = gets.chomp
puts 'What is your middle name?'
name2 = gets.chomp
puts 'What is your last name'
name3 = gets.chomp
puts 'Hello, ' + name1 +' ' + name2 +' ' + name3 +'.'
var1 = name1.length.to_i 
var2 = name2.length.to_i 
var3 = name3.length.to_i
var4 = var1 + var2 + var3
puts 'Did you know there are ' + var4.to_s + ' characters in your name?'
