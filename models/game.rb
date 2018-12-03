class Game

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end

  def win_loss_or_draw(choice1, choice2)
    case choice1
    when 'rock'
      if choice2 == 'scissors'
        return "#{choice1} beats #{choice2}, so Player 1 wins!"
        elsif
        choice2 == 'paper'
        return "#{choice2} beats #{choice1}, so Player 2 wins!"
      else return 'It is a draw!'
      end


    when 'scissors'
      if choice2 == 'paper'
        return "#{choice1} beats #{choice2}, so Player 1 wins!"
      elsif
        choice2 == 'rock'
        return "#{choice2} beats #{choice1}, so Player 2 wins!"
      else return 'It is a draw!'
      end

    when 'paper'
      if choice2 == 'rock'
        return "#{choice1} beats #{choice2}, so Player 1 wins!"
      elsif
        choice2 == 'scissors'
        return "#{choice2} beats #{choice1}, so Player 2 wins!"
      else return "It is a draw!"
      end

    end
  end
end
