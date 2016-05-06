json.(@user, :username, :id, :avatar_url)


json.money @user.money_in_cents

json.follows @user.projects_followed, :id, :title, :thumbnail_image_url


if(@user)
  json.projects @user.projects, :title, :id, :thumbnail_image_url
end
