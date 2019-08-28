class Bioelement < ApplicationRecord
  SECTIONS = ["Collections publiques et privées", "Prix", "Expositions personnelles", "Expositions Collectives", "Bibliographie"]

  validates :section, presence: true, inclusion: { in: SECTIONS }
  validates :name, presence: true
end
