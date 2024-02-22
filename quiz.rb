class Quiz
    def initialize(questions)
      @questions = questions
      @current_question_index = 0
    end
  
    def current_question
      @questions[@current_question_index]
    end
  
    def next_question
      @current_question_index += 1
    end
  end
  