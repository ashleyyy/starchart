class User < ActiveRecord::Base

  has_many :tasks, dependent: :destroy
  has_many :stars, dependent: :destroy

  has_secure_password

  validates :password_digest,
    presence: true

  validates :email,
    presence: true

  validates :gravatar,
    presence: true

end