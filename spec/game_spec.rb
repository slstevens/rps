require 'game'

describe Game do

	let(:player_one) { double :player, name: "Sean"}
	let(:player_two) { double :player, name: "Enemy"}
	let(:game) 		 { Game.new }
	
	context 'when playing' do

		before(:each) {
			game.player_one = player_one
			game.player_two = player_two
		}

		it "Player 1 chooses rock and WINS if Player 2 chooses scissors" do
			allow(player_one).to receive(:choice).and_return(:rock)
			allow(player_two).to receive(:choice).and_return(:scissors)
			expect(game.winner).to eq player_one.name 
		end
		
		it "Player 1 chooses paper and WINS if Player 2 chooses rock" do
			allow(player_one).to receive(:choice).and_return(:paper)
			allow(player_two).to receive(:choice).and_return(:rock) 
			expect(game.winner).to eq player_one.name
		end

		it "Player 1 chooses scissors and WINS if Player 2 chooses paper" do
			allow(player_one).to receive(:choice).and_return(:scissors)
			allow(player_two).to receive(:choice).and_return(:paper) 
			expect(game.winner).to eq player_one.name
		end

		it "Player 1 and Player 2 DRAW if they choose the same object" do
			allow(player_one).to receive(:choice).and_return(:scissors)
			allow(player_two).to receive(:choice).and_return(:scissors) 
			expect(game.draw?).to eq true
		end

		it "Player 1 chooses rock and LOSES if Player 2 chooses scissors" do
			allow(player_one).to receive(:choice).and_return(:rock)
			allow(player_two).to receive(:choice).and_return(:paper)
			expect(game.winner).to eq player_two.name 
		end
		
		it "Player 1 chooses paper and LOSES if Player 2 chooses rock" do
			allow(player_one).to receive(:choice).and_return(:paper)
			allow(player_two).to receive(:choice).and_return(:scissors) 
			expect(game.winner).to eq player_two.name
		end

		it "Player 1 chooses scissors and LOSES if Player 2 chooses paper" do
			allow(player_one).to receive(:choice).and_return(:scissors)
			allow(player_two).to receive(:choice).and_return(:rock) 
			expect(game.winner).to eq player_two.name
		end

	end

end