class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def employee?
    self.user_type == 'employee'
  end

  def admin?
    self.user_type == 'admin'
  end

  def self.search(search)
    if search
      self.where('email LIKE ? OR user_type LIKE ?', "%#{search}%","%#{search}%")
    else
      self.all
    end
  end
end
