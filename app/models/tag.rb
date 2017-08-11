class Tag < ApplicationRecord
  has_many :video_tags

  validates :name, inclusion: { in: %w(Abstract Fire Flowers City Energy Particles Water Love Science Religion Technology Music Water) }
end
