class CreateEcdlModules < ActiveRecord::Migration
  def change
    create_table :ecdl_modules do |t|
      t.integer :module_ref
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
