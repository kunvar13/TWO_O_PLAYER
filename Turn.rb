require "./Question.rb"
 class Turn
   def initialize(current_player, other_player)
     @current_player = current_player
     @other_player = other_player
   end

   def new_question
     question = Question.new()
     question.generate_question

     player_input = gets.chomp.to_i

     result = question.answer(player_input)

     if result
       puts "Correct!" 
     else
       puts "Incorrect!"
       @current_player.update_lives
     end

     @current_player.output_score
     print "vs"
     @other_player.output_score
   end

   def switch_players()
     player_1 = @current_player
     player_2 = @other_player

     @current_player = player_2
     @other_player = player_1
   end

 end