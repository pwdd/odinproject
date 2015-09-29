module TicTacToe
  class Player
    attr_reader :letter, :name

    def initialize(input)
      @letter = input.fetch(:letter)
      @name = input.fetch(:name)
    end
  end
end