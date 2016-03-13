class User < ActiveRecord::Base

  # Validations:
  before_save { email.downcase! } # ensuring email uniqueness
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}


  # Password configurations
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end
