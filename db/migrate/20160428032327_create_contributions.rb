class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.float :amount, null: false
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
