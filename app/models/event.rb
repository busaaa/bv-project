class Event < ApplicationRecord

  belongs_to :sport
  has_many   :markets,  dependent: :destroy

  accepts_nested_attributes_for :markets, allow_destroy: true
end