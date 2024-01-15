class Group < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :icon, presence: true, length: { maximum: 100 }
  belongs_to :user
  has_many :groups_items
  has_many :items, -> { order(id: :desc) }, through: :groups_items
  def total
    items.reduce(0) { |total, element| total + element.amount }
  end
end
