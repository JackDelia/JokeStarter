json.array!  @users do |user|
  json.(user, :id, :username, :avatar_url)
  if(user == current_user)
    json.money user.money_in_cents
  end
end
