class FileUploader < CarrierWave::Uploader::Base
  storage :file  # Store files on the local filesystem

  # Define file extension whitelist (image, pdf, etc.)
  def extension_whitelist
    %w[jpg jpeg gif png pdf mp4 zip]
  end

  # Define file size limit (up to 1GB)
  def size_range
    1..1.gigabyte
  end
end
