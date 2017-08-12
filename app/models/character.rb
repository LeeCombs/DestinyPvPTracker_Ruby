class Character < ApplicationRecord
  # has_many :characters, dependent: :destroy
  validates :id, presence: true
  validates :user_id, presence: true
end
