class Event < ApplicationRecord

  belongs_to :sport
  has_many   :markets,  dependent: :destroy
  has_many   :outcomes, through: :markets

  default_scope { order(:pos) }
end