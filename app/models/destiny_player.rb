class DestinyPlayer < ApplicationRecord

  validates :membership_id, presence: true
  validates :membership_type, presence: true
  validates :display_name, presence: true
  validates :icon_path, presence: true

  attr_accessor :membership_type, :membership_id, :display_name, :icon_path
end
