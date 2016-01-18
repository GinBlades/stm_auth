class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :lockable, :timeoutable # and :omniauthable
  enum role: {
    guest: 0,
    member: 10,
    manager: 20,
    admin: 30
  }

  has_many :oauth_applications, class_name: "Doorkeeper::Application"
end
