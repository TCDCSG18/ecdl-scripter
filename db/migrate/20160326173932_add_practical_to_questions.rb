class AddPracticalToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :practical, :boolean
  end
end
