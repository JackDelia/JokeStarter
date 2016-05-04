class AddTitlesToUpdates < ActiveRecord::Migration
  def change
    add_column :updates,
    :title,
    :string
  end
end
