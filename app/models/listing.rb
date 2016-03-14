class Listing < ActiveRecord::Base

  #If you want to require images in show
  # validates :image, presence: true
  has_one :exchange
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  # Validations
  validates :user_id, presence: true
  validates :description, presence: true, length: {maximum: 140}

  # Image validations
  has_attached_file :image, styles: {:medium => '640x'}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
