class Computer

    WEAPONS = [:rock, :paper, :scissors]

  def computers_turn
    @computer_weapon = WEAPONS.sample
  end

  def computer_choice
    @computer_weapon
  end

end