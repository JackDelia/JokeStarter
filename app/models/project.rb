class Project < ActiveRecord::Base
  belongs_to :user
  has_many :contributions
  has_many :comments

  validates :user_id, :title, :rewards, :body, :goal, presence: true
end
