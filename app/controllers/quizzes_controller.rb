class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :update, :destroy]

  def index
    @quizzes = Quiz.order(created_at: :desc)
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)
    if @quiz.save
      redirect_to new_quiz_path, notice: '追加しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @quiz.update(quiz_params)
      redirect_to quizzes_path, notice: '編集しました'
    else
      render :edit
    end
  end

  def destroy
    if @quiz.destroy
      redirect_to quizzes_path, notice: '削除しました'
    else
      redirect_to quizzes_path, notice: '削除できませんでした'
    end
  end

  def responce
    @quiz = Quiz.order('RAND()').limit(1)
  end

  private

  def quiz_params
    params.require(:quiz).permit(:question, :answer, :remark)
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end
end
