class Task < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { maximum: 42 }
  # validates :priority, presence: true

  acts_as_list
end
