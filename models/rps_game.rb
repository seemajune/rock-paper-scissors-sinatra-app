class RPSGame


  attr_accessor :play
  attr_reader :computer_play

  SCORES = {:scissors => "1", :rock => "2", :paper => "3"}

  def initialize(play)
    @play = play

  end

  class PlayTypeError < StandardError
    def raise_error
      "an error"
    end
  end

  def computer_play
    SCORES.keys.at( rand(3) )
  end


  def self.valid_play?(play)
    if play == :rock || play == :paper || play == :scissors
      true
    else
      PlayTypeError.new
    end
  end

  def tied?
    @play == @computer_play
  end

  def won?
    if (@computer_play == :rock && @play == :paper) || (@computer_play == :scissors && @play == :rock) || (@computer_play == :paper && @play == :scissors)
      true
    end
  end

  def lost?
    if !(won?)
      true
    end
  end


end


