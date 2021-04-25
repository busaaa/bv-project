class Sport < ApplicationRecord

  has_many :events, dependent: :destroy

  default_scope { order(:pos) }

end