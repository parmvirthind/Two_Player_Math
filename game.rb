class Game

    attr_accessor :first_value

  def initialize
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
    @current_player = @players[0]

    while @players[0].lives > 0 && @players[1].lives > 0 do
      puts "*_.-._* NEW TURN *_.-._*"
      @current_question = Question.new
      @current_turn = Turn.new(@current_player, @current_question)
      @current_turn.ask_question
      @current_turn.check
      swapUser
      puts "#{@players[0].name}: #{@players[0].lives}/3 vs. #{@players[1].name}: #{@players[1].lives}/3 "
    end

    puts "xxxxxxxxx GAME OVER xxxxxxxxx"

  end

  def swapUser
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

end
