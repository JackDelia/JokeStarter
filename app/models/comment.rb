class Comment < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  validates :user_id, :project_id, :body, presence: true
end
