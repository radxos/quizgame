class Quiz
  def initialize
    puts "#{'*' * 5} Welcome to Rad's Quiz Game! #{'*' * 5}"
    puts "\n"
  end
end

class Score
  def initialize
    @score = 0
  end

  def increase_score
    @score += 1
  end

  def decrease_score
    @score -= 1
  end

  def score
    @score
  end
end

class Questions
  def initialize(question)
    @question = question
  end
  
  def display_question
    puts "Q: #{@question}"
    puts "\n"
  end
end

quiz = Quiz.new

score = Score.new
score.increase_score
puts "Current Score: #{score.score}"

question = Questions.new("What is the capital of France?")
question.display_question