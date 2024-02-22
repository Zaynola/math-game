class Player
    attr_accessor :name, :score
  
    def initialize(name)
      @name = name
      @score = 0
    end
  
    def increase_score
      @score += 1
    end
  end
  