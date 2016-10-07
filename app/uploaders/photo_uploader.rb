# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this

  version :standard do
    resize_to_fill 400, 400
  end
end
