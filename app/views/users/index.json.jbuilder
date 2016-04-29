json.array!  @users do |user|
  json.(user, :id, :username)
  json.projects user.projects, :title, :id, :thumbnail_image_url
  if(user == current_user)
    json.money user.money_in_cents
  end
end
