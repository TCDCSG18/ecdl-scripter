class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :question_id
      t.string :stem
      t.string :correct_ans
      t.references :task_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
