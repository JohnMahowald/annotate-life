# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  session_token   :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  after_initialize :ensure_session_token
  
  validates :email, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :email, uniqueness: true
  
  has_many :journals
  has_many :backgrounds
  
  attr_reader :password
  
  def self.generate_session_token
    SecureRandom.urlsafe_base64
  end
  
  def self.find_by_credentials(user_params)
    user = User.find_by_email(user_params[:email])
    user && user.is_password?(user_params[:password]) ? user : nil
  end
  
  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
  
  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
  
  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save! ; self.session_token
  end
  
  private
  
  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end
end
