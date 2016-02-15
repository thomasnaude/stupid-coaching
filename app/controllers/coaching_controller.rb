class CoachingController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == your_message.upcase
      if your_message == "I AM GOING TO WORK RIGHT NOW!"
        return ""
      else your_message != "I AM GOING TO WORK RIGHT NOW!"
        return "I can feel your motivation! #{coach_answer(your_message)}"
      end
    else
      return coach_answer(your_message)
    end
    # TODO: return coach answer to your_message, with additional custom rules of yours!
  end
end
