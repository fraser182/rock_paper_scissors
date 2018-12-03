require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../models/game')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new('person1', 'person2')
  end

  def test_check_rock_vs_scissors
    assert_equal('rock beats scissors, so Player 1 wins!', @game1.check_win('rock', 'scissors'))
  end

  def test_check_rock_vs_paper
    assert_equal('paper beats rock, so Player 2 wins!', @game1.check_win('rock', 'paper'))
  end

  def test_check_rock_vs_rock
    assert_equal('It is a draw!', @game1.check_win('rock', 'rock'))
  end

  def test_check_scissors_vs_paper
    assert_equal('scissors beats paper, so Player 1 wins!', @game1.check_win('scissors', 'paper'))
  end

  def test_check_scissors_vs_rock
    assert_equal('rock beats scissors, so Player 2 wins!', @game1.check_win('scissors', 'rock'))
  end

  def test_check_scissors_vs_scissors
    assert_equal('It is a draw!', @game1.check_win('scissors', 'scissors'))
  end

  def test_check_paper_vs_rock
    assert_equal('paper beats rock, so Player 1 wins!', @game1.check_win('paper', 'rock'))
  end

  def test_check_paper_vs_scissors
    assert_equal('scissors beats paper, so Player 2 wins!', @game1.check_win('paper', 'scissors'))
  end

  def test_check_paper_vs_paper
    assert_equal('It is a draw!', @game1.check_win('paper', 'paper'))
  end



end
