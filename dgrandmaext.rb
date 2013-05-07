while true
input = gets.chomp
	
	if input == 'BYE '*3
		puts 'SEE YOU LATER!'			
	  break
	end
	
	if  input == input.upcase
	    puts ('No, not since ' + rand(1930...1950).to_s + '!')

	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	
end
