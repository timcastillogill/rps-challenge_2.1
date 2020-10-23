require_relative 'computer'

class Game

  attr_reader :name, :weapon

  def return_user_choice
    @user_weapon
  end

  def return_computer_choice
    @computer_weapon
  end

  def game_result
    case
    when return_computer_choice == return_user_choice
      @result = 'This round was a draw!'
    when (return_computer_choice == :rock) && (return_user_choice == :paper)
      @result = "You won, congrats!"
    when (return_computer_choice == :paper) && (return_user_choice == :scissors)
      @result = "You won, congrats!"
    when (return_computer_choice == :scissors) && (return_user_choice == :rock)
      @result = "You won, congrats!"
    when (return_computer_choice == :rock) && (return_user_choice == :scissors)
      @result = "You lose and the computer smiles :) and pities you"
    when (return_computer_choice == :paper) && (return_user_choice == :rock)
      @result = "You lose and the computer smiles :) and pities you"
    when (return_computer_choice == :scissors) && (return_user_choice == :paper)
      @result = "You lose and the computer smiles :) and pities you"
    else
      @result = "I have not seen this before! Try again."
    end
  end
end