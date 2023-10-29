class RpsController < ApplicationController
  def rock
    @ours = "rock"
    @theirs = ["rock", "paper", "scissors"].sample
    @result = rock_paper_scissors(@ours, @theirs)
  end

  def paper
    @ours = "paper"
    @theirs = ["rock", "paper", "scissors"].sample
    @result = rock_paper_scissors(@ours, @theirs)
  end

  def scissors
    @ours = "scissors"
    @theirs = ["rock", "paper", "scissors"].sample
    @result = rock_paper_scissors(@ours, @theirs)
  end

  private

  def rock_paper_scissors(ours, theirs)
    result = case [ours, theirs]
             when ["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]
               "We won!"
             when ["rock", "paper"], ["paper", "scissors"], ["scissors", "rock"]
               "We lost!"
             else
               "We tied!"
             end
    return result
  end

end
