user.rb
class User < ActiveRecord::Base
  include BCrypt
  has_many :questions
  has_many :answers
  has_many :votes
  has_many :comments
  #add relationship with votes earned.


  validates :username, :email, { presence: true }
  validates :username, :email, { uniqueness: true }
  validates :email, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/ }
  validate :check_password

  def check_password
    if @raw_password && @raw_password.length < 8
      @errors.add(:password, "needs to be 8 characters or more")
    end
  end

  def authenticate?(password)
      self.password == password
  end

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @raw_password = new_password
    @password = Password.create(@raw_password)
    self.hashed_password = password
  end

end