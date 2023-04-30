class User < ApplicationRecord

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.strip.downcase)
    if user && user.authenticate(password)
      return user 
    else 
      return nil
    end 
  end

  validates :name, presence: true
  validates_uniqueness_of :email, case_sensitive: false, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :password, length: { minimum: 3 }
  
end
