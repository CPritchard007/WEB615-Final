class Subscription < ApplicationRecord
  extend FriendlyId
  friendly_id :uuid, use: %i[slugged finders]

  belongs_to :user
  belongs_to :publication
end
