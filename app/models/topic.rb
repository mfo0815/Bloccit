class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 15 }, presence: true
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

  scope :publically_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }
  scope :visible_to, -> (user) { user ? all : publically_viewable }
end
