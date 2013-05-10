

puts 'Type as many words as you want and see if I can sort them!'
input = []

while true 
	input1 = gets.chomp
	if input1 == ''
	  break
	end
input.push input1 
end

puts input.sort

	 

