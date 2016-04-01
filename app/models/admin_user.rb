class AdminUser < ActiveRecord::Base
  attr_accessor :gauth_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :google_authenticatable, :database_authenticatable,
    :recoverable, :rememberable, :trackable, :validatable
end
