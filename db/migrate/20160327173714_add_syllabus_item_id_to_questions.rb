class AddSyllabusItemIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :syllabus_item_id, :integer
  end
end
