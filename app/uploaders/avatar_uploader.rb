# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this

  version :standard do
    resize_to_fill 200, 200
  end
end
