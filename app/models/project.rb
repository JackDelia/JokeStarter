class Project < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :title, :rewards, :body, :goal, presence: true
end
