class Video < ApplicationRecord
  belongs_to :user
  has_many :bought_videos, :cart_videos, :video_tags
end
