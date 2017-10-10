class Game

    attr_accessor :first_value

  def initialize
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
    @current_player = @players[0]
    @current_question = Question.new
    @current_turn = Turn.new(@current_player, @current_question)

    @current_turn.ask_question
    @current_turn.check
    swapUser
    puts @current_player.name

  end

  def swapUser
    if @current_player = @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

end
