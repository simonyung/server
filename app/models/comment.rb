class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :comment, presence: true
  def editable_by?(user)
    user && (user == self.user)
  end
end
