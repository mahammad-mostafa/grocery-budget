class Item < ApplicationRecord
  validates :name, presence: true
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
  validate :group_presence
  belongs_to :user, foreign_key: :author_id
  has_many :groups_items
  has_many :groups, through: :groups_items
  def group_presence
    errors.add(:base, 'Groups must be one or more') if group_ids.empty?
  end
end
