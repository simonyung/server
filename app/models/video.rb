class Video < ApplicationRecord
  has_many :vcomments, :dependent => :destroy
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :video, presence: true
  has_attached_file :video, styles: {
      :medium => {
          :geometry => "640x480",
          :format => 'mp4',
      },
      :thumb => {:geometry => "160x120", :format => 'jpeg', :time => 10}
  }, :processors => [:transcoder]
  validates_attachment_content_type :video, content_type: /\Avideo\/.*\Z/

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