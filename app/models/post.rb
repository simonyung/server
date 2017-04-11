class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  validates :content, presence: true
  belongs_to :user
  has_many :comments, :dependent => :destroy
  def editable_by?(user)
    user && (user == self.user)
  end
  def self.search(search)
    where (["name LIKE ?","%#{search}%"])
  else
    all
  end
end
