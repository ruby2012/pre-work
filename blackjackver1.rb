def calculate_total(cards)
  arr = cards.map{|e| e[1]}

  total = 0
  arr.each do |value|
  	 if value == "A"
  	 	total += 11
  	 elsif value.to_i == 0 
  	 	total += 10
  	 else
  	 	total += value.to_i
  	 end
  end
  arr.select{|e| e == "A"}.count.times do
  	total -= 10 if total > 21
  end

  total
end

puts "Let's Play Blackjack"

puts "What is your name?"
player_name = gets.chomp

player1 = player_name
player2 = "Dealer"


csuit = ['H', 'D', 'S', 'C']
cards = ['1','2','3','4','5','6','7','8','9','10','J','Q','K','A']

deck = csuit.product(cards)
deck.shuffle!

deck.pop

player1_cards = []
player2_cards = []

player1_cards << deck.pop
player2_cards << deck.pop
player1_cards << deck.pop
player2_cards << deck.pop

dealertotal = calculate_total(player2_cards)
playertotal = calculate_total(player1_cards)

puts "#{player2} has: #{player2_cards[0]} and #{player2_cards[1]}, for total of #{dealertotal}"
puts "#{player1} has: #{player1_cards[0]} and #{player1_cards[1]}, for a total of #{playertotal}"
puts ""

if dealertotal == 21 
	puts "Congratulations #{player2} has won"
	exit
end

if playertotal == 21
	puts "Congratulations #{player1}, you have won!"
	exit
end

while playertotal < 21
  puts "What would #{player1} like to do?  1) hit or 2)stay"
	hit_or_stay = gets.chomp
	if !['1', '2'].include?(hit_or_stay)
		puts "Error:  you must enter 1 or 2"
		next
	end
  if hit_or_stay == "2"
  	puts "You have chosen to stay your total is #{playertotal}"
   	break
   end

   new_card = deck.pop
   puts "Dealing card to #{player1}: #{new_card}"
	 player1_cards << new_card 
	 playertotal = calculate_total(player1_cards)
	 puts "#{player1} your total is #{playertotal}"
end

puts "It is now #{player2}'s turn!"
	
while dealertotal <= 21 
  if playertotal > 21
    puts "#{player1} you have busted #{player2} has already won"
    exit
  break	
  elsif dealertotal <= 17
	  puts "Dealing #{player2} cards!"
	  new_card = deck.pop
	  player2_cards << new_card
	  dealertotal = calculate_total(player2_cards)
    puts "#{player2} total is #{dealertotal}"
  elsif dealertotal >= 17
	  puts "#{player2}'s total is #{dealertotal}"	
	break
	end
end

if playertotal > 21 || dealertotal > 21
	puts "There are no winners today"
  exit
end

while playertotal <= 21 || dealertotal <= 21
	if playertotal > dealertotal || playertotal <= 21
		puts "#{player1} YOU HAVE WON!!"
	elsif playertotal < dealertotal 
		puts "#{player1} has loss on the bright side #{player2} wins!"
	elsif playertotal > 21 || dealertotal > 21
	  puts "There are no winners today!!"		
	elsif player1 = player2
		puts "Looks like a draw #{player1}"
  elsif dealertotal > playertotal || dealertotal <= 21
	  puts "#{player2}, has won!"
	end

	break
end





