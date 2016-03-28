class CreateTestScripts < ActiveRecord::Migration
  def change
    create_table :test_scripts do |t|
      t.string :name
      t.references :syllabus_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
