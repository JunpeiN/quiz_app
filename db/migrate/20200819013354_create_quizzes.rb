class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.text :question
      t.text :answer
      t.text :remark
      t.timestamps
    end
  end
end
