# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.
class Game

  player1 = Player.new
  player2 = Player.new

  def play_the_game
  end

  def 
end

class Player

  def initialize
    @dice_set = DiceSet.new
    @score = Score.new
  end

  def points(roll = true)
    if roll
      @dice_set = @dice_set.roll(5)
      if @score > 0 && @score.score(@dice_set.result) != 0
        @score += @score.score(@dice_set.result)
      end
      return @score = 0
    end
    return @score
  end

end

class DiceSet

  def initialize
    @seed = Random.new
    @number_of_roll = 0
    @result = []
  end

  def roll(number_of_dice)
    @result = []
    number_of_dice.times do
      @result.push(@seed.rand(1..6))
    end
    @result
  end

  def values
    @result
  end

end

class Score

  def search_tris(dice)
    (1..6).each do |number|
      occurencies = dice.count(number)
      return number if occurencies >= 3
    end
    return nil
  end

  def remove_tris(dice, tris)
    3.times do
      index = dice.find_index(tris)
      dice.delete_at(index)
    end
    return dice
  end

  def score(dice)
    # You need to write this method
    punteggio = 0
    tris = search_tris(dice)
    punteggio += 1000 if tris == 1
    punteggio += tris*100 if (2..6).include?(tris)
    dice = remove_tris(dice, tris) if tris
    dice.each do |die|
      punteggio += 100 if die == 1
      punteggio += 50 if die == 5
    end
    return punteggio
  end

end
