class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.json :rewards, null: false
      t.references :user, index: true, foreign_key: true
      t.float :goal, null: false

      t.timestamps null: false
    end
    add_index :projects, :title, :unique => true
  end
end
