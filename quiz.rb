class Quiz
  def initialize
    puts "#{'*' * 5} Welcome to Rad's Quiz Game! #{'*' * 5}"
    puts "\n"

    puts "This Quiz has 8 Questions"
    puts "\n"

    score = Score.new
    puts "Current Score: #{score.score}"
    puts "\n"

    questions = Questions.new
    @questions = questions.questions

    display_questions
  end

  def display_questions
    score = Score.new
    @questions.each do |question, answer|
      puts "Q: #{question}"
      user_answer = gets.chomp
      
      if user_answer.downcase == answer.downcase
        puts "\nCorrect!"
        score.increase_score  # Increase score on correct answer
      else
        puts "\nIncorrect. The correct answer is: #{answer}"
      end
      
      puts "Current Score: #{score.score}"
      puts "\n"
    end

    puts "End of Quiz! Thank you for playing! You scored #{score.score} out of 8."
  end
end

class Score
  def initialize
    @score = 0
  end

  def increase_score
    @score += 1
  end

  def score
    @score
  end
end

class Questions
  attr_reader :questions

  def initialize
    @questions = {
      '1. Who wrote the novel "1984"?': 'George Orwell',
      '2. What is the capital city of Australia?': 'Canberra',
      '3. What is the chemical symbol for Gold?': 'Au',
      '4. In what year was the first iPhone released?': '2007',
      '5. What is the tallest mountain in the world?': 'Mount Everest',
      '6. Who painted the "Mona Lisa"?': 'Leonardo da Vinci',
      '7. Which planet is known as the "Red Planet"?': 'Mars',
      '8. Who discovered electricity?': 'Benjamin Franklin'
    }
  end
end

quiz = Quiz.new
