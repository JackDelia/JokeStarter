class Update < ActiveRecord::Base
  belongs_to :project
  has_one :user,
    through: :project,
    source: :user


end
