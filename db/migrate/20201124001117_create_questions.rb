class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.text :content
      t.text :explanation

      t.timestamps
    end
  end
end
