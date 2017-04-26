class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  mount_uploaders :documents, DocumentsUploaders
end
