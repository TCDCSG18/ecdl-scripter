class CreateSyllabusItems < ActiveRecord::Migration
  def change
    create_table :syllabus_items do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
