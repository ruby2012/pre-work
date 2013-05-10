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
puts "What would #{player2} like to do?  1) hit or 2)stay"
hit_or_stay = gets.chomp

if hit_or_stay = 1
	then player1_cards << deck.pop
else
end
puts "#{player1} now has:  #{player1_cards}, for a total of #{playertotal}"

