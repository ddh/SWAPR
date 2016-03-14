class User < ActiveRecord::Base

  # User has many listings. Listings are destroyed if this user is destroyed!
  has_many :listings, dependent: :destroy

  # Remembering login sessions
  attr_accessor :remember_token

  # Validations:
  before_save { email.downcase! } # ensuring email uniqueness
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}

  validates :address, presence: true, length: {maximum: 50}
  validates :city, presence: true, length: {maximum: 50}
  validates :state, presence: true, length: {maximum: 50}
  validates :zip, presence: true, length: {maximum: 50}
  validates :phone, presence: true, length:{maximum: 20}


  # Password configurations
  has_secure_password
  # The nil is just for updating; doesn't allow users to CREATE accounts without password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # For remembering passwords and login sessions
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def forget
    update_attribute(:remember_digest, nil)
  end


end
