require "image_processing/mini_magick"

class ImageProcessingService
  def self.create_thumbnail(image, width:, height:)
    ImageProcessing::MiniMagick
      .source(image)
      .resize_to_fill!(width, height)
  end
end
