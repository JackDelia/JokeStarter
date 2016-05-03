class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.references :project, index: true, foreign_key: true
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
