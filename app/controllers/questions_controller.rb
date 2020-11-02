class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer == "I am going to work"
      @response = "Great!"
    elsif @answer.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
    @response
  end
end
