class AddDeadlinesToProjects < ActiveRecord::Migration
  def change
    add_column :projects,
      :deadline,
      :integer,
      default: 259200
  end
end
