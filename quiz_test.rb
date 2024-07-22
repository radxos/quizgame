# require 'quiz'

# RSpec.describe Quiz do
#     describe "Quiz Class" do
#         it "displays the welcome message when the program starts" do
            
#         end

#         it "displays the first quiz question when the program starts" do

#         end
#     end
    
#     describe "Score Class" do
#         it "the score count increases by 1" do

#         end

#         it "displays correct answer message" do

#         end

#         it "displays the next question" do

#         end

#         it "displays the quiz end message and score after all answers submitted" do

#         end
#     end

#     describe "Questions Class" do
#         it "displays wrong answer message" do

#         end

#         it "the score count remains the same" do

#         end

#         it "displays the next question" do

#         end
#     end
# end

require_relative '../score'

RSpec.describe Score do
  describe '#initialize' do
    it 'sets the initial score to zero' do
      score = Score.new
      expect(score.score).to eq(0)
    end
  end

  describe '#increase_score' do
    it 'increases the score by 1' do
      score = Score.new
      score.increase_score
      expect(score.score).to eq(1)
    end
  end
end