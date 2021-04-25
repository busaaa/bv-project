class Market < ApplicationRecord

  belongs_to :event
  has_many   :outcomes,  dependent: :destroy

end