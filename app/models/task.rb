class Task < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 42 }
  validates :priority, presence: true
end
