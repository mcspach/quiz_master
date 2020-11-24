class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :type
      t.references :subject_area, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
