class Quiz
    puts "#{"*" * 5} Welcome to Rad's Quiz Game! #{"*" * 5}"
    puts "\n"

end

class Score
    def initialize
        @score = 0
    end

    def increase_score
        score += 1
    end

    def decrease_score
        score -= 1
    end
end

class Questions
    puts "Q: #{"Question Here"}"
    puts "\n"
end

