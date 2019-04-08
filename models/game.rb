class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end




  def match
    if (@hand1 == "rock" && @hand2 == "scissors") ||
      (@hand1 == "scissors" && @hand2 == "paper") ||
      (@hand1 == "paper" && @hand2 == "rock")
      return "Player one wins by using #{@hand1}! Excellent!"
    elsif
      (@hand1 == @hand2)
      return "Its a draw. Both players chose #{@hand1}."
    elsif
      (@hand1 == "scissors" && @hand2 == "rock") ||
        (@hand1 == "paper" && @hand2 == "scissors") ||
        (@hand1 == "rock" && @hand2 == "paper")
      return "Player one lost. Imagine choosing #{@hand1}... What a loser!"
    else
      return "You need to select rock, paper or scissors."
    end
  end

end
