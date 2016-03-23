class CreateTaskItems < ActiveRecord::Migration
  def change
    create_table :task_items do |t|
      t.integer :task_item_ref
      t.string :name
      t.string :description
      t.references :skillset, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
