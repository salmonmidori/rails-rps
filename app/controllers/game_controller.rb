class GameController < ApplicationController
  
  def show_rules
    render({ :template => "game_templates/rules"})
  end

  def play_game
    @comp_move = ["rock", "paper", "scissors"].sample
    @user_move = params["user_input"]
    
    if @comp_move == @user_move
      @outcome = "tied"
    elsif (@comp_move == "rock" && @user_move == "paper") | (@comp_move == "paper" && @user_move == "scissors") | (@comp_move == "scissors" && @user_move == "rock")
      @outcome = "won"
    else
      @outcome = "lost"
    end

    render({ :template => "game_templates/play"})
  end
  
end
