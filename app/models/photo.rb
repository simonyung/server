class Photo < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  validates :content, presence: true
  validates :image, presence: true
  has_attached_file :image, styles: { large: "600X600>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :user
  has_many :pcomments, :dependent => :destroy
  def editable_by?(user)
    user && (user == self.user)
  end
  def self.search(search)
    if where (["name LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
