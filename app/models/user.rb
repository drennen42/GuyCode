class User < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  has_many :articles

  validates :password, :last_name, :first_name, :email, presence: true
  validates :email, uniqueness: true
  # has_secure_password


  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def name
    self.first_name + " " + self.last_name
  end
end
