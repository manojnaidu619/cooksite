class Recipe < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#", custom: "280x300#"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :name, :description , presence: true
end
