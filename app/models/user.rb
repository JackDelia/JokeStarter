require('bcrypt')

class User < ActiveRecord::Base
  validates :username, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true

  has_many :projects
  has_many :contributions
  has_many :comments
  has_many :follows
  has_many :projects_followed,
    through: :follows,
    source: :project

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    digest = BCrypt::Password.new(self.password_digest)
    digest.is_password?(password)
  end

  def self.find_by_credentials(credentials)
    user = User.find_by_username(credentials[:username]);
    return nil unless user

    return nil unless user.is_password?(credentials[:password])

    user
  end

  def reset_session_token_and_save
    self.session_token = SecureRandom.urlsafe_base64

    self.save
  end
end
