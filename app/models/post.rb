class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 100}
  validates :content, presence: true
  belongs_to :user
  has_many :comments, :dependent => :destroy

  def editable_by?(user)
    user && (user == self.user)
  end

  def self.search(search)
    if where (["name LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
