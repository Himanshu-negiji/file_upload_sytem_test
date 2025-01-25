class TinyUrl < ApplicationRecord
  belongs_to :file_upload

  extend FriendlyId
  friendly_id :slug, use: :slugged

  validates :slug, presence: true, uniqueness: true

  # Generate a unique slug for the file
  def generate_slug
    self.slug = SecureRandom.hex(6)
  end
end
