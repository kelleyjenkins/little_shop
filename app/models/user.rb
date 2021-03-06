class User < ApplicationRecord
  validates_presence_of :username, :password
  validates_uniqueness_of :username
  has_secure_password

  enum role: ["default", "admin"]

  has_many :orders

  def self.most_orders_placed
    user = joins(:orders).group(:user_id).order('count_id DESC').count('id').first.first
    User.find(user).username
  end


end
