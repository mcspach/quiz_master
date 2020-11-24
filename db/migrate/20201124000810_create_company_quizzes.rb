class CreateCompanyQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :company_quizzes do |t|
      t.references :company, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
