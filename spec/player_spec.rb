require 'player'

describe Player do
	
	let (:player) {Player.new("Sean")}

	it "should be able to have a name" do
		expect(player.name).to eq "Sean"
	end

	it "should be able to choose an object (rock, paper, scissors)" do
		player.choose("Rock")
		expect(player.choice).to eq(:rock) 
	end	

end