def new_rom num
  values =   [1000, 900, 500, 400, 100,90, 50, 40, 10, 9, 5, 4, 1]
  numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  romnum = ""
  i = 0
 
  while i <= 12
    while num >= values[i]
      num = num - values[i]
      romnum = romnum + numerals[i]
    end
    i = i + 1
  end
 
  romnum
end
 
puts "Enter the number you want to convert to a new roman numeral: "
 
puts new_rom(gets.chomp.to_i)