class Photo < ApplicationRecord
  has_attached_file :image, styles: { large: "600X600>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :user
  def editable_by?(user)
    user && (user == self.user)
  end
end
