class List < ActiveRecord::Base
  attr_accessible :title, :category, :body, :published, :attachment

  mount_uploader :attachment, AttachmentUploader
  validates :title, presence: true, length: { minimum: 5 }
  validates :category, presence: true
  validates :body, presence: true
  validates :published, presence: true
end
