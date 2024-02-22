require_relative 'player'
require_relative 'question'
require_relative 'quiz'

# Create players
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# Create questions
questions = [
  Question.new("What is 5 + 3?", 8),
  Question.new("What is 2 * 6?", 12),
]

# Create a quiz
quiz = Quiz.new(questions)

# Game loop
loop do
  # Display current question to players
puts "#{quiz.current_question.text}"
player_answer = gets.chomp.to_i

# Check answer and update score
if player_answer == quiz.current_question.correct_answer
  puts "Correct! Well done."
  player1.increase_score if player1 == quiz.current_question_index % 2
  player2.increase_score if player2 == quiz.current_question_index % 2
else
  puts "Incorrect! The correct answer is #{quiz.current_question.correct_answer}."
end


  # Display scores
  puts "#{player1.name}: #{player1.score} | #{player2.name}: #{player2.score}"

  # Move to the next question
  quiz.next_question

  # Break the loop if all questions are answered
  break if quiz.current_question_index >= questions.length
end
