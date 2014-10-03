class Game 

	attr_accessor :player_one, :player_two

	def initialize
		@player_one = nil
		@player_two = nil
	end
	
	def winner
		return player_one.name if player_one_wins?
		player_two.name
	end

	def player_one_wins?
		(player_one.choice == :rock && player_two.choice == :scissors)||
		(player_one.choice == :paper && player_two.choice == :rock)||
		(player_one.choice == :scissors && player_two.choice == :paper)
	end

	def draw?
		player_one.choice === player_two.choice
	end
	
end
