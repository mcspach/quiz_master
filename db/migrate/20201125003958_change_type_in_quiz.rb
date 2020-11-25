class ChangeTypeInQuiz < ActiveRecord::Migration[6.0]
  def change
    rename_column :quizzes, :type, :quiz_type
  end
end
