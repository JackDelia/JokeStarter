json.(@project, :id, :rewards, :title, :body, :user_id, :goal, :thumbnail_image_url, :main_image_url)

funding = 0
@project.contributions.each do |contribution|
  funding += contribution.amount
end

json.funding funding
