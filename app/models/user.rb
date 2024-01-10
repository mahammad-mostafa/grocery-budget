class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable
  validates :name, presence: true
  has_many :items, foreign_key: :author_id
  has_many :groups
end
