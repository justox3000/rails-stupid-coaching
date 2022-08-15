class QuestionsController < ApplicationController
  def ask
  end
  def answer
    #  @answer = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @answer = "I don't care, get dressed and go to work!"
    @answer = 'Great!' if params[:question] == 'I am going to work'
    @answer = 'Silly question, get dressed and go to work!' if params[:question].split("").include?("?")
    @question = params[:question]
  end
end
