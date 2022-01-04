class Question
  attr_reader :num1, :num2
  def initialize
    @num1 = rand(0..20)
    @num2 = rand(0..20)
  end

  def generate_question
    question = "What does #{num1} plus #{num2} equals?"
    puts question
  end

  def answer(player_input)
    actual_answer = @num1 + @num2
    given_answer = player_input
    return true if actual_answer == given_answer
  end

end