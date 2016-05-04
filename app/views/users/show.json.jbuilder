json.(@user, :username, :id)


json.money @user.money_in_cents

json.follows @user.follows, :project_id, :user_id, :id


if(@user)
  json.projects @user.projects, :title, :id, :thumbnail_image_url
end
