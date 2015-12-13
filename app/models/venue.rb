class Venue < ActiveRecord::Base
  belongs_to :user

  has_many :concerts, :dependent => :destroy

  has_many :bands, :through => :concerts

  validates :user, :presence => true
  validates :name, :presence => true
  validates :city, :presence => true

  default_scope { order("created_at DESC") }
end
