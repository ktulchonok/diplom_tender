class User < ActiveRecord::Base
  has_many :posts
  has_many :tenders
  has_many :answers

  has_secure_password

  def user?
    self.role == 'user'
  end

  def admin?
    self.role == 'admin'
  end

end
