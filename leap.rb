puts 'What year would you like to start with?'
year1 = gets.chomp.to_i
puts 'What year would you like to end with'
year2 = gets.chomp.to_i
puts "These are leap years"
year = year1

while year <= year2
	if year %4 == 0
		if year %100 !=0 || year %400 == 0
			puts year
		end
	end

year = year + 1

end

