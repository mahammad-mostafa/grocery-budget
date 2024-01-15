class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable
  validates :name, presence: true, length: { maximum: 50 }
  has_many :items, foreign_key: :author_id
  has_many :groups
end
