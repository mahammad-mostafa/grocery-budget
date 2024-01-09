class Item < ApplicationRecord
  validates :name, presence: true
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
  belongs_to :user, foreign_key: :author_id
  has_many :groups_items
  has_many :groups, through: :groups_items
end
