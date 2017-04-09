class Pcomment < ApplicationRecord
  belongs_to :photo
  belongs_to :user
  validates :pcomment, presence: true
end
