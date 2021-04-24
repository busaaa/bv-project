class Event < ApplicationRecord

  belongs_to :sport
  has_many   :markets,  dependent: :destroy
  has_many   :outcomes, through: :markets

  accepts_nested_attributes_for :markets, allow_destroy: true

  default_scope { order(:pos) }
end