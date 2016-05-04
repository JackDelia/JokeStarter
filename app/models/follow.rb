class Follow < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :user_id, uniqueness: {scope: :project}
  validates :user_id, :project_id, presence: true
end
