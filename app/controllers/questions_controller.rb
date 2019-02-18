class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.include?('?')
      @answer = 'Thats a silly question, get dressed and go to work'
    elsif @question == "I'm going to work"
      @answer = 'Great!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
