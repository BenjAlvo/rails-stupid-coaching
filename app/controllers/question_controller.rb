class QuestionController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    if params[:answer].upcase.include?("I AM GOING TO WORK RIGHT NOW!")
      @result = "good, move your ass"
    elsif params[:answer].include?("?")
      @result = "Silly question, get dressed and go to work!"
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
