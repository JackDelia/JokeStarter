json.(@project, :id, :rewards, :title, :body, :user_id, :goal, :thumbnail_image_url, :main_image_url)

json.age @project.created_at-Time.now()

funding = 0
@project.contributions.each do |contribution|
  funding += contribution.amount
end

json.comments @project.comments, :body, :id, :user_id
json.updates @project.updates, :body, :id, :project_id

json.funding funding
