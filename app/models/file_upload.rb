class FileUpload < ApplicationRecord
  belongs_to :user

  # Use CarrierWave to upload the file
  mount_uploader :file, FileUploader

  # Optional: Compress file before saving (you can define your own logic here)
  before_save :compress_file

  def compress_file
    # Add file compression logic if needed, such as using MiniMagick
    if file.present? && file.file.content_type.include?('image')
      file.cache_stored_file! if file_changed?
    end
  end
end
