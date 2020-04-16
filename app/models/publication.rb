class Publication < ApplicationRecord
  extend FriendlyId
  friendly_id :uuid, use: %i[slugged finders]

  has_many :articles
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions

  validates :name, presence: true
end
