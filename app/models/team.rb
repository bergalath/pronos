class Team < ActiveRecord::Base
  has_many :matches

  validates :country, presence: true, uniqueness: true
end
