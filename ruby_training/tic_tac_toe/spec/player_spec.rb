require "spec_helper"

module TicTacToe
  describe Player do
    
    context "#initialize" do
      it "raises an exception if initialized with empty hash" do
        expect { Player.new( {} ) }.to raise_error
      end

      it "does not raise error when initialized with valid input" do
        input = { letter: "X", name: "Stranger" }
        expect { Player.new(input) }.not_to raise_error
      end
    end

    context "#letter" do
      it "returns letter" do
        input = { letter: "X", name: "Stranger" }
        player = Player.new(input)
        expect(player.letter).to eq "X"
      end
    end

    context "#name" do
      it "returns player's name" do
        input = { letter: "X", name: "Stranger" }
        player = Player.new(input)
        expect(player.name).to eq "Stranger"
      end
    end

    context "#get_cell" do
      it "returns the cell based on the (x, y) coordinates" do
        grid = [["", "", ""], ["", "", "something"], ["", "", ""]]
        board = Board.new(grid: grid)
        expect(board.get_cell(2, 1)).to eq "something"
      end
    end 

  end
end