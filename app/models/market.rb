class Market < ApplicationRecord

  belongs_to :event
  has_many   :outcomes,  dependent: :destroy

  accepts_nested_attributes_for :outcomes, allow_destroy: true

end