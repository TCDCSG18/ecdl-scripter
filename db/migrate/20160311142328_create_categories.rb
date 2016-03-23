class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_ref
      t.string :name
      t.string :description
      t.references :ecdl_module, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
