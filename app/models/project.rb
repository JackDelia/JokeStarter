class Project < ActiveRecord::Base
  belongs_to :user
  has_many :contributions

  validates :user_id, :title, :rewards, :body, :goal, presence: true
end
