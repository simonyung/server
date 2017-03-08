class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  belongs_to :user
  has_many :comments
  def editable_by?(user)
    user && (user == self.user)
  end
end
