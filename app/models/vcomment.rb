class Vcomment < ApplicationRecord
  belongs_to :user
  belongs_to :video
  validates :vcomment, presence: true
  def editable_by?(user)
    user && (user == self.user)
  end
end
