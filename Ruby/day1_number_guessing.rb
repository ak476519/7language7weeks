def guess_number(a)
  puts 'Make a guess!'
  STDOUT.flush
  guess = gets.chomp.to_i
  if guess > a
    puts 'Too high!'
    false
  elsif guess < a
    puts 'Too low!'
    false
  else
    true
  end
end

a = rand(100)
i = 20
while i > 0
  result = guess_number(a)
  i -= 1
  if result
    break
  end
end

if i == 0
  puts "Game over! The number is #{a}."
else
  puts "You win! You made it after #{20-i} attempts."
end
