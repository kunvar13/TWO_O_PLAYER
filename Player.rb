class Player 
  attr_reader :name
  attr_accessor :lives

  def initialize (name)
    @lives = 3
    @name = name
  end

  def update_lives
    @lives -= 1
  end

  def output_score
    puts " #{name}: #{lives}/3"
  end
end