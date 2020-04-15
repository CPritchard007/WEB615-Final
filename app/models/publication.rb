class Publication < ApplicationRecord
  extend FriendlyId
  friendly_id :uuid, use: %i[slugged finders]

  has_many :subscriptions, dependent: :destroy
  has_many :articles
  has_many :users, through: :subscription

  validates :name, presence: true
end
