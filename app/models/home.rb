class Home < ApplicationRecord

  has_many :posts, :dependent => :destroy
  has_many :photos, :dependent => :destroy
  has_many :videos, :dependent => :destroy
end
