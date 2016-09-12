#def user
#	puts "Let\'s play! Choose between Rock, Paper and Scissors!"
#	choice = gets.chomp.downcase
#end

def computer
	computer = rand(3)
	if computer <= 1
		computer = "rock"
	elsif computer > 1 && computer <= 2 
		computer = "paper"
	else computer > 2 && computer <= 3
		computer = "scissors"
	end
	puts "I chose #{computer}"
end

def startgame(computer, choice)
	if computer == "rock" && choice == "scissors"
		puts "You chose scissors and the computer rock"
		puts "Sorry, I won!"
	elsif computer == "scissors" && choice == "rock"
		puts "You chose rock and the computer scissors"
		puts "Oh, you won!"	
	elsif computer == "paper" && choice == "rock"
		puts "You chose rock and the computer paper"
		puts "Sorry, I won!"
	elsif computer == "rock" && choice == "paper"
		puts "You chose paper and the computer rock"
		puts "Oh, you won!"
	elsif computer == "scissors" && choice == "paper"
		puts "You chose paper and the computer scissors"
		puts "Sorry, I won!"
	elsif computer == "paper" && choice == "scissors"
		puts "You chose scissors and the computer paper"
		puts "Oh, you won!"
	elsif computer == "paper" && choice == "paper" || computer == "scissors" && choice == "scissors" || computer == "rock" && choice == "rock"
			puts "It\'s a tie! You two chose the same"
	else 
		puts "oh no, an error occured!"
	end
end

loop do
	puts "Let\'s play! Choose between Rock, Paper and Scissors!"
	choice = gets.chomp.downcase
	#user
	computer
	startgame(computer, choice)
	puts "Do you want to continue? Type Yes or No"
	answer = gets.chomp.downcase
	if answer == "no"
		puts "Bye bye"
		break 
	end
	puts "Let's play!"
end
