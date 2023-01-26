class PBScores
  
  def perform

    population = 100
    balls_used = 69

    past_draws = Draw.order(draw_date: :desc).limit(population)

    #refresh scores
    Score.delete_all    
    (1..balls_used).step(1) do |i|
      Score.create(ball: i, weight: 0)
    end

    past_draws.each do |draw|
      ball = Score.where(ball: draw.b1).first
      ball.weight = ball.weight + population
      ball.save
      ball = Score.where(ball: draw.b2).first
      ball.weight = ball.weight + population
      ball.save
      ball = Score.where(ball: draw.b3).first
      ball.weight = ball.weight + population
      ball.save
      ball = Score.where(ball: draw.b4).first
      ball.weight = ball.weight + population 
      ball.save     
      ball = Score.where(ball: draw.b5).first
      ball.weight = ball.weight + population
      ball.save
      # ball = Score.where(ball: draw.powerball).first
      # ball.weight = ball.weight + population 
      # ball.save
      population -= 1
      #binding.pry
    end         
  end

end