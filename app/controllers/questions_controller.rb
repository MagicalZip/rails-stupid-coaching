class QuestionsController < ApplicationController
  def ask
    # ask user a question
    # get the info from ask.html.erb
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @coach_answer = "Great!"
    elsif @question.include? "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
