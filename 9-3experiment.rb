
def ask question
	while true
	puts question
	reply = gets.chomp.downcase
	if (reply == 'yes' || == 'no')
		if reply == 'yes'
			answer = true
		else
			answer = false
		end
		break
	else
		puts 'Please answer "yes" or "yes" .'
	
	end
end
answer
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'do you like eating chimichangas'
ask 'do you like eating sopapillas'

puts 'Debriefing'
puts 'thank you for'
puts
puts wets_bed	