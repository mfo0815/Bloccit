class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 15 }, presence: true
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  has_many :sponsored_posts, dependent: :destroy
end
