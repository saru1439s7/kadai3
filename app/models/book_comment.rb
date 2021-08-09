class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :comment, presence: true
  
    has_many :notifications, dependent: :destroy
end
