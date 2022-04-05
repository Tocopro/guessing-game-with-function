



# guess game function
def guessCounter(guessCount)
  guessCount += 1
  puts "You have #{guessCount} guesses left"
  guessCount
end
secretNumber = rand 1..10
guessCount = 0
guess = false

puts "Welcome to secret number guessing game"

while guess != secretNumber
  # invalid guess count
  if guessCount >= 5
    puts "Game End exceedded the number of Guesses!!!!"
    puts "The Secret Number was #{secretNumber}"
    break
    # valid number of guesses
  else
    begin
      guess = Integer gets.chomp
      if guess < 1 || guess > 10
        puts "Guess out of bounds"
      else
        # too high
        if guess > secretNumber
          puts "Guess is too High"
          guessCount = guessCounter guessCount
          # too low
        elsif guess < secretNumber
          puts "Guess a little higher"
          guessCount = guessCounter guessCount
          # correct guess
        else
          puts "Congrats you won. The Correct Number was #{guess} == #{secretNumber}"
        end
      end
    rescue ArgumentError
      puts "Guess input invalid"
      guessCount += 0
    end
  end
end
