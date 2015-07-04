class Match < ActiveRecord::Base
  belongs_to :competition
  belongs_to :local,   foreign_key: :local_id, class_name: 'Team'
  belongs_to :visitor, foreign_key: :visitor_id, class_name: 'Team'

  validates :competition_id, presence: true

end
