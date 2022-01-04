require "./Player.rb"
 require "./Turn.rb"

 class Game
   def initialize
     @player_1 = Player.new("P1")
     @player_2 = Player.new("P2")
     @turn = Turn.new(@player_1, @player_2)

   end

   def play
     while @player_1.lives > 0 && @player_2.lives > 0
       puts "---New Turn---"
       @turn.new_question()
       @turn.switch_players()
     end

     puts "---Game Over---"
   end


 end