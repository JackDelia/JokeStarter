class Project < ActiveRecord::Base
  belongs_to :user
  has_many :contributions
  has_many :comments
  has_many :updates
  has_many :follows
  has_many :followers,
    through: :follows,
    source: :user

  validates :user_id, :title, :rewards, :body, :goal, presence: true
end
