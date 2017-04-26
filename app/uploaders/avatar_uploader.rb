class AvatarUploader < CarrierWave::Uploader::Base

  # Adiciona o MiniMagick para permitir o redimensionamento das imagens
  include CarrierWave::MiniMagick

  storage :file

  # Local onde será guardada as imagens
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


end
