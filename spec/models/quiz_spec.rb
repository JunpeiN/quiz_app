require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe '#create' do
    before do
      @quiz = FactoryBot.build(:quiz)
    end

    it "questionとanswerが存在すれば登録できること" do
      expect(@quiz).to be_valid
    end

    it "questionが空では登録できないこと" do
      @quiz.question = nil
      @quiz.valid?
      expect(@quiz.errors.full_messages).to include("問題を入力してください")
    end

    it "answerが空では登録できないこと" do
      @quiz.answer = nil
      @quiz.valid?
      expect(@quiz.errors.full_messages).to include("答えを入力してください")
    end

  end
end
