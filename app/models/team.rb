class Team < ApplicationRecord
  belongs_to :top
  belongs_to :mid
  belongs_to :jg
  belongs_to :bot
  belongs_to :sup
end
