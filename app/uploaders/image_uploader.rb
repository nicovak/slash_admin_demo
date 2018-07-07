class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumbnail do
    resize_to_fill(50, 50)
  end

  version :list do
    resize_to_fill(1024, 650)
  end

  version :standard do
    resize_to_fit(1024, 10000)
  end

  version :full do
    resize_to_fit(1920, 10000)
  end
end
