class AnswersController < ApplicationController

  def answer
    @user_question = params[:question]
    if @user_question == "I am going to work"
      @user_question
      @user_answer = "Great!"
    elsif @user_question&.end_with?("?")
      @user_question
      @user_answer = "Silly question, get dressed and go to work!"
    else
      @user_question
      @user_answer = "I don't care, get dressed and go to work!"
    end
  end
end
