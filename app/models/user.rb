require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
   validates :user_name, presence: true, uniqueness: true

  has_many :inputs

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

end
