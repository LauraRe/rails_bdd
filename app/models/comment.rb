class Comment < ApplicationRecord
  belongs_to :article
  
  validates :email, presence: true
  validates :comment, presence: true
  validates :article, presence: true
end
