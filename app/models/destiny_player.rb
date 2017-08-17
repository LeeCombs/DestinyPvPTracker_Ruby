class DestinyPlayer < ApplicationRecord

  validates :membership_id, presence: true
  validates :membership_type, presence: true
  validates :display_name, presence: true
  validates :icon_path, presence: true
end
