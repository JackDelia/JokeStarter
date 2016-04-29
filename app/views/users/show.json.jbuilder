json.(@user, :username, :id)


json.money @user.money_in_cents


if(@user)
  json.projects @user.projects, :title, :id, :thumbnail_image_url
end
