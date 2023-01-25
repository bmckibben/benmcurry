class PBScores
  
  def perform

    past_draws = Draw.order(draw_date: :desc).limit(100)
    Score.update(score: 0)
    priority = 100
    past_draws.each do |draw|
      ball = Scores.where(ball: draw.b1)
      ball.score = ball.score + priority
      ball.save
      ball = Scores.where(ball: draw.b2)
      ball.score = ball.score + priority
      ball.save
      ball = Scores.where(ball: draw.b3)
      ball.score = ball.score + priority
      ball.save
      ball = Scores.where(ball: draw.b4)
      ball.score = ball.score + priority 
      ball.save     
      ball = Scores.where(ball: draw.b5)
      ball.score = ball.score + priority
      ball.save
      ball = Scores.where(ball: draw.b6
      ball.score = ball.score + priority 
      ball.save
      priority =- 1
    end         
  end

end