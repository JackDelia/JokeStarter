json.(@user, :username, :id)

if @user = current_user
  json.money = @user.money_in_cents
end

if(@user)
  json.projects @user.projects, :title, :id, :thumbnail_image_url
end
