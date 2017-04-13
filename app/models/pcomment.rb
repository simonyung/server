class Pcomment < ApplicationRecord
  belongs_to :photo
  belongs_to :user
  validates :pcomment, presence: true
  def editable_by?(user)
    user && (user == self.user)
  end

end
