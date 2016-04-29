class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :project, index: true, foreign_key: true
      t.string :body, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
