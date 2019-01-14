class Attachment < ApplicationRecord
  belongs_to :bill
  mount_uploader :file, AttachmentUploader
end
