class Question
    attr_reader :text, :correct_answer
  
    def initialize(text, correct_answer)
      @text = text
      @correct_answer = correct_answer
    end
  end
  