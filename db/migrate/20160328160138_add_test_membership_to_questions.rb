class AddTestMembershipToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :belongs_to_test_0, :boolean
    add_column :questions, :belongs_to_test_1, :boolean
    add_column :questions, :belongs_to_test_2, :boolean
    add_column :questions, :belongs_to_test_3, :boolean
  end
end
