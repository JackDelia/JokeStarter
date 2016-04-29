class AddMainImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects,
    :main_image_url,
    :string,
    default: "/assets/logo.png"
  end
end
