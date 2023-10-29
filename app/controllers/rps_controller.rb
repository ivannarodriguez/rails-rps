class RpsController < ApplicationController
  def rules
    render({:template => "game_templates/homepage"})
  end

  def rock
    @ours = "rock"
    @theirs = ["rock", "paper", "scissors"].sample
    @result = rock_paper_scissors(@ours, @theirs)

    render({:template => "game_templates/outcome"})
  end

  def paper
    @ours = "paper"
    @theirs = ["rock", "paper", "scissors"].sample
    @result = rock_paper_scissors(@ours, @theirs)

    render({:template => "game_templates/outcome"})
  end

  def scissors
    @ours = "scissors"
    @theirs = ["rock", "paper", "scissors"].sample
    @result = rock_paper_scissors(@ours, @theirs)

    render({:template => "game_templates/outcome"})
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
