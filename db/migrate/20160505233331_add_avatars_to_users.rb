class AddAvatarsToUsers < ActiveRecord::Migration
  def change
    add_column :users,
      :avatar_url,
      :string,
      default: "/assets/logo"
    
  end
end
