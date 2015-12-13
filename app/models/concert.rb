class Concert < ActiveRecord::Base
  belongs_to :user
  belongs_to :band
  belongs_to :venue
  default_scope { order("created_at DESC") }
  validates :user, :presence => true
  validates :concertdate, :presence => true
  validates :venue, :presence => true
  validates :band, :presence => true, :uniqueness => { :scope => :concertdate }
end
