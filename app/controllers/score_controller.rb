class ScoreController < ApplicationController
  def index
  	PBScores.new.perform
  	@scores = Score.all.order(weight: :desc)
  end
end
