class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  belongs_to :user
  has_many :comments, :dependent => :destroy
  def editable_by?(user)
    user && (user == self.user)
  end
end
