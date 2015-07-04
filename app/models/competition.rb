class Competition < ActiveRecord::Base
  has_many :matches

  validates :name,    presence: true, uniqueness: true, length: { in: 6..60 }
  validates :country, presence: true
  validates :year,    numericality: { only_integer: true }
end
