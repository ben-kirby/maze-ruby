class Sphynx

  attr_accessor (:answer)
  def initialize (answer)
    @answer = answer.to_i
  end

  def riddle_one
    if @answer == 2
      true
    else
      false
    end
  end


  def riddle_two
    if @answer == 1
      true
    else
      false
    end
  end


  def riddle_three
    if @answer == 3
      true
    else
      false
    end
  end
end
