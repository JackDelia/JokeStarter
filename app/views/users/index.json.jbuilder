json.array!  @users do |user|
  json.(user, :id, :username)
  json.projects user.projects, :title, :id, :thumbnail_image_url
end
