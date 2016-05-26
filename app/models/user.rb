class User < ActiveRecord::Base
  has_many :recipes
  has_many :favorites
  has_many :reviews
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :birth_date, presence: true
  validate :validate_email
  mount_uploader :img_upload, ImageUploader

  def validate_email
    if email !~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:email, "is not an email")
    end
  end

end
