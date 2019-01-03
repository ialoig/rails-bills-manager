class Attachment < ApplicationRecord
  belongs_to :bill
  mount_uploader :attachment, AttachmentUploader
end
