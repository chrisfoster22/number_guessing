

# def answer_prompt
#   if guess > number
#     puts "My number is less than that number"
#   elsif guess < number
#     puts "My number is greater than that number"
#   elsif guess == guess
#     puts "You okay?"
#   else
#     puts "That's my number!"
#   end
# end

# number = number #computer picks a number
# puts "Pick a number between 1 and 100"
# guess = gets.chomp.to_i
#
# remaining_guesses = 5
#   while remaining_guesses >= 0
#     if guess > number
#       puts "My number is less than that number"
#     elsif guess < number
#       puts "My number is greater than that number"
#     elsif guess == guess
#       puts "You okay?"
#     end
#     remaining_guesses = remaining_guesses - 1
#   end
# puts "You have won!"

number = rand(100)
guess_count = 5
guess = 1000

while guess_count > 0 && guess != number
  puts "Pick a number between 1 and 100"
  guess = gets.chomp.to_i
  if guess < 0 || guess > 100
    puts "Are you feeling alright?"
  elsif guess < number
    puts "My number is greater than that"
  elsif guess > number
    puts "My number is less than that"
  end
  guess_count = guess_count - 1
end
if guess_count == 0
  puts "You Lose! My number was #{number}!"
elsif guess_count == 10
elsif guess = number
   puts "You win!"
end
