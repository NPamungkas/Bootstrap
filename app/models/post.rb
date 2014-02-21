class Post < ActiveRecord::Base
  attr_accessible :title, :text
  has_many :says, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :text, presence: true
end
