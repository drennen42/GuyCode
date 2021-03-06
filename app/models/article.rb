include ActionView::Helpers::TagHelper
class Article < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  has_many :pictures
  belongs_to :category
  belongs_to :user

  def embed(youtube_url)
    video_url = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{video_url}", class: "video")
  end

  def nl2br(s)
    s.gsub(/\n/, '<br>')
  end

end
