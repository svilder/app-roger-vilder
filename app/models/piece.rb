class Piece < ApplicationRecord
   CATEGORIES = ["Kinetics", "Statics"]
   COLLECTIONS = ["Kinetic", "Sculptur", "Drawing", "Photo", "Animation", "Video"]

  # validates :category, presence: true, inclusion: { in: CATEGORIES }
  # validates :collection, presence: true, inclusion: { in: COLLECTIONS }
  # validates :name, presence: true
  # validates :year, presence: true
  # validates :dimensions, presence: true

  mount_uploader :photo, PhotoUploader
end
