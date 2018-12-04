require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../models/game')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new('choice1', 'choice2')
  end

  def test_check_rock_vs_scissors
    assert_equal('rock beats scissors, so Player 1 wins!', @game1.win_loss_or_draw('rock', 'scissors'))
  end

  def test_check_rock_vs_paper
    assert_equal('paper beats rock, so Player 2 wins!', @game1.win_loss_or_draw('rock', 'paper'))
  end

  def test_check_rock_vs_rock
    assert_equal('It is a draw!', @game1.win_loss_or_draw('rock', 'rock'))
  end

  def test_check_scissors_vs_paper
    assert_equal('scissors beats paper, so Player 1 wins!', @game1.win_loss_or_draw('scissors', 'paper'))
  end

  def test_check_scissors_vs_rock
    assert_equal('rock beats scissors, so Player 2 wins!', @game1.win_loss_or_draw('scissors', 'rock'))
  end

  def test_check_scissors_vs_scissors
    assert_equal('It is a draw!', @game1.win_loss_or_draw('scissors', 'scissors'))
  end

  def test_check_paper_vs_rock
    assert_equal('paper beats rock, so Player 1 wins!', @game1.win_loss_or_draw('paper', 'rock'))
  end

  def test_check_paper_vs_scissors
    assert_equal('scissors beats paper, so Player 2 wins!', @game1.win_loss_or_draw('paper', 'scissors'))
  end

  def test_check_paper_vs_paper
    assert_equal('It is a draw!', @game1.win_loss_or_draw('paper', 'paper'))
  end



end
