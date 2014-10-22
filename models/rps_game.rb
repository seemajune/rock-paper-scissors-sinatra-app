class RPSGame
  require 'pry'

  attr_accessor :play, :computer_play

  SCORES = {:scissors => "1", :rock => "2", :paper => "3"}

  def initialize(play)
    play = play.to_sym
    if self.class.valid_play?(play) 
      @play  = play
      @computer_play = SCORES.keys.sample

    else
      raise PlayTypeError
    end
  end

  class PlayTypeError < StandardError

  end
 

  def self.valid_play?(play)
    if play == :rock || play == :paper || play == :scissors
      true
    else
      false
    end
  end


  def won?
    (play == :rock && computer_play == :scissors) || (play == :paper && computer_play == :rock) || (play == :scissors && computer_play == :paper)
  end

  def lost?
    (play == :scissors && computer_play == :rock) || (play == :rock && computer_play == :paper) || (play == :paper && computer_play == :scissors)
  end

  def tied?
    !(won?) && !(lost?)
  end

end


