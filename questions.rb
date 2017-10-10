class Question 

  attr_accessor :first_value, :second_value, :answer

  def initialize
    @first_value = 1 + rand(20)
    @second_value = 1 + rand(20)
    @answer = first_value + second_value
  end

end
