def greeting
  puts "Hello! Pick a number between 1 and 100. You have five tries."
end

def get_number_from_user
  gets.chomp.to_i
end

def remaining_guesses(count)
  if count == 1
    puts "You only have 1 try remaining!"
  else
    puts "You have #{count} tries remaining!"
  end
end

number = rand(100)
count = 5
game_continues = true
guess_array=[]

greeting
while count > 0 && game_continues
  guess = get_number_from_user
  if guess_array.include? guess
    puts "What kind of guess is that?"
  elsif guess < number
    puts "My number is greater than that."
  elsif guess > number
    puts "My number is less than that."
  end
  if guess != number
    count = count - 1
    remaining_guesses(count)
  else game_continues = false
  end
  guess_array << guess
end
if count == 0
  puts "You Lose! My number was #{number}!"
elsif guess = number
  puts "You win!"
end
