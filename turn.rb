class Turn

  attr_accessor :current_player, :current_question

  def initialize(current_player, current_question)
    @current_player = current_player
    @current_question = current_question
  end

  def ask_question
    puts "#{@current_player.name}: What does #{@current_question.first_value} plus #{@current_question.second_value} equal?"
    @answer = @current_player.get_input
  end

  def check
    if @current_question.answer == @answer
      puts "#{@current_player.name}: YES! You are correct"
    else 
      puts "#{@current_player.name}: Seriously? NO!"
      @current_player.lose_life
    end
  end

end
