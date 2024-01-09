class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true
  belongs_to :user
  has_many :groups_items
  has_many :items, through: :groups_items
end
