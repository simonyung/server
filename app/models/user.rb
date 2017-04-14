class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :pcomments, :dependent => :destroy
  has_many :vcomments, :dependent => :destroy
  has_many :photos, :dependent => :destroy
  has_many :videos, :dependent => :destroy
end
