class Video < ApplicationRecord
  belongs_to :user
  has_many :bought_videos
  has_many :cart_videos
  has_many :video_tags
  mount_uploader :file, VideoUploader
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
