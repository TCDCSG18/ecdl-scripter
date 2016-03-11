class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :answer_id
      t.string :ans_text
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
